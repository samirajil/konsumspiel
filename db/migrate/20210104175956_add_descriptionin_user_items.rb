class AddDescriptioninUserItems < ActiveRecord::Migration[6.0]
  def change
    add_column :user_items, :description, :string
  end
end
