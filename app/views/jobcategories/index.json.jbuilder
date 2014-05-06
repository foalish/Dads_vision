json.array!(@jobcategories) do |jobcategory|
  json.extract! jobcategory, :name
  json.url jobcategory_url(jobcategory, format: :json)
end