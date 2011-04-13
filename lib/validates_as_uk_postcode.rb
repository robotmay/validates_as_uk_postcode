module ValidatesAsUKPostcode
  module Postcodes
    UK = begin    
      an_naa_or_ann_naa   = '^[A-PR-UWYZ]{1}\d{1,2}\s?\d[ABD-HJLNP-UWXYZ]{2}$'
      aan_naa_or_aann_naa = '^[A-PR-UWYZ]{1}[A-HK-Y]{1}\d{1,2}\s?\d[ABD-HJLNP-UWXYZ]{2}$'
      ana_naa             = '^[A-PR-UWYZ]{1}\d[A-HJKSTUW]{1}\s?\d[ABD-HJLNP-UWXYZ]{2}$'
      aana_naa            = '^[A-PR-UWYZ]{1}[A-HK-Y]{1}\d[ABEHMNPRVWXY]{1}\s?\d[ABD-HJLNP-UWXYZ]{2}$'
      historic_code="GIR\s?0AA"
      postcode_spec = "#{an_naa_or_ann_naa}|#{aan_naa_or_aann_naa}|#{ana_naa}|#{aana_naa}|#{historic_code}"
      pattern = /#{postcode_spec}/i
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
