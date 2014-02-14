require 'spec_helper'

describe "coursenames/edit" do
  before(:each) do
    @coursename = assign(:coursename, stub_model(Coursename,
      :name => "MyString"
    ))
  end

  it "renders the edit coursename form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coursename_path(@coursename), "post" do
      assert_select "input#coursename_name[name=?]", "coursename[name]"
    end
  end
end
