json.array!(@post_addresses) do |post_address|
  json.extract! post_address, :id, :postcode, :city, :street, :number, :range, :flat
  json.url post_address_url(post_address, format: :json)
end
