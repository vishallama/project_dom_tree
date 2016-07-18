# spec/text_node_spec.rb
require 'text_node'
require 'tag_node'

describe TextNode do

  describe '#initialize' do
    let(:p_tag) { TagNode.new(:p) }
    let(:text_node) { TextNode.new("hello", p_tag) }

    it 'sets the contents to text correctly' do
      expect(TextNode.new("hello").text).to eq("hello")
    end

    it 'sets the parent correctly' do
      expect(text_node.parent).to eq(p_tag)
    end
  end
end

