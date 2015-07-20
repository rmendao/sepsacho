class CreateHistoricoAlarmes < ActiveRecord::Migration
  def change
    create_table :historico_alarmes do |t|

      t.timestamps null: false
    end
  end
end
