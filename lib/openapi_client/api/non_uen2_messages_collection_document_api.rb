=begin
#Namf_Communication

#AMF Communication Service © 2019, 3GPP Organizational Partners (ARIB, ATIS, CCSA, ETSI, TSDSI, TTA, TTC). All rights reserved. 

The version of the OpenAPI document: 1.0.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'cgi'

module OpenapiClient
  class NonUEN2MessagesCollectionDocumentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Namf_Communication Non UE N2 Message Transfer service Operation
    # @param n2_information_transfer_req_data [N2InformationTransferReqData] 
    # @param [Hash] opts the optional parameters
    # @return [N2InformationTransferRspData]
    def non_ue_n2_message_transfer(n2_information_transfer_req_data, opts = {})
      data, _status_code, _headers = non_ue_n2_message_transfer_with_http_info(n2_information_transfer_req_data, opts)
      data
    end

    # Namf_Communication Non UE N2 Message Transfer service Operation
    # @param n2_information_transfer_req_data [N2InformationTransferReqData] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(N2InformationTransferRspData, Integer, Hash)>] N2InformationTransferRspData data, response status code and response headers
    def non_ue_n2_message_transfer_with_http_info(n2_information_transfer_req_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NonUEN2MessagesCollectionDocumentApi.non_ue_n2_message_transfer ...'
      end
      # verify the required parameter 'n2_information_transfer_req_data' is set
      if @api_client.config.client_side_validation && n2_information_transfer_req_data.nil?
        fail ArgumentError, "Missing the required parameter 'n2_information_transfer_req_data' when calling NonUEN2MessagesCollectionDocumentApi.non_ue_n2_message_transfer"
      end
      # resource path
      local_var_path = '/non-ue-n2-messages/transfer'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'multipart/related'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(n2_information_transfer_req_data)

      # return_type
      return_type = opts[:debug_return_type] || 'N2InformationTransferRspData'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"NonUEN2MessagesCollectionDocumentApi.non_ue_n2_message_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NonUEN2MessagesCollectionDocumentApi#non_ue_n2_message_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
