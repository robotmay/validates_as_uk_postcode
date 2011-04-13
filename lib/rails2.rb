module ValidatesAsUKPostcode

  module Rails2

    def validates_as_uk_postcode(*attr_names)
      configuration = {
        :message   => 'is an invalid uk postcode',
        :with      => Postcodes::UK,
        :allow_nil => true }
      configuration.update(attr_names.pop) if attr_names.last.is_a?(Hash)

      validates_format_of attr_names, configuration
    end

  end
end
