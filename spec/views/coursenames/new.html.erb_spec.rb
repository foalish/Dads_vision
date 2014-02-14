require 'spec_helper'

describe "coursenames/new" do
  before(:each) do
    assign(:coursename, stub_model(Coursename,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new coursename form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coursenames_path, "post" do
      assert_select "input#coursename_name[name=?]", "coursename[name]"
    end
  end
end
