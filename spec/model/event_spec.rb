RSpec.describe Event, type: :model do
  subject { Event.new(name: "newevent", description: "this is a new event", event_date: '2020-03-17 12:00:00', user_id: 1 )}
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

  context 'ActiveRecord associations' do
    it 'belongs to tree' do
      expect(Event.reflect_on_association(:user).macro).to be (:belongs_to)
    end
  end



end
