---
layout: post
title: "Scrapy Backburnered."
categories: education scrapy zypper
---

Two projects for learning scrapy are now on the back burner

* Tool to mirror opensuse repos for SLE_11
* Tool to aggregate comic strips

Zypper + createrepo are effective at mirroring repos.
* The download only option saves packages in a predictable place
* The reposd dir option allows mirroring a set of repos without disrupting the repos used on the host doing the mirroring
* The cache dir and packages dir options allow keeping solves and raw from taining the mirror host
* Each repo's packagedir is ready for 'createrepo'

Lessons learned:
* Limiting downloads to a single repo prevented download of packages with dependencies outside of the mirroring host's OS.
 * Include all dependency repos including OS distribution repos
* Zypper pulls latest and preferred architecture by default
 * Specify architecture in pull
 * Specify version in pull
 * packagesrc pulls break with architecture of noarch, have blank
* Handling architectures other than x86_64 and i386 will require additional pull hosts and coordination for noarch
* Depending on zypper to track downloaded packages is slower than adding the mirrored repos and checking for packages there.
* devel:languages:python is HUGE
 * Use lots of threads with createrepo
 * Allow it to use previous results
 * Periodicaly update the mirror repo while downloading

Still to do:
* Expiring packages removed from mirrored repo
* Syncing with the filesystem served by the install http servers
* Expiring metadata from squid caches
 * NoMachine Enterprise packages have the corner case of installable and upgradable packages.

The commics project fell to the side as the comics sites are overly fiddly.
When revisiting:
* Have a scraper per comic provider platform
* Expect gocomics and arcamax to change presentation regularly and need new scrapers
* Have a probe to indentify platform and version
