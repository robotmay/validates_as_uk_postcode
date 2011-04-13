require 'rubygems'

gem 'rails', '3.0.5'

require 'sqlite3'
require 'test/unit'
require 'active_record'
require 'active_record/base'

ActiveRecord::Migration.verbose = false
ActiveRecord::Base.establish_connection(
  "adapter" =>  "sqlite3",
  "database" => ":memory:"
)

module Rails
  module VERSION
    MAJOR = 3
  end
end

require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'validates_as_uk_postcode.rb')

autoload :AbstractModel, File.join(File.dirname(__FILE__), 'models', 'abstract_model.rb')