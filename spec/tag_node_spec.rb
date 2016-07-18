# spec/tag_node_spec.rb
require 'tag_node'

describe TagNode do

  describe '#initialize' do

    context 'When a <p> tag is created' do
      let(:p_tag) { TagNode.new(:p, {}, nil, nil) }

      it 'sets the correct tag type' do
        expect(p_tag.type).to eq(:p)
      end

      it 'sets the correct attributes' do
        expect(p_tag.attributes).to eq({})
      end

      it 'sets the correct children' do
        expect(p_tag.children).to eq(nil)
      end

      it 'sets the correct parent' do
        expect(p_tag.parent).to eq(nil)
      end
    end

    context 'When a <div> tag with a <p> child tag is created' do
      let(:p_tag) { TagNode.new(:p) }
      let(:div_tag) { TagNode.new(:div) } 

      it 'sets p as one of the children of div' do
        div_tag.children = [] << p_tag
        expect(div_tag.children).to include p_tag
      end

      it 'sets the parent of p to div' do
        p_tag.parent = div_tag
        expect(p_tag.parent).to eq(div_tag)
      end
    end

  end

end

