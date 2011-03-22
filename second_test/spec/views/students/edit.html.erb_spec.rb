require 'spec_helper'

describe "students/edit.html.erb" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :new_record? => false,
      :name => "MyString",
      :sex => "MyString",
      :number => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => student_path(@student), :method => "post" do
      assert_select "input#student_name", :name => "student[name]"
      assert_select "input#student_sex", :name => "student[sex]"
      assert_select "input#student_number", :name => "student[number]"
      assert_select "input#student_email", :name => "student[email]"
    end
  end
end
