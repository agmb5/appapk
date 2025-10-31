#!/usr/bin/env python3
# targeted_fix.py
from itertools import permutations
import re
import string

orig = "_SXIUQ_5618CVL_OXL}LCTC{HCB"

# helper: apply Caesar shift only to A-Z letters in a string
def caesar_letters_only(s, shift):
    out=[]
    for ch in s:
        if 'A' <= ch <= 'Z':
            out.append(chr((ord(ch)-ord('A') + shift) %26 + ord('A')))
        elif 'a' <= ch <= 'z':
            out.append(chr((ord(ch)-ord('a') + shift) %26 + ord('a')))
        else:
            out.append(ch)
    return ''.join(out)

# helper: reverse letter-only sequences inside the string
def reverse_letter_chunks(s):
    # reverse segments that are letters (A-Z or a-z)
    return re.sub(r'[A-Za-z]+', lambda m: m.group(0)[::-1], s)

# utility: pretty-print candidates (unique)
seen=set()
def consider(name, s):
    if s in seen: return
    seen.add(s)
    print(f"{name:30}  {s}")

print("Original:")
print(orig)
print("\n--- Try swapping braces positions if present ---")
# swap occurrences of ...}...{  -> ...{...}
if '}{' in orig:
    swapped = orig.replace('}{', '{}')  # naive (put a placeholder)
    # better: find the positions of '}' and '{' and swap them
    idx_close = orig.find('}')
    idx_open = orig.find('{')
    if idx_close != -1 and idx_open != -1 and idx_close < idx_open:
        s_list = list(orig)
        s_list[idx_open], s_list[idx_close] = s_list[idx_close], s_list[idx_open]
        consider("swap_braces_positions", ''.join(s_list))

# Try reversing the whole string and per-chunk
consider("reversed", orig[::-1])
consider("reverse_letters_in_chunks", reverse_letter_chunks(orig))

print("\n--- Split by underscores and try permutations/rotations ---")
parts = orig.split('_')
# show permutations up to certain limit
for perm in permutations(parts):
    joined = "_".join(perm)
    consider(f"perm_{perm}", joined)
    # also try reversing each chunk
    rev_chunks = "_".join(p[::-1] for p in perm)
    consider(f"perm_revchunks_{perm}", rev_chunks)
    # stop if too many
    if len(seen) > 200: break

print("\n--- Try Caesar shifts applied separately to letter-only chunks ---")
# find letter-only chunks (sequence of letters)
letter_chunks = re.findall(r'[A-Za-z]+', orig)
# produce strings where each letter chunk is shifted with an independent value (try small space)
# We'll try the same shift for all letter-chunks first (cheap)
for sh in range(26):
    s = orig
    s = caesar_letters_only(s, sh)
    consider(f"caesar_all_{sh}", s)

# also try shifting only the letter chunks but allow different shifts for three main chunks (if not too many)
chunks = re.split(r'([_{}])', orig)  # keep delimiters
letter_indices = [i for i,ch in enumerate(chunks) if re.fullmatch(r'[A-Za-z]+', ch)]
# try limited combinations: 0..6 shifts for each (to constrain)
shifts = range(0,26,3)  # try step 3 to keep it quick; rerun with step 1 if useful
from itertools import product
for combo in product(shifts, repeat=min(3,len(letter_indices))):
    tmp = list(chunks)
    for idx,sh in zip(letter_indices[:len(combo)], combo):
        tmp[idx] = caesar_letters_only(tmp[idx], sh)
    consider(f"per_chunk_shifts_{combo}", "".join(tmp))
    if len(seen) > 500: break

print("\n--- Try Atbash on letters ---")
def atbash_letters_only(s):
    out=[]
    for c in s:
        if 'A'<=c<='Z':
            out.append(chr(ord('Z') - (ord(c)-ord('A'))))
        elif 'a'<=c<='z':
            out.append(chr(ord('z') - (ord(c)-ord('a'))))
        else:
            out.append(c)
    return ''.join(out)

consider("atbash_all", atbash_letters_only(orig))
consider("atbash_then_reverse", atbash_letters_only(orig)[::-1])

print("\n--- Look for likely flag patterns in candidates (COMP or braces) ---")
cands = list(seen)
for c in cands:
    if "5618" in c and ( "COMP" in c or "{" in c or "}" in c or re.search(r'[A-Z]{3,}', c)):
        print("LIKELY:", c)
