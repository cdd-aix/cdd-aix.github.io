---
layout: page
title: Resume - Recruiters Please Read
permalink: /resumes/
---
{% assign date_format = site.date_format | default: '%Y %b %d' %}
{% for resume in site.resumes %}
#### [{{ resume.date | date: date_format}} {{resume.title}}]({{resume.url}})
{% endfor %}
