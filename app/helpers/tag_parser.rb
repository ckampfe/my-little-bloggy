helpers do
  def make_tags(tags)
    tags.gsub(' ', '').split(',')
  end

  def tagstring(tag_array)
    tag_array.map { |t| t.name }.join(', ')
  end
end
