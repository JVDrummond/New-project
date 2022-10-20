class CreateMenuRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_requests do |t|
      t.float :price
      t.references :item, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
