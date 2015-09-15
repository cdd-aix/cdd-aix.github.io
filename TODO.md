---
layout: page
title: TODO
states: ["in_progress", "added", "done"]
pretty_states: ['', "In Progress", "Added", "Done"]
---

{% for state in page.states %}
## {{page.pretty_states[forloop.index]}}
{% for todo in site.TODO %}
{% if todo.state == state %}
* [{{todo.date | date:"%F"}} {{todo.title}}]({{todo.url}})
{% endif %}
{% endfor %}
{% endfor %}
