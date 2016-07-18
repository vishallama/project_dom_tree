# lib/tag_node.rb


TagNode = Struct.new(:type, :attributes, :children, :parent) do

  def open?
    !closed?
  end

  def closed?
    type.to_s.include? "/"
  end

end

