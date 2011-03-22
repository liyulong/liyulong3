class Parent < ActiveRecord::Base
	belongs_to:student
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	attr_accessible:name,:email,:telephone
	validates:name, :presence=>true,:length=>{:maximum=>20}
	validates:email, :presence=>true,:format=>{:with=>email_regex},:length=>{:maximum=>50}
	validates:telephone, :presence=>true,:length=>{:maximum=>11,:minimum=>11}
end
