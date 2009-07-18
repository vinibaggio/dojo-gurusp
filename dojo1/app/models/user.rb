require 'digest/md5'
class User < ActiveRecord::Base
	ACTIVE = "1"
	INACTIVE = "0"

	belongs_to :group
	validates_presence_of :name, :login, :password, :email

	validates_inclusion_of :status, :in => [ACTIVE, INACTIVE]

	def password=(value)
		write_attribute(:password, self.class.hash_string(value)) unless value.nil?
	end

	def self.login(login, password)
		exists?(:login => login, :password => hash_string(password))
	end

	private
	def self.hash_string(str)
		Digest::MD5.hexdigest(str)
	end

end
