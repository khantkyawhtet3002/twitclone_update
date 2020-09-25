class CreateSonics < ActiveRecord::Migration[6.0]
  def change
    create_table :sonics do |t|
      t.text :content
      t.timestamps
    end
  end
end
