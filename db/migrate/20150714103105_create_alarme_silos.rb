class CreateAlarmeSilos < ActiveRecord::Migration
  def change
    create_table :alarme_silos do |t|

      t.timestamps null: false
    end
  end
end
