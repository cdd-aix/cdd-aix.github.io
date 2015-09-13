---
title: "Registrator:  All That Is Old in Service Discovery is New Again!"
tags: skills 
---
I hit a painful hard stop with Ambari under Docker.
Ambari depends on quality name services on the server and client to work.
The 'link' directive in docker-compose seemed useful, but it does not support loops.
MDNS was a bust after trying to start a second avahi-daemon on a second container.
Consul looked interesting, but plans to manage service announcements looked potentially complicated.
Then [Registrator](http://progrium.com/blog/2014/09/10/automatic-docker-service-announcement-with-registrator/) appeared.  It looks downright fascinating on how it provides data to Consul.  The piece remaining is a sane translator for DNS to registrator.
And voila... I have hesiod all over again.
