class ChangePersonIdToUserId < ActiveRecord::Migration
  def up
  	add_column :gifts, :user_id, :integer
  end

  def down
  	remove_column :gifts, :person_id
  end
end
