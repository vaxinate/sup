class CreateSups < ActiveRecord::Migration
  def change
    create_table :sups do |t|
      t.integer :sender_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end
