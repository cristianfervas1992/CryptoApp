#TOP TEN CRYPTOCURRENCIES FUNCTIONS
namespace :eth do
    desc "Tarea que permite obtener y almacenar el valor de ETH en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Ethereum")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['ETH'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado en USD"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['ETH'], ['BTC'], {'e' => t.name}))
                if !valor.respond_to? ('Response') 
                    precio=valor.first.second.BTC
                    relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                    relacion.update(btc_value: precio)
                    puts "Guardado en BTC"
                    puts t.name
                    puts precio
                end
            end
        end
    end
end
namespace :ada do
    desc "Tarea que permite obtener y almacenar el valor de ETH en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Cardano")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['ADA'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado en USD"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['ADA'], ['BTC'], {'e' => t.name}))
                if !valor.respond_to? ('Response') 
                    precio=valor.first.second.BTC
                    relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                    relacion.update(btc_value: precio)
                    puts "Guardado en BTC"
                    puts t.name
                    puts precio
                end
            end
        end
    end
end
namespace :bch do
    desc "Tarea que permite obtener y almacenar el valor de ETH en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Bitcoin Cash / BCC")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['BCH'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado en USD"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['BCH'], ['BTC'], {'e' => t.name}))
                if !valor.respond_to? ('Response') 
                    precio=valor.first.second.BTC
                    relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                    relacion.update(btc_value: precio)
                    puts "Guardado en BTC"
                    puts t.name
                    puts precio
                end
            end
        end
    end
end
namespace :xlm do
    desc "Tarea que permite obtener y almacenar el valor de ETH en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Stellar")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['XLM'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado en USD"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['XLM'], ['BTC'], {'e' => t.name}))
                if !valor.respond_to? ('Response') 
                    precio=valor.first.second.BTC
                    relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                    relacion.update(btc_value: precio)
                    puts "Guardado en BTC"
                    puts t.name
                    puts precio
                end
            end
        end
    end
end
namespace :btc do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Bitcoin")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['BTC'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            end
        end
    end
end
namespace :ltc do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Litecoin")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['LTC'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['LTC'], ['BTC'], {'e' => t.name}))
                if !valor.respond_to? ('Response') 
                    precio=valor.first.second.BTC
                    relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                    relacion.update(btc_value: precio)
                    puts "Guardado en BTC"
                    puts t.name
                    puts precio
                end
            end
        end
    end
end
namespace :eos do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "EOS")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['EOS'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['EOS'], ['BTC'], {'e' => t.name}))
                if !valor.respond_to? ('Response') 
                    precio=valor.first.second.BTC
                    relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                    relacion.update(btc_value: precio)
                    puts "Guardado en BTC"
                    puts t.name
                    puts precio
                end
            end
        end
    end
end
namespace :xrp do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Ripple")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['XRP'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['XRP'], ['BTC'], {'e' => t.name}))
                if !valor.respond_to? ('Response') 
                    precio=valor.first.second.BTC
                    relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                    relacion.update(btc_value: precio)
                    puts 'Guardado en BTC'
                    puts t.name
                    puts precio
                end
            end
        end
    end
end
namespace :nem do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "NEM")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['XEM'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['XEM'], ['BTC'], {'e' => t.name}))
                if !valor.respond_to? ('Response') 
                    precio=valor.first.second.BTC
                    relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                    relacion.update(btc_value: precio)
                    puts "Guardado en BTC"
                    puts t.name
                    puts precio
                end
            end
        end
    end
end
namespace :neo do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "NEO")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['NEO'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['NEO'], ['BTC'], {'e' => t.name}))
                if !valor.respond_to? ('Response') 
                    precio=valor.first.second.BTC
                    relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                    relacion.update(btc_value: precio)
                    puts "Guardado en BTC"
                    puts t.name
                    puts precio
                end
            end
        end
    end
