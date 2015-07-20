class CreateSilos < ActiveRecord::Migration
  def change
    create_table :silos do |t|

      t.timestamps null: false
    end
  end
end
