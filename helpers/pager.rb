def get_taxonomies(slug = 'category')
  list = []
  blog.articles.select{ |i| i.data[slug].present? }.each do |article|
    list = list.push article.data[slug]
  end

  return list.inject(Hash.new(0)){|hash, a| hash[a] += 1; hash}
end

def current_index
  blog.articles.index current_article
end

def prev_page
  return unless current_index
  blog.articles[current_index + 1]
end

def next_page
  return if !current_index or current_index <= 0
  blog.articles[current_index - 1]
end

def get_date(article = nil)
  date = article ? article.date : data.page.date

  return (
    case date
    when String
      DateTime.parse date
    else
      date
    end
  )
end
