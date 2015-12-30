require 'spec_helper'

describe Event do

  before do
    @event = FactoryGirl.create(:event)
  end

  subject { @event }

  it { should respond_to(:title) }
  it { should respond_to(:address_1) }
  # it { should respond_to(:organizer_id) }
  # it { should respond_to(:users) }

  it { should be_valid }

  describe 'when title is not present' do
    before { @event.title = ''}
    it { should_not be_valid }
  end

  describe 'when title is too long' do
    before { @event.title = 'a' * 101 }
    it { should_not be_valid }
  end

  # describe 'when organizer_id is not present' do
  #   before { @even.organizer_id: '') }
  #   it { should_not be_valid }
  # end


  describe 'when street address format is invalid' do
    it 'should be invalid' do
      addresses = ['10#Park-Place', '^& Cherry Lance', '1 D^*owning Street']
      addresses.each do |invalid_address|
        @event.address_1 = invalid_address
        expect(@event).not_to be_valid
      end
    end
  end

  describe 'when street address format is valid' do
    it 'should be invalid' do
      addresses = ['10 Park Place', '2000 main street', '1 Downing Street']
      addresses.each do |valid_address|
        @event.address_1 = valid_address
        expect(@event).to be_valid
      end
    end
  end

end
