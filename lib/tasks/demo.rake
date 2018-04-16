namespace :price do
    desc "Tarea que permite obtener el precio de una moneda en distintos mercados que la posean"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Ethereum")
        moneda.exchanges.each do |t|
            puts t.name
            puts valor=Cryptocompare::Price.find('ETH', 'USD', {'e' => t.name})
            #precio=valor                
        end
    end
end
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
namespace :blk do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "BlackCoin")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['BLK'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['BLK'], ['BTC'], {'e' => t.name}))
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
namespace :pot do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "PotCoin")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['POT'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['POT'], ['BTC'], {'e' => t.name}))
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
namespace :xmr do
  desc 'Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD'
  task :demo => :environment do
      moneda = Cryptocurrency.find_by(name: 'Monero')
      moneda.exchanges.each do |t|
          valor=Hashie::Mash.new(Cryptocompare::Price.find(['XMR'], ['USD'], {'e' => t.name}))
          if !valor.respond_to? ('Response')    
            precio=valor.first.second.USD
            relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
            relacion.update(usd_value: precio)
            puts 'Guardado'
            puts t.name
            puts precio
          else
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['XMR'], ['BTC'], {'e' => t.name}))
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

namespace :doge do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Dogecoin")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['DOGE'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['DOGE'], ['BTC'], {'e' => t.name}))
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
namespace :nxt do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Nxt")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['NXT'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['NXT'], ['BTC'], {'e' => t.name}))
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

namespace :verge do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Verge")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['XVG'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['XVG'], ['BTC'], {'e' => t.name}))
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

namespace :gnt do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Golem Network Token")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['GNT'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['GNT'], ['BTC'], {'e' => t.name}))
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

namespace :ios do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "IOS token")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['IOST'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['IOST'], ['BTC'], {'e' => t.name}))
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

namespace :ont do
    desc "Tarea que permite obtener y almacenar el valor de BTC en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Ontology")
        moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['ONT'], ['USD'], {'e' => t.name}))
            if !valor.respond_to? ('Response')    
                precio=valor.first.second.USD
                relacion=Cryptoexchange.find_by(cryptocurrency_id: moneda.id, exchange_id: t.id)
                relacion.update(usd_value: precio)
                puts "Guardado"
                puts t.name
                puts precio
            else
                valor=Hashie::Mash.new(Cryptocompare::Price.find(['ONT'], ['BTC'], {'e' => t.name}))
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
                    published_on: noticia.published_on,
                    image_url: noticia.imageurl,
                    categories: noticia.categories,
                    tags: noticia.tags)
            end
        }
    end
end
