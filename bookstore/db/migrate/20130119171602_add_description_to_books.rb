class AddDescriptionToBooks < ActiveRecord::Migration
  def change
    add_column :books, :descrition, :text

  end
end
