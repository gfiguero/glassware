json.array! @profiles do |profile|
  json.value profile.id
  json.text profile.name
end
