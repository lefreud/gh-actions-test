#!/bin/sh

# The file names of the decrypted files, the encrypted file name contains the .gpg extension
FILE_NAMES=('secret1.json', 'secret2.txt')

for file_name in "${FILE_NAMES[@]}"
do
  gpg --quiet --batch --yes --decrypt --passphrase="$ENCRYPTION_PASSPHRASE" \
    --output "./$file_name" "$file_name.gpg"
done
