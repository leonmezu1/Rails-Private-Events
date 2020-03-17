RSpec.describe User, type: :model do
  subject { User.new(username: "testname", email: "testing@usagi.com", password: "123456", password_confirmation: "123456")}
  before { subject.save }

  it 'Name should exist' do
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it 'Email should exist' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'password should exist' do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it 'password confirmation' do
    subject.password_confirmation = nil
    expect(subject).to_not be_valid
  end

  it 'Username should not be too short' do
    subject.username = 'un'
    expect(subject).to_not be_valid
  end

  it 'Password should not be too short' do
    subject.password = '123'
    expect(subject).to_not be_valid
  end

  it 'Email should not be too short' do
    subject.email = 'b@r.c'
    expect(subject).to_not be_valid
  end

  it 'passwords should match' do
    subject.password = '123456'
    subject.password_confirmation = '1234567'
    expect(subject).to_not be_valid
  end

end
