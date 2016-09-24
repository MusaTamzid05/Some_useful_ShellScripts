#!/bin/bash

if(( $# >= 1 ))
	then
	total_char=$1
else
	total_char=32
fi

echo "generating password of charecter $total_char"

date +%s | sha256sum | base64 | head -c $total_char ; echo