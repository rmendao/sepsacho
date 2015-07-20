class CreateUserSilos < ActiveRecord::Migration
  def change
    create_table :user_silos do |t|

      t.timestamps null: false
    end
  end
end
