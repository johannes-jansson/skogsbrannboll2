class CreateStrikes < ActiveRecord::Migration
  def change
    create_table :strikes do |t|
      t.decimal :onehand
      t.decimal :twohand
      t.decimal :burn
      t.decimal :in
      t.decimal :full

      t.timestamps
    end
  end
end