end
#NEWS FUNCTION
namespace :news do
    desc "Tarea que permite obtener y almacenar noticias"
    task :demo => :environment do
        news = Cryptocompare::News.all
        puts "Revisando noticia"
        news.map{|t|
            noticia = Hashie::Mash.new(t) 
            base = New.all
            if (!base.find_by(id: noticia.id))
                puts "Noticia agregada"
                New.create(
                    id: noticia.id,
                    source: noticia.source_info.name,
                    source_img: noticia.source_info.img,
                    language: noticia.source_info.lang,
                    title: noticia.title,
                    url: noticia.url,
                    body: noticia.body,
                    published_on: Time.at(noticia.published_on),
                    image_url: noticia.imageurl,
                    categories: noticia.categories,
                    tags: noticia.tags)
            end
        }
    end
end
namespace :btc_history_coincap do
    desc 'Tarea que permite obtener los precios de las ultimas 24 hrs'
    task :demo => :environment do
        id=Cryptocurrency.find_by(name: "Bitcoin").id
        response = HTTParty.get('http://coincap.io/history/1day/BTC')
        response.parsed_response
        obj=Hashie::Mash.new(response)
        obj.price.each do |t|
            date=DateTime.strptime(t.first.to_s,'%Q').getlocal('-03:00')
            price=t.second
            Cryptohistory.update(cryptocurrency_id: id, date: date, usd_value: price)
        end
        puts "datos agregados"
    end
end
#Cryptocurrency History functions
namespace :btc_history do
    desc ''
    task :demo => :environment do
        json=Hashie::Mash.new(Cryptocompare::HistoHour.find('BTC', 'USD'))
        id=Cryptocurrency.find_by(name: "Bitcoin").id
        relacion = Cryptohistory.find_by(cryptocurrency_id: id)
        json.Data.each do |t|
            date=Time.at(t.time)
            cierre=t.close
            alto=alto=t.high
            bajo=bajo=t.low
            abrio=t.open
            avg=(alto+bajo)/2
            relacion.update(date: date, open: abrio, close: cierre, high: alto, low: bajo, avg: avg)
        end
        puts "Hecho!!"
    end
end
namespace :eth_history do
    desc ''
    task :demo => :environment do
        json=Hashie::Mash.new(Cryptocompare::HistoHour.find('ETH', 'USD'))
        id=Cryptocurrency.find_by(name: "Ethereum").id
        relacion = Cryptohistory.find_by(cryptocurrency_id: id)
        json.Data.each do |t|
            date=Time.at(t.time)
            cierre=t.close
            alto=alto=t.high
            bajo=bajo=t.low
            abrio=t.open
            avg=(alto+bajo)/2
            relacion.update(date: date, open: abrio, close: cierre, high: alto, low: bajo, avg: avg)
        end
        puts "Hecho!!"
    end
end
namespace :xrp_history do
    desc ''
    task :demo => :environment do
        json=Hashie::Mash.new(Cryptocompare::HistoHour.find('XRP', 'USD'))
        id=Cryptocurrency.find_by(name: "Ripple").id
        relacion = Cryptohistory.find_by(cryptocurrency_id: id)
        json.Data.each do |t|
            date=Time.at(t.time)
            cierre=t.close
            alto=alto=t.high
            bajo=bajo=t.low
            abrio=t.open
            avg=(alto+bajo)/2
            relacion.update(date: date, open: abrio, close: cierre, high: alto, low: bajo, avg: avg)
        end
        puts "Hecho!!"
    end
end
namespace :bch_history do
    desc ''
    task :demo => :environment do
        json=Hashie::Mash.new(Cryptocompare::HistoHour.find('BCH', 'USD'))
        id=Cryptocurrency.find_by(name: "Bitcoin Cash / BCC").id
        relacion = Cryptohistory.find_by(cryptocurrency_id: id)
        json.Data.each do |t|
            date=Time.at(t.time)
            cierre=t.close
            alto=alto=t.high
            bajo=bajo=t.low
            abrio=t.open
            avg=(alto+bajo)/2
            relacion.update(date: date, open: abrio, close: cierre, high: alto, low: bajo, avg: avg)
        end
        puts "Hecho!!"
    end
