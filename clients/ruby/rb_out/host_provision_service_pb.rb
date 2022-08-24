# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: host_provision_service.proto

require 'google/protobuf'

require 'common_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("host_provision_service.proto", :syntax => :proto3) do
    add_message "blockjoy.api.ui_v1.GetHostProvisionRequest" do
      optional :meta, :message, 1, "blockjoy.api.ui_v1.RequestMeta"
      optional :id, :message, 2, "blockjoy.api.ui_v1.Uuid"
    end
    add_message "blockjoy.api.ui_v1.GetHostProvisionResponse" do
      optional :meta, :message, 1, "blockjoy.api.ui_v1.ResponseMeta"
      optional :host_provision, :message, 2, "blockjoy.api.ui_v1.HostProvision"
    end
    add_message "blockjoy.api.ui_v1.CreateHostProvisionRequest" do
      optional :meta, :message, 1, "blockjoy.api.ui_v1.RequestMeta"
      optional :host_provision, :message, 2, "blockjoy.api.ui_v1.HostProvision"
    end
    add_message "blockjoy.api.ui_v1.CreateHostProvisionResponse" do
      optional :meta, :message, 1, "blockjoy.api.ui_v1.ResponseMeta"
    end
  end
end

module Blockjoy
  module Api
    module UiV1
      GetHostProvisionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("blockjoy.api.ui_v1.GetHostProvisionRequest").msgclass
      GetHostProvisionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("blockjoy.api.ui_v1.GetHostProvisionResponse").msgclass
      CreateHostProvisionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("blockjoy.api.ui_v1.CreateHostProvisionRequest").msgclass
      CreateHostProvisionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("blockjoy.api.ui_v1.CreateHostProvisionResponse").msgclass
    end
  end
end
