# Jekyll debug

*A Jekyll filter that enables runtime debugging.*

[![Gem Version](https://img.shields.io/gem/v/jekyll-debug.svg)](https://rubygems.org/gems/jekyll-debug)
[![Build Status](https://img.shields.io/travis/gemfarmer/jekyll-debug/master.svg)](https://travis-ci.org/gemfarmer/jekyll-debug)
[![Dependency Status](https://img.shields.io/gemnasium/gemfarmer/jekyll-debug.svg)](https://gemnasium.com/gemfarmer/jekyll-debug)

## Usage

1. Add `gem 'jekyll-debug'` to your site's Gemfile and run `bundle`
2. Add the following to your site's `_config.yml`:

```yml
plugins:
  - jekyll-debug
```

To use in your project, add liquid tags to front matter and use the `debug` filter to catch variables at run time. `jekyll-debug` extends the [`pry`](https://github.com/pry/pry) debugger, so when the debugging console shows appears, all `pry` commands are valid commands.

**example.md**

```
---
title: My first page
---

# Welcome to {{ test | debug }}!

>> ---------------------
My first page is a String
---------------------

From: /Users/brianhedberg/Projects/jekyll-debug/lib/jekyll-liquify.rb @ line 12 LiquidFilter#debug:
     5: def debug(*args)
     6:   if args.any?
     7:     args.map do |arg|
     8:       type = arg.class
     9:       puts '---------------------'
    10:       puts "#{arg} is a #{type}"
    11:       puts '---------------------'
 => 12:       binding.pry
    13:     end
    14:   else
    15:     args
    16:   end
    17: end

[1] pry(#<#<Class:0x007f8a1ccbe7a8>>)>
```

## Contributing

1. Fork the project
2. Create a descriptively named feature branch
3. Add your feature
4. Submit a pull request
