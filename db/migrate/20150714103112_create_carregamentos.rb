class CreateCarregamentos < ActiveRecord::Migration
  def change
    create_table :carregamentos do |t|

      t.timestamps null: false
    end
  end
end
