class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :user,          null: false, foreign_key: true
      t.integer    :category_id,   null: false                    
      t.integer    :condition_id,  null: false                    
      t.integer    :charges_id,    null: false                    
      t.integer    :area_id,       null: false                    
      t.integer    :estimated_id   null: false                    
      t.string     :name,          null: false                     
      t.integer    :money,         null: false                    
      t.text       :description,   null: false                    
      t.timestamps
    end
  end
end
