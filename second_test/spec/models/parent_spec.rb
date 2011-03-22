require 'spec_helper'
	describe Parent do
		before(:each)do
		@attr={:name=>"example Parent", :email=>"parent@example.com", :telephone=>"12345678910"}
		end
		it "name should be presence" do
			parent=Parent.new(@attr.merge(:name=>"", :email=>"4512189@qq.com"))
			parent.should_not be_valid
		end
		it "email should be presence" do
			parent=Parent.new(@attr.merge(:name=>"lyl", :email=>"4515645489qq.com"))
			parent.should_not be_valid
		end
		it "number should be short" do
			parent=Parent.new(@attr.merge(:name=>"lyl", :email=>"445466454689@qq.com", :telephone=>"1231"))
			parent.should_not be_valid
		end
		it "number should be long" do
			parent=Parent.new(@attr.merge(:name=>"lyl", :email=>"445466454689@qq.com", :telephone=>"4456456456456456"))
			parent.should_not be_valid
		end

	end
