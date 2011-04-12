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

require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'rails3.rb')

ActiveRecord::Base.send(:include,  ValidatesAsUKPostcode::Rails3)

autoload :AbstractModel, File.join(File.dirname(__FILE__), 'models', 'abstract_model.rb')