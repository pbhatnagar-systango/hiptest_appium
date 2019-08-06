# encoding: UTF-8

module Actionwords
  def i_am_on_splash_screen
    signup_button = find_element(:accessibility_id, "Sign up")
    expect(signup_button.displayed?).to be true
  end

  def i_click_on_signup_button
    signup_button = find_element(:accessibility_id, "Sign up")
    signup_button.click
  end

  def i_am_on_terms_and_condition_page
    terms_condition_h1 = find_element(:xpath, "//XCUIElementTypeStaticText[@name=\"Before we continue, please review our Terms and Privacy Policy\"]").displayed?
    expect(terms_condition_h1).to be true
  end
end