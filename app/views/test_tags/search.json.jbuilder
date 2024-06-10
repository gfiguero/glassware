json.array! @test_tags do |test_tag|
  json.value test_tag.id
  json.text test_tag.name
end
