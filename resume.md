---
layout: page
title: Resume - Recruiters Please Read
permalink: /current-resume/
---

{% assign disclaimers = site.pages | where: "type", "disclaimer" %}
{% for disclaimer in disclaimers limit: 1 %}
{{ disclaimer.content }}
{% endfor %}
{% assign date_format = site.date_format | default: '%Y %b %d' %}
{% assign resumes = site.resumes | sort: 'date' | reverse %}
{% for resume in resumes limit: 1 %}
Resume last updated:  [{{ resume.date | date: date_format }}]({{resume.url}})

{{resume.content}}
{% endfor %}
