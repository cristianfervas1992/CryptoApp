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

set :output, 'log/eth.log'
every 2.minute do
  rake 'eth:demo', environment => 'development'
end
=begin
set :output, 'log/btc.log'
every 2.minute do
    rake "btc:demo", environment => "development"
end

set :output, 'log/ltc.log'
every 2.minute do
    rake "ltc:demo", environment => "development"
end

set :output, 'log/xrp.log'
every 2.minute do
    rake "xrp:demo", environment => "development"
end

set :output, 'log/xmr.log'
every 2.minute do
    rake "xmr:demo", environment => "development"
end

set :output, 'log/doge.log'
every 2.minute do
    rake "doge:demo", environment => "development"
end

set :output, 'log/nxt.log'
every 2.minute do
    rake "nxt:demo", environment => "development"
end

set :output, 'log/nem.log'
every 2.minute do
    rake "nem:demo", environment => "development"
end

set :output, 'log/blk.log'
every 2.minute do
    rake "blk:demo", environment => "development"
end

set :output, 'log/pot.log'
every 2.minute do
    rake "pot:demo", environment => "development"
end

set :output, 'log/verge.log'
every 2.minute do
    rake "verge:demo", environment => "development"
end

set :output, 'log/neo.log'
every 2.minute do
    rake "neo:demo", environment => "development"
end

set :output, 'log/gnt.log'
every 2.minute do
    rake "gnt:demo", environment => "development"
end

set :output, 'log/ios.log'
every 2.minute do
    rake "ios:demo", environment => "development"
end

set :output, 'log/ont.log'
every 2.minute do
    rake "ont:demo", environment => "development"
end
=end
set :output, 'log/news.log'
every 8.hours do
    rake "news:demo", environment => "development"
end
#Comando para actualizar la cron tab: whenever -w --set environment=development
#Agregar environment => "development" al rake task in schedule.rb
# Learn more: http://github.com/javan/whenever
