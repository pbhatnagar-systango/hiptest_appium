# encoding: UTF-8
require 'spec_helper'
require_relative 'actionwords'

describe 'IOS Application' do
  include Actionwords

  it "on clicking signup button user should go on the terms and condition page (uid:416725b8-765c-40d3-b213-3872172f4df2)" do
    # Given I am on splash screen
    i_am_on_splash_screen
    # And I click on signup button
    i_click_on_signup_button
    # Then I am on terms and condition page
    i_am_on_terms_and_condition_page
  end
end
