#!/bin/bash
let c=0;
while read f date title; do
	cat > _TODO/$date-$c.md <<-EEOOTT
	---
	state: added
	date: $date
	title: "$title"
	---
	EEOOTT
	let c++
done
