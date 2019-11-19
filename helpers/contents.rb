def article_eyecatch (article = nil)
  if article.data.eyecatch then
    eyecatch = article.url + "index/" + article.data.eyecatch
  else
    eyecatch = nil
  end

  return eyecatch
end

def list_eyecatch (article = nil)
  if article.data.eyecatch then
    eyecatch = article.url + "index/" + article.data.eyecatch
  else
    eyecatch = '/assets/img/no-image.png'
  end

  return eyecatch
end
