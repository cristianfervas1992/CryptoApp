namespace :prueba do
 desc "Demo"
 task :demo => :environment do
    puts Cryptocurrency.first.name
 end
end

namespace :price do
    desc "Tarea que permite obtener el precio de una moneda en distintos mercados que la posean"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Ethereum")
        mercados = moneda.exchanges.each do |t|
            puts t.name
            puts valor=Cryptocompare::Price.find('ETH', 'USD', {'e' => t.name})
            #precio=valor                
        end
    end
end