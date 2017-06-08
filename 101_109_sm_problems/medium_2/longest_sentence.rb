# Medium 2 Exercise 1 - Longest Sentence

# input
# - a text file (require 'yaml?')

require 'yaml'

TEXT = YAML.load_file('frankenstein.yaml')

sentences = TEXT.split(/\?|\.|!/)

longest = sentences.first

sentences.each do |sentence|
  if longest.split(' ').size <= sentence.split(' ').size
    longest = sentence
  else
    next
  end
end

puts "The longest sentence is: #{longest}. It has #{longest.split(' ').size} words."

# Launch school solution

text = File.read('gettysburg.yaml')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"