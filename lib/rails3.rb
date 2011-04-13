require 'active_support/concern'
require 'active_model'

module ValidatesAsUKPostcode

  module Rails3
    extend ActiveSupport::Concern

    class PostcodeValidator < ActiveModel::EachValidator
      def validate_each(object, attribute, value)
        object.errors.add(attribute, "is an invalid UK postcode") unless value =~ Postcodes::UK
      end
    end
  end

end
