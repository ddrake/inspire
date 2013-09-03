require 'spec_helper'

describe "messages/index" do
  before(:each) do
    assign(:messages, [
      stub_model(Message,
        :body => "Body"
      ),
      stub_model(Message,
        :body => "Body"
      )
    ])
  end

  it "renders a list of messages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
