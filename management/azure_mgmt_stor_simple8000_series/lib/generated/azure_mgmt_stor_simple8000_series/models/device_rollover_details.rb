# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series
  module Models
    #
    # The additional device details for the service data encryption key
    # rollover.
    #
    class DeviceRolloverDetails

      include MsRestAzure

      # @return [AuthorizationEligibility] The eligibility status of device for
      # service data encryption key rollover. Possible values include:
      # 'InEligible', 'Eligible'
      attr_accessor :authorization_eligibility

      # @return [AuthorizationStatus] The authorization status of the device
      # for service data encryption key rollover. Possible values include:
      # 'Disabled', 'Enabled'
      attr_accessor :authorization_status

      # @return [InEligibilityCategory] The reason for inEligibility of device,
      # in case it's not eligible for service data encryption key rollover.
      # Possible values include: 'DeviceNotOnline', 'NotSupportedAppliance',
      # 'RolloverPending'
      attr_accessor :in_eligibility_reason


      #
      # Mapper for DeviceRolloverDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeviceRolloverDetails',
          type: {
            name: 'Composite',
            class_name: 'DeviceRolloverDetails',
            model_properties: {
              authorization_eligibility: {
                required: false,
                serialized_name: 'authorizationEligibility',
                type: {
                  name: 'Enum',
                  module: 'AuthorizationEligibility'
                }
              },
              authorization_status: {
                required: false,
                serialized_name: 'authorizationStatus',
                type: {
                  name: 'Enum',
                  module: 'AuthorizationStatus'
                }
              },
              in_eligibility_reason: {
                required: false,
                serialized_name: 'inEligibilityReason',
                type: {
                  name: 'Enum',
                  module: 'InEligibilityCategory'
                }
              }
            }
          }
        }
      end
    end
  end
end
