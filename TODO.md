---
layout: page
title: TODO
permalink: /TODO/
states: ["in_progress", "added", "done"]
pretty_states: ['', "In Progress", "Added", "Done"]
---

{% assign todos = site.TODO | sort:'date','last' | reverse %}
{% for state in page.states %}
## {{page.pretty_states[forloop.index]}}
{% for todo in todos %}
{% if todo.state == state %}
* [{{todo.date | date:"%Y %b %d: "}} {{todo.title}}]({{todo.url}})
{% endif %}
{% endfor %}
{% endfor %}
