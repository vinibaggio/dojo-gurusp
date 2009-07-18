require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do
	before(:all) do
		@password = '123'
		@user = User.create!(:password => @password, :name => 'Jose', :login => 'jose', :email => 'jose@', :status => User::ACTIVE)
	end

	should_belong_to :group
	should_validate_presence_of :name, :login, :password, :email
	should_validate_inclusion_of :status, :in => [User::ACTIVE, User::INACTIVE]

	it "should save passwords as hashes" do
		@user.password.should == Digest::MD5.hexdigest(@password)
	end

	it "should do login with valid credentials" do
		User.login(@user.login, @password).should be_true
	end

	it "should not do login with invalid credentials" do
		User.login(@user.login, 'zuado').should be_false
	end

end
