# frozen_string_literal: true

# #Namf_Communication
#
# AMF Communication Service © 2019, 3GPP Organizational Partners (ARIB, ATIS, CCSA, ETSI, TSDSI, TTA, TTC). All rights reserved.
#
# The version of the OpenAPI document: 1.0.2
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 7.1.0-SNAPSHOT
#

require 'date'
require 'time'

module OpenapiClient
  module KeyAmfType
    class << self
      # List of class defined in anyOf (OpenAPI v3)
      def openapi_any_of
        [
          :String
        ]
      end

      # Builds the object
      # @param [Mixed] Data to be matched against the list of anyOf items
      # @return [Object] Returns the model or the data itself
      def build(data)
        # Go through the list of anyOf items and attempt to identify the appropriate one.
        # Note:
        # - No advanced validation of types in some cases (e.g. "x: { type: string }" will happily match { x: 123 })
        #   due to the way the deserialization is made in the base_object template (it just casts without verifying).
        # - TODO: scalar values are de facto behaving as if they were nullable.
        # - TODO: logging when debugging is set.
        openapi_any_of.each do |klass|
          next if klass == :AnyType # "nullable: true"

          typed_data = find_and_cast_into_type(klass, data)
          return typed_data if typed_data
        rescue StandardError # rescue all errors so we keep iterating even if the current item lookup raises
        end

        openapi_any_of.include?(:AnyType) ? data : nil
      end

      private

      SchemaMismatchError = Class.new(StandardError)

      # NOTE: 'File' is missing here because in the regular case we get the data _after_ a call to JSON.parse.
      def find_and_cast_into_type(klass, data)
        return if data.nil?

        case klass.to_s
        when 'Boolean'
          return data if data.instance_of?(TrueClass) || data.instance_of?(FalseClass)
        when 'Float'
          return data if data.instance_of?(Float)
        when 'Integer'
          return data if data.instance_of?(Integer)
        when 'Time'
          return Time.parse(data)
        when 'Date'
          return Date.parse(data)
        when 'String'
          return data if data.instance_of?(String)
        when 'Object' # "type: object"
          return data if data.instance_of?(Hash)
        when /\AArray<(?<sub_type>.+)>\z/ # "type: array"
          if data.instance_of?(Array)
            sub_type = Regexp.last_match[:sub_type]
            return data.map { |item| find_and_cast_into_type(sub_type, item) }
          end
        when /\AHash<String, (?<sub_type>.+)>\z/ # "type: object" with "additionalProperties: { ... }"
          if data.instance_of?(Hash) && data.keys.all? { |k| k.instance_of?(Symbol) || k.instance_of?(String) }
            sub_type = Regexp.last_match[:sub_type]
            return data.transform_values { |v| find_and_cast_into_type(sub_type, v) }
          end
        else # model
          const = OpenapiClient.const_get(klass)
          if const
            if const.respond_to?(:openapi_any_of) # nested anyOf model
              model = const.build(data)
            else
              # raise if data contains keys that are not known to the model
              raise unless (data.keys - const.acceptable_attributes).empty?

              model = const.build_from_hash(data)
            end
            return model if model
          end
        end

        raise # if no match by now, raise
      rescue StandardError
        raise SchemaMismatchError, "#{data} doesn't match the #{klass} type"
      end
    end
  end
end
