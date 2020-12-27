class AddPhotoNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :photoname, :string
  end
end
