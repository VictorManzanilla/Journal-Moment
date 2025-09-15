class CreateEmotions < ActiveRecord::Migration[7.1]
  def change
    create_table :emotions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :emotion
      t.date :date

      t.timestamps
    end
  end
end
