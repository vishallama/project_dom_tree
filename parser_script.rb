# parser_script.rb
require_relative 'test.rb'

class HTMLParser

  attr_accessor :root, :html_string

  def initialize(html_string)
    @root = Tag.new
    @html_string = html_string
  end

  def find_tag

  end


end

