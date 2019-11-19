def nl2br(str)
  str.gsub(/\r\n|\r|\n/, "<br />")
end

def strip_tags(text)
  doc = Nokogiri::HTML::DocumentFragment.parse text
  doc.inner_text
end
