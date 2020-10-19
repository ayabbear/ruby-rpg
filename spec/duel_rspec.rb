require 'rspec'
require '../duel'

RSpec.describe Duel do
  describe "Duel" do
    context "The attacker is Monk and the defender is Assasin" do
      attacker = Monk.new('omni_knight')
      defender = Assasin.new('templar_assasin')

      it "should damage attacker's hp" do
        duel = Duel.fight(attacker,defender)
        expect(defender.hp).to eq(230)
      end

      it "should damage defender's hp" do
        duel = Duel.fight(defender,attacker)
        expect(attacker.hp).to eq(10)
      end
    end
  end
end