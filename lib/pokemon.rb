class Pokemon
  attr_acessor :id, :poke_name, :poke_type, :poke_hp, :db

  def self.save(poke_name, poke_type, db)
    db.execute("INSERT INTO pokemon (poke_name, poke_type) VALUES (?, ?)", poke_name, poke_type)
  end

  def self.find(id_nu, db)
    poke_info = db.execute("SELECT * FROM pokemon WHERE id=?", id_num).flatten
    Pokemon.new(id: poke_info[0], poke_name: poke_info[1], poke_type: poke_info[2], poke_hp: poke_info[3], db: db)
  end

  def initialize(id:, poke_name:, poke_type:, poke_hp: nil, db:)
    @id, @poke_name, @poke_type, @poke_hp, @db = id, poke_name, poke_type, poke_hp, db
  end

  def alter_poke_hp(new_hp, db)
    db.execute("UPDATE pokemon SET poke_hp = ? WHERE id = ?", new_hp, self.id)
  end
end
