require "validates_presence_of_boolean/version"

require 'active_model/validator'
require 'active_model/validations'

require 'active_support/concern'

module ValidatesPresenceOfBoolean
  extend ActiveSupport::Concern

  class NotNilValidator < ActiveModel::EachValidator
    def validate_each(object, attribute, value)
      if value.nil?
        object.errors.add(attribute, options.fetch(:message, :blank))
      end
    end
  end

  module ClassMethods
    def validates_presence_of_boolean(*attr_names)
      validates_with NotNilValidator, _merge_attributes(attr_names)
    end
  end
end

ActiveModel::Validations.send(:include, ValidatesPresenceOfBoolean)
