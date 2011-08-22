
# == Schema Information
#
# Table name: users
#
#  id                  :integer         not null, primary key
#  login               :string(255)     not null
#  email               :string(255)     not null
#  persistence_token   :string(255)     not null
#  crypted_password    :string(255)     not null
#  password_salt       :string(255)     not null
#  single_access_token :string(255)     not null
#  perishable_token    :string(255)     not null
#  login_count         :integer         default(0), not null
#  failed_login_count  :integer         default(0), not null
#  last_request_at     :datetime
#  current_login_at    :datetime
#  last_login_at       :datetime
#  current_login_ip    :string(255)
#  last_login_ip       :string(255)
#

require 'spec_helper'

describe User do
  it "should return First- and Lastname for Greeting if they are there" do
    user = User.new(:first => "Barbara", :last => "Kleinen")
    user.greeting.should eq("Barbara Kleinen")
  end
  it "should return the nick if First & Lastname are not present" do
     user = User.new(:nick => "Bela")
     user.greeting.should eq("Bela")
  end
  it "should return the nick as greeting only if First & Lastname are not present" do
     user = User.new(:first => "Barbara", :last => "Kleinen", :nick => "Bela")
     user.greeting.should eq("Barbara Kleinen")
  end
  it "should also the nick as greeting only if First & Lastname are empty" do
     user = User.new(:first => "", :last => "", :nick => "Bela")
     user.greeting.should eq("Bela")
   end

end

