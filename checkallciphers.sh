#!/bin/bash

while read line; do
	echo "$line"
	openssl enc $line -d -in saltedthing.ssl -pass file:./private_key.pem -out DECRYPTED$line.bin
done < options.txt
