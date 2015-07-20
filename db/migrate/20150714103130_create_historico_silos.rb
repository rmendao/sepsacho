class CreateHistoricoSilos < ActiveRecord::Migration
  def change
    create_table :historico_silos do |t|

      t.timestamps null: false
    end
  end
end
