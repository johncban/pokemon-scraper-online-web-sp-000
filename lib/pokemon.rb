class Pokemon
  attr_acessor :id, :poke_name, :poke_type, :poke_hp, :db

  def self.save(poke_name, poke_type, db)
  end

  def self.find(id_nu, db)
  end

  def initialize(id:, poke_name:, poke_type:, poke_hp: nil, db:)
    @id, @poke_name, @poke_type, @poke_hp, @db = id, poke_name, poke_type, poke_hp, db
  end

  def alter_poke_hp(new_hp, db)

  end
end
