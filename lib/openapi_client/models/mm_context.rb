=begin
#Namf_Communication

#AMF Communication Service © 2019, 3GPP Organizational Partners (ARIB, ATIS, CCSA, ETSI, TSDSI, TTA, TTC). All rights reserved. 

The version of the OpenAPI document: 1.0.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'date'
require 'time'

module OpenapiClient
  class MmContext
    attr_accessor :access_type

    attr_accessor :nas_security_mode

    attr_accessor :nas_downlink_count

    attr_accessor :nas_uplink_count

    attr_accessor :ue_security_capability

    attr_accessor :s1_ue_network_capability

    attr_accessor :allowed_nssai

    attr_accessor :nssai_mapping_list

    attr_accessor :ns_instance_list

    attr_accessor :expected_u_ebehavior

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'access_type' => :'accessType',
        :'nas_security_mode' => :'nasSecurityMode',
        :'nas_downlink_count' => :'nasDownlinkCount',
        :'nas_uplink_count' => :'nasUplinkCount',
        :'ue_security_capability' => :'ueSecurityCapability',
        :'s1_ue_network_capability' => :'s1UeNetworkCapability',
        :'allowed_nssai' => :'allowedNssai',
        :'nssai_mapping_list' => :'nssaiMappingList',
        :'ns_instance_list' => :'nsInstanceList',
        :'expected_u_ebehavior' => :'expectedUEbehavior'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'access_type' => :'Object',
        :'nas_security_mode' => :'NasSecurityMode',
        :'nas_downlink_count' => :'Object',
        :'nas_uplink_count' => :'Object',
        :'ue_security_capability' => :'Object',
        :'s1_ue_network_capability' => :'Object',
        :'allowed_nssai' => :'Array<Object>',
        :'nssai_mapping_list' => :'Array<NssaiMapping>',
        :'ns_instance_list' => :'Array<Object>',
        :'expected_u_ebehavior' => :'ExpectedUeBehavior'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::MmContext` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::MmContext`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'access_type')
        self.access_type = attributes[:'access_type']
      else
        self.access_type = nil
      end

      if attributes.key?(:'nas_security_mode')
        self.nas_security_mode = attributes[:'nas_security_mode']
      end

      if attributes.key?(:'nas_downlink_count')
        self.nas_downlink_count = attributes[:'nas_downlink_count']
      end

      if attributes.key?(:'nas_uplink_count')
        self.nas_uplink_count = attributes[:'nas_uplink_count']
      end

      if attributes.key?(:'ue_security_capability')
        self.ue_security_capability = attributes[:'ue_security_capability']
      end

      if attributes.key?(:'s1_ue_network_capability')
        self.s1_ue_network_capability = attributes[:'s1_ue_network_capability']
      end

      if attributes.key?(:'allowed_nssai')
        if (value = attributes[:'allowed_nssai']).is_a?(Array)
          self.allowed_nssai = value
        end
      end

      if attributes.key?(:'nssai_mapping_list')
        if (value = attributes[:'nssai_mapping_list']).is_a?(Array)
          self.nssai_mapping_list = value
        end
      end

      if attributes.key?(:'ns_instance_list')
        if (value = attributes[:'ns_instance_list']).is_a?(Array)
          self.ns_instance_list = value
        end
      end

      if attributes.key?(:'expected_u_ebehavior')
        self.expected_u_ebehavior = attributes[:'expected_u_ebehavior']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @access_type.nil?
        invalid_properties.push('invalid value for "access_type", access_type cannot be nil.')
      end

      if !@allowed_nssai.nil? && @allowed_nssai.length < 1
        invalid_properties.push('invalid value for "allowed_nssai", number of items must be greater than or equal to 1.')
      end

      if !@nssai_mapping_list.nil? && @nssai_mapping_list.length < 1
        invalid_properties.push('invalid value for "nssai_mapping_list", number of items must be greater than or equal to 1.')
      end

      if !@ns_instance_list.nil? && @ns_instance_list.length < 1
        invalid_properties.push('invalid value for "ns_instance_list", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @access_type.nil?
      return false if !@allowed_nssai.nil? && @allowed_nssai.length < 1
      return false if !@nssai_mapping_list.nil? && @nssai_mapping_list.length < 1
      return false if !@ns_instance_list.nil? && @ns_instance_list.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] allowed_nssai Value to be assigned
    def allowed_nssai=(allowed_nssai)
      if allowed_nssai.nil?
        fail ArgumentError, 'allowed_nssai cannot be nil'
      end

      if allowed_nssai.length < 1
        fail ArgumentError, 'invalid value for "allowed_nssai", number of items must be greater than or equal to 1.'
      end

      @allowed_nssai = allowed_nssai
    end

    # Custom attribute writer method with validation
    # @param [Object] nssai_mapping_list Value to be assigned
    def nssai_mapping_list=(nssai_mapping_list)
      if nssai_mapping_list.nil?
        fail ArgumentError, 'nssai_mapping_list cannot be nil'
      end

      if nssai_mapping_list.length < 1
        fail ArgumentError, 'invalid value for "nssai_mapping_list", number of items must be greater than or equal to 1.'
      end

      @nssai_mapping_list = nssai_mapping_list
    end

    # Custom attribute writer method with validation
    # @param [Object] ns_instance_list Value to be assigned
    def ns_instance_list=(ns_instance_list)
      if ns_instance_list.nil?
        fail ArgumentError, 'ns_instance_list cannot be nil'
      end

      if ns_instance_list.length < 1
        fail ArgumentError, 'invalid value for "ns_instance_list", number of items must be greater than or equal to 1.'
      end

      @ns_instance_list = ns_instance_list
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          access_type == o.access_type &&
          nas_security_mode == o.nas_security_mode &&
          nas_downlink_count == o.nas_downlink_count &&
          nas_uplink_count == o.nas_uplink_count &&
          ue_security_capability == o.ue_security_capability &&
          s1_ue_network_capability == o.s1_ue_network_capability &&
          allowed_nssai == o.allowed_nssai &&
          nssai_mapping_list == o.nssai_mapping_list &&
          ns_instance_list == o.ns_instance_list &&
          expected_u_ebehavior == o.expected_u_ebehavior
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [access_type, nas_security_mode, nas_downlink_count, nas_uplink_count, ue_security_capability, s1_ue_network_capability, allowed_nssai, nssai_mapping_list, ns_instance_list, expected_u_ebehavior].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
