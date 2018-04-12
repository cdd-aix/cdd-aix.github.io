---
layout: post
title: "Emacs Cleanup Time"
date: 2018-04-12 18:44
---

Updated [init.el](https://github.com/cdd-aix/emacs/blob/master/init.el)

It began preparing to add magit-gitflow.  It went sideways upon finding use-package has a nice :hook keyword.  :hook led to cleaning the whole thing up.

Of note.

* All add-hooks moved into :hooks except the emacs server one.
* move-text added
* Package grouping improved
* Mode regexps improved
* Smart Meta X (smex) enabled
* Added melpa-stable to fix groovy-mode regression
* Switched to color-theme-modern
* Do the right thing with missing cf-own-custom.el
* Use :bind and :bind-keymap on importmagic
* Load snippets library
* emmet-mode added
* writegood-mode and artbollocks-mode added to improve prose
