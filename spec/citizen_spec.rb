require_relative '../citizen'
# Citizen.new -> .initialize

describe Citizen do
  describe '#initialize' do
    it 'should return an instance of a Citizen' do
      yann = Citizen.new('Yann', 'Klein', 25)
      expect(yann).to be_a(Citizen)
    end
  end

  describe '#can_vote?' do
    it 'should return false for someone younger than 18' do
      yann = Citizen.new('Yann', 'Klein', 15)
      expect(yann.can_vote?).to eq(false)
    end

    it 'should return true for someone older than 18' do
      yann = Citizen.new('Yann', 'Klein', 25)
      expect(yann.can_vote?).to eq(true)
    end
  end

  describe '#full_name' do
    it 'should give a formatted full name for the citizen' do
      yann = Citizen.new('Yann', 'Klein', 25)
      expect(yann.full_name).to eq('Yann Klein')
    end
  end
end
