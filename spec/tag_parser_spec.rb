# spec/tag_parser_spec.rb
require 'tag_parser'

describe TagParser do

  describe '.create_tag_from' do

    context 'When a <p class="name"> tag string is passed as argument' do
      let(:tag_string) { "<p class='name'>" }
      let(:p_tag_node) { TagNode.new(:p, {class: "name"}) }

      it 'returns the corresponding TagNode object' do
        expect(TagParser.create_tag_from(tag_string)).to eq(p_tag_node)
      end
    end

    context 'When a closing </p> tag string is passed as argument' do
      let(:closed_tag_string) { "</p>" }
      let(:p_tag_node) { TagNode.new(:"/p", {}) }

      it 'returns the corresponding TagNode object' do
        expect(TagParser.create_tag_from(closed_tag_string)).to eq(p_tag_node)
      end
    end
  end
end

