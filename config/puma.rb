# threads 8, 8
# workers 1

# on_worker_boot do
#   require "active_record"
#   cwd = File.dirname(__FILE__)+"/.."
#   ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
#   ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"] || YAML.load_file("#{cwd}/config/database.yml")[ENV["RAILS_ENV"]])
# end