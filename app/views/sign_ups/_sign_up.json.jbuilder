json.extract! sign_up, :id, :first_name, :last_name, :email, :company_name, :company_mailing_address, :city, :state, :zip, :company_phone_number, :password, :company_type, :user_name, :created_at, :updated_at
json.url sign_up_url(sign_up, format: :json)
