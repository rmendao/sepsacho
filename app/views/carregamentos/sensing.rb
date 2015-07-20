require 'pg'
require 'date'

class PostgresDirect
  # Create the connection instance.
  def connect
    @conn = PG.connect(
        :dbname => 'postgres',
        :user => 'postgres',
        :password => 'ejjizoi2902',
        :host => 'localhost',
        :port => '5432')

  end


  # Prepared statements prevent SQL injection attacks.  However, for the connection, the prepared statements
  # live and apparently cannot be removed, at least not very easily.  There is apparently a significant
  # performance improvement using prepared statements.
  def prepareInsertStatement
    @conn.prepare("insert_sensing_data", "insert into historico_silos (data, quilograma, silo_id) values ($1, $2, $3)")
  end

  # Add a user with the prepared statement.
  def addSensingData(data, peso, silo)
    @conn.exec_prepared("insert_sensing_data", [data, peso, silo])
  end

  # Get our data back
  def queryHistoricoSilosTable
    @conn.exec( "SELECT * FROM historico_silos" ) do |result|
      result.each do |row|
        yield row if block_given?
      end
    end
  end

  # Get our data back
  def getLastWeight(silo_id)
    printf("Silo id %d", silo_id);
    res = @conn.exec( "SELECT quilograma FROM historico_silos where silo_id="+silo_id.to_s )
    return res.values[-1]
  end

  # Disconnect the back-end connection.
  def disconnect
    @conn.close
  end
end

def main
  p = PostgresDirect.new()
  p.connect
  carregou = false;
  begin
    p.prepareInsertStatement
    while true
      for i in 1..4
       aux = p.getLastWeight(i)
       if aux != nil
        peso = aux[0].to_i
       else
         peso = 0
       end

      date = DateTime.parse(Time.now.inspect)
      if(date.to_time.hour<20 and date.to_time.hour> 6 ) #modela o dia
        peso = peso -(2 * i)
        end
      if(date.to_date.monday? and not carregou) # às quintas carrega 10000
        peso +=10000
      end
      p.addSensingData(date, peso, i);

      p.queryHistoricoSilosTable {|row| printf("%s %s\n", row['data'], row['quilograma'])}
      end

      sleep(60);

      if(date.to_date.monday?)
        carregou=true
      end

      if(not date.to_date.monday? and carregou)
        carregou = false
      end

    end

  rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
  ensure
    p.disconnect
  end
end

main
