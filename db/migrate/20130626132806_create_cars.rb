class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :marca
      t.integer :ano
      t.string :modelo
      t.string :variacao
      t.string :cor
      t.integer :kilometragem

      t.timestamps
    end
  end
end
