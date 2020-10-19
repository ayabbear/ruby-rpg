class Duel
  def self.fight(attacker,defender)
    defender.hp = defender.hp + defender.armor - attacker.dmg
  end
end

class Hero < Duel
  attr_accessor :hp
  attr_reader :armor, :dmg, :name

  def initialize(name)
    @name = name
  end
end

class Guard < Hero
  def initialize(name)
    @hp = 300
    @armor = 100
    @dmg = 50
    super
  end
end

class Assasin < Hero
  def initialize(name)
    @hp = 200
    @armor = 90
    @dmg = 100
    super
  end
end

class Monk < Hero
  def initialize(name)
    @hp = 100
    @armor = 10
    @dmg = 60
    super
  end
end

class Palladin < Hero
  def initialize(name)
    @hp = 200
    @armor = 50
    @dmg = 40
    super
  end
end

# templar_assasin = Assasin.new('templar_assasin')
# omni_knight = Monk.new('omni_knight')
# puts Duel.fight(templar_assasin, omni_knight)
