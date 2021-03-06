# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Server response for GetMemberGroups API call.
    #
    class UserGetMemberGroupsResult

      include MsRestAzure

      # @return [Array<String>] A collection of group IDs of which the user is
      # a member.
      attr_accessor :value


      #
      # Mapper for UserGetMemberGroupsResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UserGetMemberGroupsResult',
          type: {
            name: 'Composite',
            class_name: 'UserGetMemberGroupsResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
