redcloud
    by Roger Jungemann
    http://thefifthcircuit.com

== DESCRIPTION:

redcloud is a very simple web service that allows users to write their own web services in JavaScript. This is similar to Scriptlets.

Uses Johnson to evaluate JavaScript.

== FEATURES/PROBLEMS:

* JavaScripts currently cannot write back to sessions.
* Only GET and POST requests are currently supported.

== SYNOPSIS:

  To run, simply type "turnstile 4000" where "4000" is your port of choice. Then visit "http://localhost:4000" in your browser and follow the instructions.

== REQUIREMENTS:

* sinatra
* johnson
* moneta
* uuid
* thin

== INSTALL:

* sudo gem sources -a http://gems.github.com
* sudo gem install thefifthcircuit-redcloud

== LICENSE:

(The MIT License)

Copyright (c) 2009 thefifthcircuit.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
