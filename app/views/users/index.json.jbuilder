json.array!(@users) do |user|
  json.extract! user, :first_name, :last_name, :phone1, :phone2, :fax, :address1, :address2, :city, :state, :zip, :country, :role_id, :company_id, :branch_id, :active, :created_at, :updated_at
  json.url user_url(user, format: :json)
end
