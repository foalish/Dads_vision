json.array!(@coursenames) do |coursename|
  json.extract! coursename, :name
  json.url coursename_url(coursename, format: :json)
end