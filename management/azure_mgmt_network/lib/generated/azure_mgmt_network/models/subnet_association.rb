# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Network interface and its custom security rules.
    #
    class SubnetAssociation

      include MsRestAzure

      # @return [String] Subnet ID.
      attr_accessor :id

      # @return [Array<SecurityRule>] Collection of custom security rules.
      attr_accessor :security_rules


      #
      # Mapper for SubnetAssociation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SubnetAssociation',
          type: {
            name: 'Composite',
            class_name: 'SubnetAssociation',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              security_rules: {
                required: false,
                serialized_name: 'securityRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SecurityRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SecurityRule'
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
