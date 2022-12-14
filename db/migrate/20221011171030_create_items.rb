class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.boolean :ativo
      t.string :description
      t.string :name
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
