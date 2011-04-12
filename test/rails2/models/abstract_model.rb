class AbstractModel < ActiveRecord::Base

  validates_as_uk_postcode :postcode

end
