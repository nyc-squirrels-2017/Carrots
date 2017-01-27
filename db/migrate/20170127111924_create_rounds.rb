class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :user, null: false
      t.references :deck, null: false
      t.timestamps 
    end
  end
end
