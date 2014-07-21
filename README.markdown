# Middleman Ethos

A  prototyping framework for Middleman in early development. Currently using Bootstrap 3 and jQuery, but this might change.

## Project Configuration

Project information is found in /data/config.yml

## Page Configuration

Each page takes advantage of some basic frontmatter that's built into Middleman. Pages support the following frontmatter:

```
---
title:
nav:
subnav:
description:
---
```

* `title`: is prepended into the page title
* `nav`: used to determine the current page's primary navigation state
* `subnav`: used to determine the current page's secondary navigation state
* `description`: used to create a description meta tag for that page