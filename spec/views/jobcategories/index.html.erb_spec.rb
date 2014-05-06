require 'spec_helper'

describe "jobcategories/index" do
  before(:each) do
    assign(:jobcategories, [
      stub_model(Jobcategory,
        :name => "Name"
      ),
      stub_model(Jobcategory,
        :name => "Name"
      )
    ])
  end

  it "renders a list of jobcategories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
