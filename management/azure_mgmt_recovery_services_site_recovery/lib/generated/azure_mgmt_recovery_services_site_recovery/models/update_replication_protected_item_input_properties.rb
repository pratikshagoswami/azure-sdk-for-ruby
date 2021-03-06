# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Update protected item input properties.
    #
    class UpdateReplicationProtectedItemInputProperties

      include MsRestAzure

      # @return [String] Target azure VM name given by the user.
      attr_accessor :recovery_azure_vmname

      # @return [String] Target Azure Vm size.
      attr_accessor :recovery_azure_vmsize

      # @return [String] Target Azure Network Id.
      attr_accessor :selected_recovery_azure_network_id

      # @return [String] The selected option to enable RDP\SSH on target vm
      # after failover. String value of
      # {SrsDataContract.EnableRDPOnTargetOption} enum.
      attr_accessor :enable_rdpon_target_option

      # @return [Array<VMNicInputDetails>] The list of vm nic details.
      attr_accessor :vm_nics

      # @return [LicenseType] License type. Possible values include:
      # 'NotSpecified', 'NoLicenseType', 'WindowsServer'
      attr_accessor :license_type

      # @return [String] The target availability set id.
      attr_accessor :recovery_availability_set_id

      # @return [UpdateReplicationProtectedItemProviderInput] The provider
      # specific input to update replication protected item.
      attr_accessor :provider_specific_details


      #
      # Mapper for UpdateReplicationProtectedItemInputProperties class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateReplicationProtectedItemInputProperties',
          type: {
            name: 'Composite',
            class_name: 'UpdateReplicationProtectedItemInputProperties',
            model_properties: {
              recovery_azure_vmname: {
                required: false,
                serialized_name: 'recoveryAzureVMName',
                type: {
                  name: 'String'
                }
              },
              recovery_azure_vmsize: {
                required: false,
                serialized_name: 'recoveryAzureVMSize',
                type: {
                  name: 'String'
                }
              },
              selected_recovery_azure_network_id: {
                required: false,
                serialized_name: 'selectedRecoveryAzureNetworkId',
                type: {
                  name: 'String'
                }
              },
              enable_rdpon_target_option: {
                required: false,
                serialized_name: 'enableRDPOnTargetOption',
                type: {
                  name: 'String'
                }
              },
              vm_nics: {
                required: false,
                serialized_name: 'vmNics',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VMNicInputDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VMNicInputDetails'
                      }
                  }
                }
              },
              license_type: {
                required: false,
                serialized_name: 'licenseType',
                type: {
                  name: 'Enum',
                  module: 'LicenseType'
                }
              },
              recovery_availability_set_id: {
                required: false,
                serialized_name: 'recoveryAvailabilitySetId',
                type: {
                  name: 'String'
                }
              },
              provider_specific_details: {
                required: false,
                serialized_name: 'providerSpecificDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'UpdateReplicationProtectedItemProviderInput',
                  class_name: 'UpdateReplicationProtectedItemProviderInput'
                }
              }
            }
          }
        }
      end
    end
  end
end
