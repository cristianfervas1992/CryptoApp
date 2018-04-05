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

namespace :eth do
    desc "Tarea que permite obtener y almacenar el valor de ETH en todos los mercados en USD"
    task :demo => :environment do
        moneda = Cryptocurrency.find_by(name: "Ethereum")
        mercados = moneda.exchanges.each do |t|
            valor=Hashie::Mash.new(Cryptocompare::Price.find(['ETH'], ['USD'], {'e' => t.name}))
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

namespace :news do
    desc "Tarea que permite obtener y almacenar noticias"
    task :demo => :environment do
        news = Cryptocompare::News.all
        puts "Revisando noticia"
        noticias = news.map{|t|
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