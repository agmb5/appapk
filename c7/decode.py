import base64
from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad

encrypted_b64 = "eTumR/36bPhrEKOiKfA3IVwEEWVRAJBUp/+y5JeUmCKl/iu0MzTBAD63o7oQgpWfuV0Jxg/Yc2wLuuqvu87pFv7tvq33J67O5oR8ZH+NT5B9Z7L+YMMsteFlF7KOe2ooLav7uknGpMYTNVugelxwDDHjSaryPn5ZrVnyWb4Dda1nr3wPdKYd77M714pgBzZiqhh4uEzzWIuufb3csFAADI8UE6H+7WDPmN3mYYEUK17oNDSQX/JHNxg/2VURySNYjnRk1dHEZ5F0oS6VsFBI1uGHTJ0YTn5bypP5oXpq8U+Gp/2hVmF09c9j01Rv16mFf616U8gaGrz7fdMjtmgsPA=="

encrypted = base64.b64decode(encrypted_b64)

# Try with "null" as key
key = b"null" + b"\0" * 12  # Pad to 16 bytes
cipher = AES.new(key, AES.MODE_ECB)
decrypted = cipher.decrypt(encrypted)
print(unpad(decrypted, 16).decode())