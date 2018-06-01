class SignUp < ApplicationRecord
	#include ActiveModel::Validations
	#include ActiveModel::Conversion
	#extend ActiveModel::Naming
	#attr_accessor :first_name, :Last_name, :Email, :company_name, :company_mailing_address, :city, :state, :zip, :company_phone_number, :password, :company_type, :user_name

	#before_validation {self.password = SecureRandom.hex(4)}
	EMAIL_REGEX = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :email, :presence => true, :format => EMAIL_REGEX
	validates :company_name, :presence => true
	validates :company_mailing_address, :presence => true
	validates :city, :presence => true
	validates :state, :presence => true
	validates :zip, :presence => true, :length =>{ :is => 5}
	validates :company_phone_number, :presence => true, format: { with: /[0-9]/}, :length =>{ :is => 10}
	validates :password, :presence => true, :length =>{ :in => 6..14}, format: { with: /\A[\w\_]+\z/}
	validates :company_type, :presence => true
	validates :user_name, :presence => true, :uniqueness => true

		
	
end
