class AddImageAttachmentToSounds < ActiveRecord::Migration[5.0]
  def change
    add_column :sounds, :imageAttachment, :string
  end
end
