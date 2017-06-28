class Heroes < ActiveRecord::Migration
  def change
      create_table :heroes do |t|
        t.string :name
        t.string :power
        t.text :bio
      end
  end
end
