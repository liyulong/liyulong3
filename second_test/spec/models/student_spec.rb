require 'spec_helper'
	describe Student do
		before(:each)do
		@attr={:name=>"example Student", :email=>"student@example.com", :numeber=>"12345678910"}
		end
		it "name should be presence" do
			student=Student.new(@attr.merge(:name=>"", :email=>"4512189@qq.com"))
			student.should_not be_valid
		end
		it "email should be presence" do
			student=Student.new(@attr.merge(:name=>"lyl", :email=>"4515645489qq.com"))
			student.should_not be_valid
		end
		it "number should be short" do
			student=Student.new(@attr.merge(:name=>"lyl", :email=>"445466454689@qq.com", :number=>"1231"))
			student.should be_valid
		end
		it "number should be long" do
			student=Student.new(@attr.merge(:name=>"lyl", :email=>"445466454689@qq.com", :number=>"4456456456456456"))
			student.should_not be_valid
		end

	end


