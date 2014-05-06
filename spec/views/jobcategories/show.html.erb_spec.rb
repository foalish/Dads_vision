require 'spec_helper'

describe "jobcategories/show" do
  before(:each) do
    @jobcategory = assign(:jobcategory, stub_model(Jobcategory,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
