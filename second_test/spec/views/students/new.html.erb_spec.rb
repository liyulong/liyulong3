require 'spec_helper'

describe "students/new.html.erb" do
  before(:each) do
    assign(:student, stub_model(Student,
      :name => "MyString",
      :sex => "MyString",
      :number => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => students_path, :method => "post" do
      assert_select "input#student_name", :name => "student[name]"
      assert_select "input#student_sex", :name => "student[sex]"
      assert_select "input#student_number", :name => "student[number]"
      assert_select "input#student_email", :name => "student[email]"
    end
  end
end
