---
title: "I Have to Go Through How Many Jump Hosts?"
tags: skills code 
---
The challenges of DMZ security theatre have reared their heads at work.  It remains theatre until auditd is enabled and configured on the jump hosts.

To reduce the headache [Recursively Chaining Gateways](https://en.wikibooks.org/wiki/OpenSSH/Cookbook/Proxies_and_Jump_Hosts#Recursively_chaining_gateways) was followed.  The sed in the final example gives me a headache, so I translated it into something readable. [Here](https://github.com/cdd-aix/Blog/2015/09/perl-ssh-proxy/) is the result.

