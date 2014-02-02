## Cincy 311

View it live at [http://cincy-311.cdmwebs.com](http://cincy-311.cdmwebs.com).

Mapping 311 calls with [Open Data][odc] using [OpenStreetMaps][osm] and
[Open Source Software][oss].

[![Code Climate](https://codeclimate.com/github/cdmwebs/Cincy311.png)](https://codeclimate.com/github/cdmwebs/Cincy311)

### Architecture

#### Frontend

* [Ember.js][ember]
* [ZURB Foundation][foundation]

#### Backend

* [Ruby on Rails][rails]
* [PostgreSQL][pg]

### Local Development

**Requirements**: You'll need a working Ruby installation and Postgresql.

```
git clone https://github.com/cdmwebs/Cincy311.git   # clone the repo
cd Cincy311                                         # cd into the new directory
./script/bootstrap                                  # set up the application
./script/data                                       # get some data
bundle exec rails server                            # start the server
open http://localhost:3000                          # see it!
```

### Contribute

1. Fork the [repo].
1. Make your changes in a topic branch.
1. Send a [pull request][pr].

### License

Copyright (c) 2014 Chris Moore

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

[odc]: http://www.opendatacincy.org/
[osm]: http://www.openstreetmap.org/
[oss]: http://en.wikipedia.org/wiki/Open-source_software
[pr]: https://help.github.com/articles/using-pull-requests
[repo]: https://github.com/cdmwebs/Cincy311
[foundation]: http://foundation.zurb.com/
[ember]: http://emberjs.com/
[rails]: http://rubyonrails.org/
[pg]: http://www.postgresql.org/


