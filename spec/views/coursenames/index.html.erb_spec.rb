require 'spec_helper'

describe "coursenames/index" do
  before(:each) do
    assign(:coursenames, [
      stub_model(Coursename,
        :name => "Name"
      ),
      stub_model(Coursename,
        :name => "Name"
      )
    ])
  end

  it "renders a list of coursenames" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
