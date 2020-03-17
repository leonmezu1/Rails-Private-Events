RSpec.describe Event, type: :model do
  subject { Event.new(name: "newevent", description: "this is a new event", event_date: DateTime.now )}
  before { subject.save }

  it 'Name should exist' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'description should exist' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'Date should exist' do
    subject.event_date = nil
    expect(subject).to_not be_valid
  end

end
