#!/bin/bash

while read line; do
	echo "$line"
	openssl enc $line -d -in encrypted.bin -pass file:./private_key.pem -out DECRYPTED$line.bin
done < options.txt
