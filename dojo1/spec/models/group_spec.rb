require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Group do

	should_have_many :users
	should_validate_presence_of :name

end
