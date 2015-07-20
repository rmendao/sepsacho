class CreateExploracaos < ActiveRecord::Migration
  def change
    create_table :exploracaos do |t|

      t.timestamps null: false
    end
  end
end
