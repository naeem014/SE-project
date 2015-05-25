class Doctor < ActiveRecord::Base
	attr_accessible :Name, :Specialization, :Location, :email, :password_digest
	has_secure_password

  	validates :email, uniqueness: true

end	