# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # Definition of the credential.
    #
    class Credential

      include MsRestAzure

      # @return [String] Gets the id of the resource.
      attr_accessor :id

      # @return [String] Gets the name of the credential.
      attr_accessor :name

      # @return [String] Gets the user name of the credential.
      attr_accessor :user_name

      # @return [DateTime] Gets the creation time.
      attr_accessor :creation_time

      # @return [DateTime] Gets the last modified time.
      attr_accessor :last_modified_time

      # @return [String] Gets or sets the description.
      attr_accessor :description


      #
      # Mapper for Credential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Credential',
          type: {
            name: 'Composite',
            class_name: 'Credential',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.userName',
                type: {
                  name: 'String'
                }
              },
              creation_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
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
