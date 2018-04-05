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
#set :output, 'log/whenever.log'
#every 1.minute do
#    rake "price:demo", environment => "development"
#end
set :output, 'log/whenever2.log'
every 5.minute do
    rake "eth:demo", environment => "development"
end

set :output, 'log/news.log'
every 8.hours do
    rake "news:demo", environment => "development"
end
#Comando para actualizar la cron tab: whenever -w --set environment=development
#Agregar environment => "development" al rake task in schedule.rb
# Learn more: http://github.com/javan/whenever
