# Middleman Ethos

A  prototyping framework for Middleman in early development. Currently using Bootstrap 3 and jQuery, but this might change.

## Project Configuration

Project information is found in /data/config.yml. The YAML file supports multi-environment configuration by adding the values within keys for "development" and "build". A custom site helper is available called `project_setting` which takes the YAML key value as either a string or a symbol: `project_setting(:title)` or `project_setting("title")`.

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

## Pesticide Support

[Pesticide](http://pesticide.io/) has been built into the CSS. To turn on Pesticide debugging edit `/utilities/_global.css` and change `$pesticide-debug` to true.

## SassDoc Support
Generate documentation with SassDoc using `sassdoc source/assets/stylesheets/ docs/ -c package.json`. Precompiled documentation can be found within the `docs` folder.