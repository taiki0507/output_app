class AddTitleToStaticpage < ActiveRecord::Migration[5.0]
  def change
    add_column :staticpages, :title, :string
  end
end
