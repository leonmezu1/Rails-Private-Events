require 'rails_helper'
RSpec.feature "Attendance", type: :feature do
  context "should attend event" do
    subject { User.new(username: "testname", email: "testing@usagi.com", password: "123456", password_confirmation: "123456")}
    before {
      subject.save
      visit login_path
      within('form') do
        fill_in 'Email', with: 'testing@usagi.com'
        fill_in 'Password', with: '123456'
      end
      click_button 'Login'
     }

    scenario "should assist to event" do

    end

  end

end
