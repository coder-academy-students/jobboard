json.array!(@companies) do |company|
  json.extract! company, :id, :name, :website, :contact_name, :contact_phone, :logo, :info, :approved, :user_id
  json.url company_url(company, format: :json)
end
