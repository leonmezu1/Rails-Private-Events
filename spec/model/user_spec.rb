RSpec.describe User, type: :model do
  subject { User.new(name: "testname", email:"testing@usagi.com", password: "123456", password_confirmation: "123456")}
  before { subject.save }

  it 'Name should exist' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
