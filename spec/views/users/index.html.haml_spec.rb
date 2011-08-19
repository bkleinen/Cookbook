require 'spec_helper'

describe "users/index.html.haml" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :login => "Login",
        :email => "Email",
        :persistence_token => "Persistence Token",
        :crypted_password => "Crypted Password",
        :password_salt => "Password Salt",
        :single_access_token => "Single Access Token",
        :perishable_token => "Perishable Token",
        :login_count => 1,
        :failed_login_count => 1,
        :current_login_ip => "Current Login Ip",
        :last_login_ip => "Last Login Ip"
      ),
      stub_model(User,
        :login => "Login",
        :email => "Email",
        :persistence_token => "Persistence Token",
        :crypted_password => "Crypted Password",
        :password_salt => "Password Salt",
        :single_access_token => "Single Access Token",
        :perishable_token => "Perishable Token",
        :login_count => 1,
        :failed_login_count => 1,
        :current_login_ip => "Current Login Ip",
        :last_login_ip => "Last Login Ip"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Persistence Token".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Crypted Password".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password Salt".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Single Access Token".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Perishable Token".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Current Login Ip".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Login Ip".to_s, :count => 2
  end
end
