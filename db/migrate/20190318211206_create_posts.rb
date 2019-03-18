class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, foreing_key: true
      t.references :postattachment, foreing_key: true
      t.references :posttag, foreing_key: true
      t.references :category, foreing_key: true
      t.references :comment, foreing_key: true
      
      t.timestamps
    end
  end
end
