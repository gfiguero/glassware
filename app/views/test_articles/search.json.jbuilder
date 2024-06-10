json.array! @test_articles do |test_article|
  json.value test_article.id
  json.text test_article.name
end
