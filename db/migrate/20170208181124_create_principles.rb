class CreatePrinciples < ActiveRecord::Migration
  def change
    create_table :principles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
