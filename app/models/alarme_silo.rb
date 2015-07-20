class AlarmeSilo < ActiveRecord::Base
  belongs_to :alarme
  belongs_to :silo
end
