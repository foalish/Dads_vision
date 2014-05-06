require 'spec_helper'

describe "jobcategories/edit" do
  before(:each) do
    @jobcategory = assign(:jobcategory, stub_model(Jobcategory,
      :name => "MyString"
    ))
  end

  it "renders the edit jobcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", jobcategory_path(@jobcategory), "post" do
      assert_select "input#jobcategory_name[name=?]", "jobcategory[name]"
    end
  end
end
