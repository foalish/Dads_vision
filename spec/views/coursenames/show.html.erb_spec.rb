require 'spec_helper'

describe "coursenames/show" do
  before(:each) do
    @coursename = assign(:coursename, stub_model(Coursename,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
