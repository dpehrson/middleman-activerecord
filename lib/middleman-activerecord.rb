# Require core library
require 'middleman-core'

::Middleman::Extensions.register(:activerecord) do
  require_relative 'middleman-activerecord/extension'
  ::Middleman::ActiveRecordExtension
end
