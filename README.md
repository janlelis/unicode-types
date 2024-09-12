# Unicode::Types [![[version]](https://badge.fury.io/rb/unicode-types.svg)](https://badge.fury.io/rb/unicode-types)  [![[ci]](https://github.com/janlelis/unicode-types/workflows/Test/badge.svg)](https://github.com/janlelis/unicode-types/actions?query=workflow%3ATest)

Determine the basic type of codepoints. This can be one of:

- Graphic
- Format
- Control
- Private-use
- Surrogate
- Noncharacter
- Reserved

Unicode version: **16.0.0** (September 2024)

Supported Rubies: **3.3**, **3.2**, **3.1**, **3.0**

Old Rubies that might still work: **2.7**, **2.6**, **2.5**, **2.4**, **2.3**, **2.X**

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

- Copyright (C) 2016-2024 Jan Lelis <https://janlelis.com>. Released under the MIT license.
- Unicode data: http://www.unicode.org/copyright.html#Exhibit1
