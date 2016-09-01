debug_html
==========
[![Build Status](https://travis-ci.org/melvinsh/debug_html.svg?branch=master)](https://travis-ci.org/melvinsh/debug_html) [![Gem Version](https://badge.fury.io/rb/debug_html.svg)](https://badge.fury.io/rb/debug_html)

`debug_html` can be used to save HTML to a temporary file and open it in a web browser for inspection. It's like `save_and_open_page` [in capybara](http://www.rubydoc.info/github/jnicklas/capybara/Capybara%2FSession%3Asave_and_open_page).

![example GIF](https://cloud.githubusercontent.com/assets/1312973/18166690/dcddffb4-704c-11e6-85a0-cd7c6258dc00.gif)

## Usage
Put this somewhere in your code to open the default web browser to render the HTML code.
``` ruby
require 'debug_html'
DebugHTML.save_and_open(html)
```

You could also do something else instead of opening a web browser.
``` ruby
require 'debug_html'
path = DebugHTML.save(html)
```
