class Carregamento < ActiveRecord::Base
  belongs_to :silo
  belongs_to :user_silo
end
