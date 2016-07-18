# lib/tag_reader.rb

class TagReader

  TAG_REGEX = /<\/?\w+.*?>/

  def self.next_tag_from(html_string, position, regex)
    match = regex.match(html_string[position..-1])
    if match.nil?
      [nil, nil]
    else
      tag_string = match[0]
      [tag_string, tag_string.length]
    end

  end

end

