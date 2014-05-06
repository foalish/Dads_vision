require 'spec_helper'

describe "jobcategories/new" do
  before(:each) do
    assign(:jobcategory, stub_model(Jobcategory,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new jobcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", jobcategories_path, "post" do
      assert_select "input#jobcategory_name[name=?]", "jobcategory[name]"
    end
  end
end
