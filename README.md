# debug_html
`debug_html` can be used to save and open HTML to a file for inspection. It's like `save_and_open_page` in Capybara.

## Usage
Put this somewhere in your code.
``` ruby
require 'debug_html'
DebugHTML.save_and_open(html) # open the default web browser to render the HTML code.
```

Or you could do this.
``` ruby
path DebugHTML.save(html) # returns the path to an HTML file with the saved code.
# do whatever you want with the path
```
