class CryptohistoriesController < ApplicationController
  def index
    #Muestra cada 5 min
    #response = HTTParty.get('http://coincap.io/history/1day/LTC')
    #response.parsed_response
    #@obj=Hashie::Mash.new(response)
    #@obj.price.each do |t|
    #  id =Cryptocurrency.find_by(name: "Bitcoin").id
    #  numero: t.first
    #  Fecha : date=DateTime.strptime(t.first.to_s,'%Q')
    #  Precio: price=t.second 
    #end
    #@json=Hashie::Mash.new(Cryptocompare::HistoHour.find('BTC', 'USD'))
    #addCryptohistory()
    #updateCryptohistory()
    
  end

  def addCryptohistory()
    json=Hashie::Mash.new(Cryptocompare::HistoHour.find('XEM', 'USD'))
    id=Cryptocurrency.find_by(name: "NEM").id
    json.Data.each do |t|
      date=Time.at(t.time)
      cierre=t.close
      alto=alto=t.high
      bajo=bajo=t.low
      abrio=t.open
      avg=(alto+bajo)/2
      Cryptohistory.create(cryptocurrency_id: id, date: date, open: abrio, close: cierre, high: alto, low: bajo, avg: avg)
    end
  end

  def updateCryptohistory()
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
  end


end
