# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Recovery plan planned failover input properties.
    #
    class RecoveryPlanPlannedFailoverInputProperties

      include MsRestAzure

      # @return [PossibleOperationsDirections] The failover direction. Possible
      # values include: 'PrimaryToRecovery', 'RecoveryToPrimary'
      attr_accessor :failover_direction

      # @return [Array<RecoveryPlanProviderSpecificFailoverInput>] The provider
      # specific properties.
      attr_accessor :provider_specific_details


      #
      # Mapper for RecoveryPlanPlannedFailoverInputProperties class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecoveryPlanPlannedFailoverInputProperties',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanPlannedFailoverInputProperties',
            model_properties: {
              failover_direction: {
                required: true,
                serialized_name: 'failoverDirection',
                type: {
                  name: 'Enum',
                  module: 'PossibleOperationsDirections'
                }
              },
              provider_specific_details: {
                required: false,
                serialized_name: 'providerSpecificDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecoveryPlanProviderSpecificFailoverInputElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'instanceType',
                        uber_parent: 'RecoveryPlanProviderSpecificFailoverInput',
                        class_name: 'RecoveryPlanProviderSpecificFailoverInput'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
