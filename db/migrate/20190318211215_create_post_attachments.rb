class CreatePostAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_attachments do |t|
      t.references :post, foreing_key: true
      t.references :attachment, foreing_key: true
      
      t.timestamps
    end
  end
end
