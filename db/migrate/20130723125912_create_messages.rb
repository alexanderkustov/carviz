class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :user_from
      t.string :user_to
      t.string :subject
      t.text :desc

      t.timestamps
    end
  end
end
