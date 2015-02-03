# InverseAttr

Provides a macro which adds methods to return the inverse of another.

## Installation

```ruby
gem 'inverse_attr'
```

## Usage

```ruby
class Lesson
  include InverseAttr

  def published?
    false
  end

  attr_inverse :published?
end

lesson = Lesson.new

lesson.not_published? # => true
```

You can specify the name of the inverted attribute by passing a second argument:

```ruby
attr_inverse :published?, :draft?
```

Don't want to put the include at the top of your classes?

```ruby
Object.class_eval { include InverseAttr }
```

or more selectively:

```ruby
ActiveRecord::Base.class_eval { include InverseAttr }
```

## License

Copyright (c) 2013 Kris Leech

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
