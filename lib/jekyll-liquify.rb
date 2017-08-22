require 'pry'
require 'rb-readline'

module LiquidFilter
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

Liquid::Template.register_filter(LiquidFilter)
