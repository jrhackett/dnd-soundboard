class RemovePictureFromSounds < ActiveRecord::Migration[5.0]
  def change
    remove_column :sounds, :picture, :string
  end
end
