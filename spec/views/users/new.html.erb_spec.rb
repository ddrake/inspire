require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :email => "MyString",
      :name => "MyString",
      :password_digest => "MyString",
      :message => nil
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_password_digest[name=?]", "user[password_digest]"
      assert_select "input#user_message[name=?]", "user[message]"
    end
  end
end
