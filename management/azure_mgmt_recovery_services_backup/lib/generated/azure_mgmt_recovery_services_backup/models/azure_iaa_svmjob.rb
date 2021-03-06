# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.22.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Azure IaaS VM workload-specifc job object.
    #
    class AzureIaaSVMJob < Job

      include MsRestAzure


      def initialize
        @jobType = "AzureIaaSVMJob"
      end

      attr_accessor :jobType

      # @return [Duration] Time elapsed during the execution of this job.
      attr_accessor :duration

      # @return [Array<JobSupportedAction>] Gets or sets the state/actions
      # applicable on this job like cancel/retry.
      attr_accessor :actions_info

      # @return [Array<AzureIaaSVMErrorInfo>] Error details on execution of
      # this job.
      attr_accessor :error_details

      # @return [String] Specifies whether the backup item is a Classic or an
      # Azure Resource Manager VM.
      attr_accessor :virtual_machine_version

      # @return [AzureIaaSVMJobExtendedInfo] Additional information for this
      # job.
      attr_accessor :extended_info


      #
      # Mapper for AzureIaaSVMJob class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureIaaSVMJob',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSVMJob',
            model_properties: {
              entity_friendly_name: {
                required: false,
                serialized_name: 'entityFriendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              operation: {
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              activity_id: {
                required: false,
                serialized_name: 'activityId',
                type: {
                  name: 'String'
                }
              },
              jobType: {
                required: true,
                serialized_name: 'jobType',
                type: {
                  name: 'String'
                }
              },
              duration: {
                required: false,
                serialized_name: 'duration',
                type: {
                  name: 'TimeSpan'
                }
              },
              actions_info: {
                required: false,
                serialized_name: 'actionsInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'JobSupportedActionElementType',
                      type: {
                        name: 'Enum',
                        module: 'JobSupportedAction'
                      }
                  }
                }
              },
              error_details: {
                required: false,
                serialized_name: 'errorDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AzureIaaSVMErrorInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureIaaSVMErrorInfo'
                      }
                  }
                }
              },
              virtual_machine_version: {
                required: false,
                serialized_name: 'virtualMachineVersion',
                type: {
                  name: 'String'
                }
              },
              extended_info: {
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'AzureIaaSVMJobExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
