class SignUp < ApplicationRecord
	before_validation {self.password = SecureRandom.hex(4)}
	before_validation {self.user_name = first_name + last_name + SecureRandom.hex(2)}
	EMAIL_REGEX = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :email, :presence => true, :format => EMAIL_REGEX
	validates :company_name, :presence => true
	validates :company_mailing_address, :presence => true
	validates :city, :presence => true
	validates :state, :presence => true
	validates :zip, :presence => true, :length =>{ :is => 5}
	validates :company_phone_number, :presence => true, format: { with: /(?:(?:(\s*\(?([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\)?\s*(?:[.-]\s*)?)([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})/}
	validates :password, :presence => true, :length =>{ :in => 6..14}, format: { with: /\A[\w\_]+\z/}
	validates :company_type, :presence => true
	validates :user_name, :presence => true, :uniqueness => true

		
	
end
