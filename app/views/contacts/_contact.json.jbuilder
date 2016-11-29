json.extract! contact, :id, :first_name, :last_name, :phone_mobile, :phone_home, :phone_work, :email, :address, :created_at, :updated_at
json.url contact_url(contact, format: :json)