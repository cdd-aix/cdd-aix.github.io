---
title: Full Resume
---

{% assign resumes = site.resumes | where_exp: "item", "item.categories contains 'full-resume'" | sort: 'date' | reverse %}
{% for resume in resumes limit: 1 %}
[{{ resume.date | date: date_format }}]({{resume.url}})
{% endfor %}
