require 'active_record'

module Middleman
  class ActiveRecordExtension < Extension
    option :database_config, 'db/config.yml', 'The location of the YAML database configuration.'
    option :database_environment, :development, 'The database environment to use.'

    def initialize(app, options_hash = {}, &block)
      super

      ActiveRecord::Base.configurations = YAML.load(File.read(options[:database_config]))
      ActiveRecord::Base.establish_connection(options[:database_environment].to_sym)
    end
  end
end
