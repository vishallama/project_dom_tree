# lib/tag_parser.rb
require 'tag_node'

class TagParser

  def self.create_tag_from(tag_string)
    bare_data = strip_tag_symbols(tag_string)
    data = bare_data.split(" ")
    type = to_sym(data.first)

    TagNode.new(type, attributes(data[1..-1]))
  end

  private

  def self.strip_tag_symbols(tag_string)
    tag_string[1...-1]
  end

  def self.to_sym(tag_string)
    tag_string.to_sym
  end

  def self.attributes(attributes_arr)
    attributes = {}

    attributes_arr.each do |attribute_pair|
      key, value = attribute_pair.split("=").map { |x| x.strip }
      value = value[1...-1]
      attributes[key.to_sym] = value
    end
    attributes
  end

end

