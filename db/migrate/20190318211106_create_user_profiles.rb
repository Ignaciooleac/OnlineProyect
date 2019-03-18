class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.string :avatar
      t.references :user, foreing_key: true
      t.references :address, foreing_key: true

      t.timestamps
    end
  end
end
