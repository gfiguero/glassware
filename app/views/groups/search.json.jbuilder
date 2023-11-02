json.array! @groups do |group|
  json.value group.id
  json.text group.name
end
