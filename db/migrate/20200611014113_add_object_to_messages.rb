class AddObjectToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :object, :string
  end
end
