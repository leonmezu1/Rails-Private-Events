require 'rails_helper'
RSpec.feature "Sessions", type: :feature do
  subject { User.new(username: "testname", email: "testing@usagi.com", password: "123456", password_confirmation: "123456")}
  before { subject.save }

  context "Should log in to the platform" do

    scenario "should login" do
      visit login_path
      within('form') do
        fill_in 'Email', with: 'testing@usagi.com'
        fill_in 'Password', with: '123456'
      end
      click_button 'Login'
      expect(page).to have_content('Welcome testname')
    end

    scenario "should not login" do
      visit login_path
      within('form') do
        fill_in 'Email', with: 'testing@usagi.com'
        fill_in 'Password', with: '1234567'
      end
      click_button 'Login'
      expect(page).to have_content('Invalid email/password combination')
    end
  end

end
