class CreateEstablishments < ActiveRecord::Migration[5.2]
  def change
    create_table :establishments do |t|
      t.string :name, :null => false
      t.references :city, foreing_key: true

      t.timestamps
    end
  end
end
