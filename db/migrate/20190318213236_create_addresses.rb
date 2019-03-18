class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :country, foreing_key: true
      t.references :city, foreing_key: true
      t.references :establishment, foreing_key: true
      
      t.timestamps
    end
  end
end
