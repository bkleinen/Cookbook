require 'spec_helper'

describe "users/new.html.haml" do
  before(:each) do
    assign(:user, stub_model(User,
      :login => "MyString",
      :email => "MyString",
      :persistence_token => "MyString",
      :crypted_password => "MyString",
      :password_salt => "MyString",
      :single_access_token => "MyString",
      :perishable_token => "MyString",
      :login_count => 1,
      :failed_login_count => 1,
      :current_login_ip => "MyString",
      :last_login_ip => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_login", :name => "user[login]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_password_confirmation", :name => "user[crypted_password]"
      assert_select "input#user_password", :name => "user[password_salt]"
    end
  end
end
