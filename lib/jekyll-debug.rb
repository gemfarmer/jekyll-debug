require 'pry'
require 'rb-readline'

module Jekyll
  module DebugFilter
    def debug(*args)
      if args.any?
        args.map do |arg|
          type = arg.class
          puts '---------------------'
          puts "#{arg} is a #{type}"
          puts '---------------------'
          binding.pry
        end
      else
        args
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::DebugFilter)
