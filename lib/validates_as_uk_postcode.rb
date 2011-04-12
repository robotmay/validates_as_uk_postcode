if Rails::VERSION::MAJOR >= 3
  require 'rails3'
  ActiveRecord::Base.send(:include, ValidatesAsUKPostcode::Rails3)
else
  require 'rails2'
  ActiveRecord::Base.send(:extend,  ValidatesAsUKPostcode::Rails2)
end
