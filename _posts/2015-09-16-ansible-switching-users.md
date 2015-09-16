---
title: "Ansible, Switching Users"
---
Treat hosts like cattle, not pets is the mantra.
Ansible allows my hosts to be treated like cattle.
But there are nuances with the invocation.

### First "big" ansible use, Sun Ray user stats.
Oracle's Sun Ray is in my environment.
Unfortunately, their tools to determine the user associated with session require root.
In a sane world:
* Login as me
* Sudo to root
* Pull results

In my world:
* No go on sanity.
* Shared root word.

In this case ansible sshing directly to root was least painful.

Yes, ansible became a less frustrating dsh.

### No Machine NX Crash Reports
NoMachine wants a lot with a bug report.
* Logs from the user's home directory
* NX logs
* Session history
* The database that drove the session history
* The corefile
* The backtrace of the corefile
* And most of the above has to be done as root or the impacted user...

Audits encourage coming in as root and doing a sudo on specific commands.
Use ansible's script to deliver a script that
1. Tar the user log files for each user that had been on the system as those users.
1. Pull the back trace
1. Tar up the first tarfile and the back traces and the rest of the logs
1. Retrieve that tarball
1. Clean up the host

It became fun with splunk searches for specific problem signatures.
A transform of the splunk host list to impacted users.
A transform of impacted users to all hosts belonging to impacted users.

The most valuable tidbit learned:
* Have a 'fact' task that expands timestamp and host details into output files
* Pass the calculated output file to the script task
* Pass it to the fetch task

