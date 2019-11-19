def meta_title
  if current_article then
    title = current_article.title + ' - ' + data.blog.title
  elsif blog.articles[0]
    title = blog.articles[0].title
  else
    title = data.blog.title
  end

  return title
end

def meta_description
  if current_article then
    description = strip_tags(current_article.body).gsub(/\r\n|\r|\n/, "").split(//)[0...75].join + "…"
  elsif blog.articles[0]
    description = strip_tags(blog.articles[0].body).gsub(/\r\n|\r|\n/, "").split(//)[0...75].join + "…"
  else
    description = data.blog.description
  end

  return description
end

def og_image
  if current_article then
    unless current_article.data.og_image == nil then
      return current_article.data.og_image
    end
  elsif blog.articles[0]
    unless blog.articles[0].data.og_image == nil then
      return blog.articles[0].data.og_image
    end
  end

  return "http://cabbagekobe.info/src/img/ogp.png"
end

def og_url
  if current_article then
    blog_url = url_for current_page
  elsif blog.articles[0]
    blog_url = blog.articles[0]
  else
    blog_url = nil
  end

  url = data.blog.url

  return url
end
