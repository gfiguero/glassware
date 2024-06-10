json.array! @test_posts do |test_post|
  json.value test_post.id
  json.text test_post.name
end
