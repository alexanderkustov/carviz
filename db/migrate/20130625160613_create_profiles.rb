class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :idade
      t.boolean :sexo
      t.integer :telefone
      t.string :local

      t.timestamps
    end
  end
end
