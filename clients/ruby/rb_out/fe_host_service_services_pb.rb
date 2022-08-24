# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: fe_host_service.proto for package 'blockjoy.api.ui_v1'

require 'grpc'
require 'fe_host_service_pb'

module Blockjoy
  module Api
    module UiV1
      module HostService
        # Manage hosts 
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'blockjoy.api.ui_v1.HostService'

          # Get host(s) by id, org_id or token or just every host 
          rpc :Get, ::Blockjoy::Api::UiV1::GetHostsRequest, ::Blockjoy::Api::UiV1::GetHostsResponse
          # Create a single host 
          rpc :Create, ::Blockjoy::Api::UiV1::CreateHostRequest, ::Blockjoy::Api::UiV1::CreateHostResponse
          # Update a single host 
          rpc :Update, ::Blockjoy::Api::UiV1::UpdateHostRequest, ::Blockjoy::Api::UiV1::UpdateHostResponse
          # Delete a single host 
          rpc :Delete, ::Blockjoy::Api::UiV1::DeleteHostRequest, ::Blockjoy::Api::UiV1::DeleteHostResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
