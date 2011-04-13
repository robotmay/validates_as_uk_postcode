require 'rubygems'

gem 'rails', '2.3.11'

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
    MAJOR = 2
  end
end

require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'validates_as_uk_postcode.rb')

ActiveRecord::Base.send(:extend,  ValidatesAsUKPostcode::Rails2)

autoload :AbstractModel, File.join(File.dirname(__FILE__), 'models', 'abstract_model.rb')