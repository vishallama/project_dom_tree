# lib/file_reader.rb

class FileReader

  def self.read_file(file_name)
    File.open(file_name).read
  end
end

