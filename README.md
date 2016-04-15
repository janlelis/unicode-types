# Unicode::Types [![[version]](https://badge.fury.io/rb/unicode-types.svg)](http://badge.fury.io/rb/unicode-types)  [![[travis]](https://travis-ci.org/janlelis/unicode-types.png)](https://travis-ci.org/janlelis/unicode-types)

Determine the basic type of codepoints. This can be one of:

- Graphic
- Format
- Control
- Private-use
- Surrogate
- Noncharacter
- Reserved

Unicode version: **8.0.0**

Supported Rubies: **2.3**, **2.2**, **2.1**

## Gemfile

```ruby
gem "unicode-types"
```

## Usage

```ruby
require "unicode/types"

# All general types of a string
Unicode::Types.types("A\tb") # => ["Control", "Graphic"]

# Also aliased as .of 
Unicode::Types.of("\u{FFFFF}") # => ["Noncharacter"]

# Single codepoint
Unicode::Types.type("\u{FFFFD}") # => "Reserved"
```

The list of types is always sorted alphabetically.

See [unicode-x](https://github.com/janlelis/unicode-x) for more Unicode related micro libraries.

## MIT License

- Copyright (C) 2016 Jan Lelis <http://janlelis.com>. Released under the MIT license.
- Unicode data: http://www.unicode.org/copyright.html#Exhibit1

