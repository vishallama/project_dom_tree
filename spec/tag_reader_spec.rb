# spec/tag_reader_spec.rb
require 'tag_reader'

describe TagReader do

  describe '.next_tag_from' do

    context 'Given a string, a position in the string, and a tag regex' do
      let(:div_str) { "<div class='some-class'>" }
      let(:str) { "<div class='some-class'> Some text </div>" }
      let(:regex) { TagReader::TAG_REGEX }

      it 'returns the next <div> tag and its length' do
        div_tag_string = TagReader.next_tag_from(str, 0, regex)
        expect(div_tag_string).to eq([div_str, div_str.length])
      end

      it 'returns the next </div> tag and its length' do
        div_tag_closed_string = TagReader.next_tag_from(str, 1, regex)
        expect(div_tag_closed_string).to eq(["</div>", 6])
      end
    end
  end

end

