class AddSlugToPolls < ActiveRecord::Migration[7.0]
  def change
    add_column :polls, :slug, :string
    add_index :polls, :slug, unique: true
  end
end
