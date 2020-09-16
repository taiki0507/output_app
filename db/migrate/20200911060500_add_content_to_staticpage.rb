class AddContentToStaticpage < ActiveRecord::Migration[5.0]
  def change
    add_column :staticpages, :content, :string
  end
end
