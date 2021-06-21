require '../challenge.rb'
RSpec.describe 'An aliens conversation' do
  Human = Struct.new(:name)

  let(:human_dave) { Human.new('Dave') }
  let(:alien_krox) { Alien.new }
  let(:alien_qhal) { Alien.new }

  context 'When an alien meets another alien' do
    it 'can talk to and understand other aliens\'s speech' do
      expect(alien_krox.can_talk_to?(alien_qhal)).to be(true) 
    end

    it 'can talk to and understand other aliens\'s speech' do
      expect(alien_qhal.can_talk_to?(alien_krox)).to be(true) 
    end
  end
  
  context 'When an alien meets a human' do
    it 'alien krox cannot talk to human' do
      expect(alien_krox.can_talk_to?(human_dave)).to be(false)
    end

    it 'alien krox cannot talk to human' do
      expect(alien_qhal.can_talk_to?(human_dave)).to be(false)
    end
  end
  
end