end
namespace :ada_history do
    desc ''
    task :demo => :environment do
        json=Hashie::Mash.new(Cryptocompare::HistoHour.find('ADA', 'USD'))
        id=Cryptocurrency.find_by(name: "Cardano").id
        relacion = Cryptohistory.find_by(cryptocurrency_id: id)
        json.Data.each do |t|
            date=Time.at(t.time)
            cierre=t.close
            alto=alto=t.high
            bajo=bajo=t.low
            abrio=t.open
            avg=(alto+bajo)/2
            relacion.update(date: date, open: abrio, close: cierre, high: alto, low: bajo, avg: avg)
        end
        puts "Hecho!!"
    end
end
namespace :xlm_history do
    desc ''
    task :demo => :environment do
        json=Hashie::Mash.new(Cryptocompare::HistoHour.find('XLM', 'USD'))
        id=Cryptocurrency.find_by(name: "Stellar").id
        relacion = Cryptohistory.find_by(cryptocurrency_id: id)
        json.Data.each do |t|
            date=Time.at(t.time)
            cierre=t.close
            alto=alto=t.high
            bajo=bajo=t.low
            abrio=t.open
            avg=(alto+bajo)/2
            relacion.update(date: date, open: abrio, close: cierre, high: alto, low: bajo, avg: avg)
        end
        puts "Hecho!!"
    end
end
namespace :neo_history do
    desc ''
    task :demo => :environment do
        json=Hashie::Mash.new(Cryptocompare::HistoHour.find('NEO', 'USD'))
        id=Cryptocurrency.find_by(name: "NEO").id
        relacion = Cryptohistory.find_by(cryptocurrency_id: id)
        json.Data.each do |t|
            date=Time.at(t.time)
            cierre=t.close
            alto=alto=t.high
            bajo=bajo=t.low
            abrio=t.open
            avg=(alto+bajo)/2
            relacion.update(date: date, open: abrio, close: cierre, high: alto, low: bajo, avg: avg)
        end
        puts "Hecho!!"
    end
end
namespace :ltc_history do
    desc ''
    task :demo => :environment do
        json=Hashie::Mash.new(Cryptocompare::HistoHour.find('LTC', 'USD'))
        id=Cryptocurrency.find_by(name: "Litecoin").id
        relacion = Cryptohistory.find_by(cryptocurrency_id: id)
        json.Data.each do |t|
            date=Time.at(t.time)
            cierre=t.close
            alto=alto=t.high
            bajo=bajo=t.low
            abrio=t.open
            avg=(alto+bajo)/2
            relacion.update(date: date, open: abrio, close: cierre, high: alto, low: bajo, avg: avg)
        end
        puts "Hecho!!"
    end
end
namespace :eos_history do
    desc ''
    task :demo => :environment do
        json=Hashie::Mash.new(Cryptocompare::HistoHour.find('EOS', 'USD'))
        id=Cryptocurrency.find_by(name: "EOS").id
        relacion = Cryptohistory.find_by(cryptocurrency_id: id)
        json.Data.each do |t|
            date=Time.at(t.time)
            cierre=t.close
            alto=alto=t.high
            bajo=bajo=t.low
            abrio=t.open
            avg=(alto+bajo)/2
            relacion.update(date: date, open: abrio, close: cierre, high: alto, low: bajo, avg: avg)
        end
        puts "Hecho!!"
    end
end
namespace :nem_history do
    desc ''
    task :demo => :environment do
        json=Hashie::Mash.new(Cryptocompare::HistoHour.find('XEM', 'USD'))
        id=Cryptocurrency.find_by(name: "NEM").id
        relacion = Cryptohistory.find_by(cryptocurrency_id: id)
        json.Data.each do |t|
            date=Time.at(t.time)
            cierre=t.close
            alto=alto=t.high
            bajo=bajo=t.low
            abrio=t.open
            avg=(alto+bajo)/2
            relacion.update(date: date, open: abrio, close: cierre, high: alto, low: bajo, avg: avg)
        end
        puts "Hecho!!"
    end
end