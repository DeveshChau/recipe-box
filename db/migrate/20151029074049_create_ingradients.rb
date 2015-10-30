class CreateIngradients < ActiveRecord::Migration
  def change
    create_table :ingradients do |t|
      t.string :name
      t.belongs_to :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
