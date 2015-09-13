---
title: "Learning Hadoop the Hard Way"
tags: skills
---
Hadoop finally struck my fancy when I figured out that bosun
relied on opentsdb which relied on hbase which relied on zookeeper and
hadoop.
The head around fail has been with setting up multinode hadoop.
So far [Operate Hadoop](http://hortonworks.com/get-started/operate/)
has been helpful.
Normally, I would fire up vagrant for the individual nodes for the tutorial.
But, the main PC at home is too memory constrained to run vagrant, and the
work laptop has a bit too much on its SSD.
To make it that much harder, I'm using docker-compose to spin up the nodes.
This makes it a bigger PITA.
But it also provides the dockerfile as a way to track the steps.

