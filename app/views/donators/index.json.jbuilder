json.array!(@donators) do |donator|
  json.extract! donator, :id, :name, :email, :blood_type
  json.url donator_url(donator, format: :json)
end
