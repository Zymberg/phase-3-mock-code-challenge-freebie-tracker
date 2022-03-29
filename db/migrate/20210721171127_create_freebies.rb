class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebie do |t|
      t.string :item_name
      t.integer :values
      t.integer :company_id
      t.integer :dev_id
    
  end
end
