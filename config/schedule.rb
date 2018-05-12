# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end
#set :output, 'log/whenever.log'
#every 1.minute do
#    rake "prueba:demo"
#end
#--------------------------------------------------------------


# Cryptocurrency history

#1
set :output, 'log/btc_history.log'
every 1.hours, by_timezone: 'Santiago' do
    rake 'btc_history:demo', environment => 'development'
end

#2
set :output, 'log/eth_history.log'
every 1.hours, by_timezone: 'Santiago' do
    rake 'eth_history:demo', environment => 'development'
end

#3
set :output, 'log/eos_history.log'
every 1.hours, by_timezone: 'Santiago' do
    rake 'eos_history:demo', environment => 'development'
end

#4
set :output, 'log/nem_history.log'
every 1.hours, by_timezone: 'Santiago' do
    rake 'nem_history:demo', environment => 'development'
end

#5
set :output, 'log/xrp_history.log'
every 1.hours, by_timezone: 'Santiago' do
    rake 'xrp_history:demo', environment => 'development'
end

#6
set :output, 'log/bch_history.log'
every 1.hours, by_timezone: 'Santiago' do
    rake 'bch_history:demo', environment => 'development'
end

#7
set :output, 'log/ada_history.log'
every 1.hours, by_timezone: 'Santiago' do
    rake 'ada_history:demo', environment => 'development'
end

#8
set :output, 'log/neo_history.log'
every 1.hours, by_timezone: 'Santiago' do
    rake 'neo_history:demo', environment => 'development'
end

#9
set :output, 'log/ltc_history.log'
every 1.hours, by_timezone: 'Santiago' do
    rake 'ltc_history:demo', environment => 'development'
end

#10
set :output, 'log/xlm_history.log'
every 1.hours, by_timezone: 'Santiago' do
    rake 'xlm_history:demo', environment => 'development'
end

#NEWS
set :output, 'log/news.log'
every 8.hours, by_timezone: 'Santiago' do
    rake "news:demo", environment => "development"
end

#TOP TEN CRYPTOCURRENCIES
=begin
#1
set :output, 'log/btc.log'
every 2.minute, by_timezone: 'Santiago' do
    rake "btc:demo", environment => "development"
end

#2
set :output, 'log/eth.log'
every 2.minute do
  rake 'eth:demo', environment => 'development'
end

#3
set :output, 'log/ltc.log'
every 2.minute do
    rake "ltc:demo", environment => "development"
end

#4
set :output, 'log/xrp.log'
every 2.minute do
    rake "xrp:demo", environment => "development"
end

#5
set :output, 'log/nem.log'
every 2.minute do
    rake "nem:demo", environment => "development"
end

#6
set :output, 'log/neo.log'
every 2.minute do
    rake "neo:demo", environment => "development"
end

#7
set :output, 'log/ada.log'
every 2.minute do
    rake "ada:demo", environment => "development"
end

#8
set :output, 'log/bch.log'
every 2.minute do
    rake "bch:demo", environment => "development"
end

#9
set :output, 'log/xlm.log'
every 2.minute do
    rake "xlm:demo", environment => "development"
end

#10
set :output, 'log/eos.log'
every 2.minute do
    rake "eos:demo", environment => "development"
end


=end
#Comando para actualizar la cron tab: whenever -w --set environment=development
#Agregar environment => "development" al rake task in schedule.rb
# Learn more: http://github.com/javan/whenever
