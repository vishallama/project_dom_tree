# spec/file_reader_spec.rb
require 'file_reader'

describe FileReader do

   describe '.read_file' do
     let(:file_name) { "small_test_file.html" }
     let(:str) { "<html>\n</html>\n" }

     it 'reads the contents of the small html test file' do
       expect(FileReader.read_file(file_name)).to eq(str)
     end
   end
end

