module ValidatesAsUKPostcode
  module Postcodes
    UK = begin    
      patterns = [
        '^[A-PR-UWYZ]{1}\d{1,2}\s?\d[ABD-HJLNP-UWXYZ]{2}$', # AN NAA or ANN NAA
        '^[A-PR-UWYZ]{1}[A-HK-Y]{1}\d{1,2}\s?\d[ABD-HJLNP-UWXYZ]{2}$', # AAN NAA or AANN NAA
        '^[A-PR-UWYZ]{1}\d[A-HJKSTUW]{1}\s?\d[ABD-HJLNP-UWXYZ]{2}$', # ANA NAA
        '^[A-PR-UWYZ]{1}[A-HK-Y]{1}\d[ABEHMNPRVWXY]{1}\s?\d[ABD-HJLNP-UWXYZ]{2}$', # AANA NAA
        '^(gir)(0aa)$', # GIR 0AA
        '^(san)(ta1)$', # SAN TA1
        '^(bfpo)([0-9]{1,4})$', # BFPO (British Forces Post Office)
        '^(bfpo)(c\/o[0-9]{1,3})$' # BFPO c/o
      ]
      
      pattern = /#{patterns.join "|"}/i
    end
  end
end

if Rails::VERSION::MAJOR >= 3
  require 'rails3'
  ActiveRecord::Base.send(:include, ValidatesAsUKPostcode::Rails3)
else
  require 'rails2'
  ActiveRecord::Base.send(:extend,  ValidatesAsUKPostcode::Rails2)
end
