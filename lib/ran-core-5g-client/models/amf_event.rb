# frozen_string_literal: true

# #Namf_EventExposure
#
# AMF Event Exposure Service.   © 2023, 3GPP Organizational Partners (ARIB, ATIS, CCSA, ETSI, TSDSI, TTA, TTC).   All rights reserved.
#
# The version of the OpenAPI document: 1.3.0-alpha.3
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 7.1.0-SNAPSHOT
#

require 'date'
require 'time'

module Core5g
  # Describes an event to be subscribed
  class AmfEvent
    attr_accessor :type, :immediate_flag, :area_list, :location_filter_list, :ref_id, :traffic_descriptor_list,
                  :report_ue_reachable, :reachability_filter, :udm_detect_ind, :max_reports, :target_area, :snssai_filter, :ue_in_area_filter, :idle_status_ind, :dispersion_area, :adjust_ao_ion_ra, :ran_timing_synchro_status_change

    # A map(list of key-value pairs) where praId serves as key.
    attr_accessor :presence_info_list

    # indicating a time in seconds.
    attr_accessor :max_response_time

    # indicating a time in seconds.
    attr_accessor :min_interval

    # string with format 'date-time' as defined in OpenAPI.
    attr_accessor :next_report

    # string with format 'date-time' as defined in OpenAPI.
    attr_accessor :next_periodic_report_time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        type: :type,
        immediate_flag: :immediateFlag,
        area_list: :areaList,
        location_filter_list: :locationFilterList,
        ref_id: :refId,
        traffic_descriptor_list: :trafficDescriptorList,
        report_ue_reachable: :reportUeReachable,
        reachability_filter: :reachabilityFilter,
        udm_detect_ind: :udmDetectInd,
        max_reports: :maxReports,
        presence_info_list: :presenceInfoList,
        max_response_time: :maxResponseTime,
        target_area: :targetArea,
        snssai_filter: :snssaiFilter,
        ue_in_area_filter: :ueInAreaFilter,
        min_interval: :minInterval,
        next_report: :nextReport,
        idle_status_ind: :idleStatusInd,
        dispersion_area: :dispersionArea,
        next_periodic_report_time: :nextPeriodicReportTime,
        adjust_ao_ion_ra: :adjustAoIOnRa,
        ran_timing_synchro_status_change: :ranTimingSynchroStatusChange
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        type: :AmfEventType,
        immediate_flag: :Boolean,
        area_list: :'Array<AmfEventArea>',
        location_filter_list: :'Array<LocationFilter>',
        ref_id: :Integer,
        traffic_descriptor_list: :'Array<TrafficDescriptor>',
        report_ue_reachable: :Boolean,
        reachability_filter: :ReachabilityFilter,
        udm_detect_ind: :Boolean,
        max_reports: :Integer,
        presence_info_list: :'Hash<String, PresenceInfo>',
        max_response_time: :Integer,
        target_area: :TargetArea,
        snssai_filter: :'Array<ExtSnssai>',
        ue_in_area_filter: :UeInAreaFilter,
        min_interval: :Integer,
        next_report: :Time,
        idle_status_ind: :Boolean,
        dispersion_area: :DispersionArea,
        next_periodic_report_time: :Time,
        adjust_ao_ion_ra: :Boolean,
        ran_timing_synchro_status_change: :Boolean
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError, 'The input argument (attributes) must be a hash in `Core5g::AmfEvent` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `Core5g::AmfEvent`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.type = (attributes[:type] if attributes.key?(:type))

      self.immediate_flag = if attributes.key?(:immediate_flag)
                              attributes[:immediate_flag]
                            else
                              false
                            end

      if attributes.key?(:area_list) && (value = attributes[:area_list]).is_a?(Array)
        self.area_list = value
      end

      if attributes.key?(:location_filter_list) && (value = attributes[:location_filter_list]).is_a?(Array)
        self.location_filter_list = value
      end

      self.ref_id = attributes[:ref_id] if attributes.key?(:ref_id)

      if attributes.key?(:traffic_descriptor_list) && (value = attributes[:traffic_descriptor_list]).is_a?(Array)
        self.traffic_descriptor_list = value
      end

      self.report_ue_reachable = if attributes.key?(:report_ue_reachable)
                                   attributes[:report_ue_reachable]
                                 else
                                   false
                                 end

      self.reachability_filter = attributes[:reachability_filter] if attributes.key?(:reachability_filter)

      self.udm_detect_ind = if attributes.key?(:udm_detect_ind)
                              attributes[:udm_detect_ind]
                            else
                              false
                            end

      self.max_reports = attributes[:max_reports] if attributes.key?(:max_reports)

      if attributes.key?(:presence_info_list) && (value = attributes[:presence_info_list]).is_a?(Hash)
        self.presence_info_list = value
      end

      self.max_response_time = attributes[:max_response_time] if attributes.key?(:max_response_time)

      self.target_area = attributes[:target_area] if attributes.key?(:target_area)

      if attributes.key?(:snssai_filter) && (value = attributes[:snssai_filter]).is_a?(Array)
        self.snssai_filter = value
      end

      self.ue_in_area_filter = attributes[:ue_in_area_filter] if attributes.key?(:ue_in_area_filter)

      self.min_interval = attributes[:min_interval] if attributes.key?(:min_interval)

      self.next_report = attributes[:next_report] if attributes.key?(:next_report)

      self.idle_status_ind = if attributes.key?(:idle_status_ind)
                               attributes[:idle_status_ind]
                             else
                               false
                             end

      self.dispersion_area = attributes[:dispersion_area] if attributes.key?(:dispersion_area)

      if attributes.key?(:next_periodic_report_time)
        self.next_periodic_report_time = attributes[:next_periodic_report_time]
      end

      self.adjust_ao_ion_ra = if attributes.key?(:adjust_ao_ion_ra)
                                attributes[:adjust_ao_ion_ra]
                              else
                                false
                              end

      self.ran_timing_synchro_status_change = if attributes.key?(:ran_timing_synchro_status_change)
                                                attributes[:ran_timing_synchro_status_change]
                                              else
                                                false
                                              end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = []
      invalid_properties.push('invalid value for "type", type cannot be nil.') if @type.nil?

      if !@area_list.nil? && @area_list.empty?
        invalid_properties.push('invalid value for "area_list", number of items must be greater than or equal to 1.')
      end

      if !@location_filter_list.nil? && @location_filter_list.empty?
        invalid_properties.push('invalid value for "location_filter_list", number of items must be greater than or equal to 1.')
      end

      if !@traffic_descriptor_list.nil? && @traffic_descriptor_list.empty?
        invalid_properties.push('invalid value for "traffic_descriptor_list", number of items must be greater than or equal to 1.')
      end

      if !@presence_info_list.nil? && @presence_info_list.empty?
        invalid_properties.push('invalid value for "presence_info_list", number of items must be greater than or equal to 1.')
      end

      if !@snssai_filter.nil? && @snssai_filter.empty?
        invalid_properties.push('invalid value for "snssai_filter", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @type.nil?
      return false if !@area_list.nil? && @area_list.empty?
      return false if !@location_filter_list.nil? && @location_filter_list.empty?
      return false if !@traffic_descriptor_list.nil? && @traffic_descriptor_list.empty?
      return false if !@presence_info_list.nil? && @presence_info_list.empty?
      return false if !@snssai_filter.nil? && @snssai_filter.empty?

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] area_list Value to be assigned
    def area_list=(area_list)
      raise ArgumentError, 'area_list cannot be nil' if area_list.nil?

      if area_list.empty?
        raise ArgumentError, 'invalid value for "area_list", number of items must be greater than or equal to 1.'
      end

      @area_list = area_list
    end

    # Custom attribute writer method with validation
    # @param [Object] location_filter_list Value to be assigned
    def location_filter_list=(location_filter_list)
      raise ArgumentError, 'location_filter_list cannot be nil' if location_filter_list.nil?

      if location_filter_list.empty?
        raise ArgumentError,
              'invalid value for "location_filter_list", number of items must be greater than or equal to 1.'
      end

      @location_filter_list = location_filter_list
    end

    # Custom attribute writer method with validation
    # @param [Object] traffic_descriptor_list Value to be assigned
    def traffic_descriptor_list=(traffic_descriptor_list)
      raise ArgumentError, 'traffic_descriptor_list cannot be nil' if traffic_descriptor_list.nil?

      if traffic_descriptor_list.empty?
        raise ArgumentError,
              'invalid value for "traffic_descriptor_list", number of items must be greater than or equal to 1.'
      end

      @traffic_descriptor_list = traffic_descriptor_list
    end

    # Custom attribute writer method with validation
    # @param [Object] presence_info_list Value to be assigned
    def presence_info_list=(presence_info_list)
      raise ArgumentError, 'presence_info_list cannot be nil' if presence_info_list.nil?

      if presence_info_list.empty?
        raise ArgumentError,
              'invalid value for "presence_info_list", number of items must be greater than or equal to 1.'
      end

      @presence_info_list = presence_info_list
    end

    # Custom attribute writer method with validation
    # @param [Object] snssai_filter Value to be assigned
    def snssai_filter=(snssai_filter)
      raise ArgumentError, 'snssai_filter cannot be nil' if snssai_filter.nil?

      if snssai_filter.empty?
        raise ArgumentError, 'invalid value for "snssai_filter", number of items must be greater than or equal to 1.'
      end

      @snssai_filter = snssai_filter
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        type == other.type &&
        immediate_flag == other.immediate_flag &&
        area_list == other.area_list &&
        location_filter_list == other.location_filter_list &&
        ref_id == other.ref_id &&
        traffic_descriptor_list == other.traffic_descriptor_list &&
        report_ue_reachable == other.report_ue_reachable &&
        reachability_filter == other.reachability_filter &&
        udm_detect_ind == other.udm_detect_ind &&
        max_reports == other.max_reports &&
        presence_info_list == other.presence_info_list &&
        max_response_time == other.max_response_time &&
        target_area == other.target_area &&
        snssai_filter == other.snssai_filter &&
        ue_in_area_filter == other.ue_in_area_filter &&
        min_interval == other.min_interval &&
        next_report == other.next_report &&
        idle_status_ind == other.idle_status_ind &&
        dispersion_area == other.dispersion_area &&
        next_periodic_report_time == other.next_periodic_report_time &&
        adjust_ao_ion_ra == other.adjust_ao_ion_ra &&
        ran_timing_synchro_status_change == other.ran_timing_synchro_status_change
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, immediate_flag, area_list, location_filter_list, ref_id, traffic_descriptor_list, report_ue_reachable,
       reachability_filter, udm_detect_ind, max_reports, presence_info_list, max_response_time, target_area, snssai_filter, ue_in_area_filter, min_interval, next_report, idle_status_ind, dispersion_area, next_periodic_report_time, adjust_ao_ion_ra, ran_timing_synchro_status_change].hash
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
          transformed_hash[key.to_s] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash[key.to_s] = attributes[attribute_map[key]].map do |v|
              _deserialize(::Regexp.last_match(1), v)
            end
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash[key.to_s] = _deserialize(type, attributes[attribute_map[key]])
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
        klass = Core5g.const_get(type)
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
        value = send(attr)
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
