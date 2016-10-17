class RemoveFileFromSounds < ActiveRecord::Migration[5.0]
  def change
    remove_column :sounds, :file, :string
  end
end
