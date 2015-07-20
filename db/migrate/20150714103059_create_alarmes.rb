class CreateAlarmes < ActiveRecord::Migration
  def change
    create_table :alarmes do |t|

      t.timestamps null: false
    end
  end
end
