---
layout: post
title: "Literate Config Files with Markdown"
categories: config,data-sync
---
Premise:

* '#' denoted Markdown headers are simple to parse
* '|' delimited Markdown tables are also simple to parse

Idea:

Use an H1 header to delimit a section of the documentation for config.
Use H2 headers within that section to provide keys to a dictionary.
Setup the tables with the left most column as the primary key.
Create a parser that converts the table into a structure similar to
```
primary_key:
  field1: value
  field2: value
...
```

Eureka, documentation always matches configuration.

A perl proof of concept was created today.  A more robust implementation will be posted to this blog after Ambari is beaten into submission on Docker.
