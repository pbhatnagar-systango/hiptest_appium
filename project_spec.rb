# encoding: UTF-8
require 'spec_helper'
require_relative 'actionwords'

describe 'IOS Application' do
  include Actionwords

  it "on clicking signup button user should go on the terms and condition page" do
    # Given I am on splash screen
    i_am_on_splash_screen
    # And I click on signup button
    i_click_on_signup_button
    # Then I am on terms and condition page
    i_am_on_terms_and_condition_page
  end
end
