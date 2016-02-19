# randomly generate a color symbol
require 'rubygems'
require 'bundler/setup'

require 'colorize'

def random_color(whitelisted_colors = nil)
  rand_num = rand(5) + 1
  if whitelisted_colors.nil?
    return String.colors.sample
  else
    return whitelisted_colors.sample
  end
end

# 5.times { puts random_color }

# randomly colorize a string
def randomly_colorize(string, colors = nil)
  "#{string}".colorize(random_color(colors))
end

5.times { puts randomly_colorize("Dan") }

puts "===="
5.times { puts randomly_colorize("Dan", [:red, :green]) }

# puts "What is your name? I'ma gonna colorize it."
# supplied_name = gets.chomp
#
# return_value = randomly_colorize(supplied_name, [:red, :green])
#
# puts "Your randomly colorized name is: " + return_value

# randomly colorize each character in a string
