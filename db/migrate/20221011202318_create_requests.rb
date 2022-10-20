class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.references :item, null: false, foreign_key: true
      t.time :estimated_time
      t.integer :number_request
      t.integer :quantity

      t.timestamps
    end
  end
end
