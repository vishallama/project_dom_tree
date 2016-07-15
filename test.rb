
Tag = Struct.new(:type, :classes, :id, :name, :parent, :children)

def parse_tag(string)
  tag = Tag.new
  num_of_attributes = string.count "="
  regex = /<(\w+).*?((\w*\s*)=\s*['|"](.*?)['|"].*)>/
  our_match = string.match(regex)
  tag.type = our_match.captures[0]
  num_of_attributes.times do |attribute|
    case our_match.captures[2]
    when "class" then tag.classes = our_match.captures[3].split(" ")
    when "id" then tag.id = our_match.captures[3].split(" ")
    when "name" then tag.name = our_match.captures[3].split(" ")
    end
    string.sub!("=","")
    our_match = string.match(regex)
  end
  tag
end

string = "<p class='foo bar' id='baz' name='fozzie'>"
t = parse_tag(string)

