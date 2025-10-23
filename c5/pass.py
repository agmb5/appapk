from base64 import b64decode
from Crypto.Cipher import AES

key = b"J@NcRfUjXn2r5u8x"
iv  = key
ct  = b64decode("CMEVTF/B+oFCNoiZ8mgrL1V951OD43LK0FN9MHnfiUk61bhpZ3Di8XtmP6Ghfv3v")
pt  = AES.new(key, AES.MODE_CBC, iv).decrypt(ct)
print(pt)
