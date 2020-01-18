# Unicode::Types [![[version]](https://badge.fury.io/rb/unicode-types.svg)](https://badge.fury.io/rb/unicode-types)  [![[travis]](https://travis-ci.org/janlelis/unicode-types.svg)](https://travis-ci.org/janlelis/unicode-types)

Determine the basic type of codepoints. This can be one of:

- Graphic
- Format
- Control
- Private-use
- Surrogate
- Noncharacter
- Reserved

Unicode version: **12.1.0** (May 2019)

Supported Rubies: **2.6**, **2.5**, **2.4**

Old Rubies that might still work: **2.3**, **2.2**, **2.1**, **2.0**

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

- Copyright (C) 2016-2020 Jan Lelis <https://janlelis.com>. Released under the MIT license.
- Unicode data: http://www.unicode.org/copyright.html#Exhibit1
