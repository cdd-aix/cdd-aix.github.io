---
title: "WET DRY WAT?"
date: 2018-04-24
---
Write Explicit Tests they said.  Don't Repeat Yourself they said.

Read the official source should be first.
I floundered last year writing tests for Django's [REMOTE_USER Auth](https://docs.djangoproject.com/en/2.0/howto/auth-remote-user/) and a custom UserModel that scraped from LDAP.  I hope to correct this mistake because our new Kerberized Web Single Sign On with non-Kerberos fallback uses one header for Kerberos and another header for fallback...
