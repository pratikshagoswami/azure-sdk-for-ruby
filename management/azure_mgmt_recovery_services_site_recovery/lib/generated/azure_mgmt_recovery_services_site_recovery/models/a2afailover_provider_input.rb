# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # A2A provider specific input for failover.
    #
    class A2AFailoverProviderInput < ProviderSpecificFailoverInput

      include MsRestAzure


      def initialize
        @instanceType = "A2A"
      end

      attr_accessor :instanceType

      # @return [String] The recovery point id to be passed to failover to a
      # particular recovery point. In case of latest recovery point, null
      # should be passed.
      attr_accessor :recovery_point_id

      # @return [String] A value indicating whether to use recovery cloud
      # service for TFO or not.
      attr_accessor :cloud_service_creation_option


      #
      # Mapper for A2AFailoverProviderInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'A2A',
          type: {
            name: 'Composite',
            class_name: 'A2AFailoverProviderInput',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_id: {
                required: false,
                serialized_name: 'recoveryPointId',
                type: {
                  name: 'String'
                }
              },
              cloud_service_creation_option: {
                required: false,
                serialized_name: 'cloudServiceCreationOption',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
