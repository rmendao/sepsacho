class AddUserIdToExploracao < ActiveRecord::Migration
  def change
    add_column :exploracaos, :user_id, :integer
  end
end
