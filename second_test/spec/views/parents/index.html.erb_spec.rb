require 'spec_helper'

describe "parents/index.html.erb" do
  before(:each) do
    assign(:parents, [
      stub_model(Parent,
        :name => "Name",
        :telephone => "Telephone",
        :email => "Email",
        :student_id => 1
      ),
      stub_model(Parent,
        :name => "Name",
        :telephone => "Telephone",
        :email => "Email",
        :student_id => 1
      )
    ])
  end

  it "renders a list of parents" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
