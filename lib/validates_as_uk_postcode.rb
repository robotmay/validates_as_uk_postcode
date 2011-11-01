module ValidatesAsUKPostcode
  module Postcodes
    UK = begin
      patterns = {
        :an_naa_or_ann_naa   => '^[A-PR-UWYZ]{1}\d{1,2}\s?\d[ABD-HJLNP-UWXYZ]{2}$',
        :aan_naa_or_aann_naa => '^[A-PR-UWYZ]{1}[A-HK-Y]{1}\d{1,2}\s?\d[ABD-HJLNP-UWXYZ]{2}$',
        :ana_naa             => '^[A-PR-UWYZ]{1}\d[A-HJKSTUW]{1}\s?\d[ABD-HJLNP-UWXYZ]{2}$',
        :aana_naa            => '^[A-PR-UWYZ]{1}[A-HK-Y]{1}\d[ABEHMNPRVWXY]{1}\s?\d[ABD-HJLNP-UWXYZ]{2}$',
        :historic_code       => '^(gir)(0aa)$',
        :bfpo                => '^(bfpo)([0-9]{1,4})$',
        :bfpo_co             => '^(bfpo)(c\/o[0-9]{1,3})$'
      }
      values = patterns.collect{|k,v| v}
      pattern = /#{values.join "|"}/i
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
