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
    # Filters to list the jobs.
    #
    class JobQueryObject

      include MsRestAzure

      # @return [JobStatus] Status of the job. Possible values include:
      # 'Invalid', 'InProgress', 'Completed', 'Failed',
      # 'CompletedWithWarnings', 'Cancelled', 'Cancelling'
      attr_accessor :status

      # @return [BackupManagementType] Type of backup managmenent for the job.
      # Possible values include: 'Invalid', 'AzureIaasVM', 'MAB', 'DPM',
      # 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type

      # @return [JobOperationType] Type of operation. Possible values include:
      # 'Invalid', 'Register', 'UnRegister', 'ConfigureBackup', 'Backup',
      # 'Restore', 'DisableBackup', 'DeleteBackupData'
      attr_accessor :operation

      # @return [String] JobID represents the job uniquely.
      attr_accessor :job_id

      # @return [DateTime] Job has started at this time. Value is in UTC.
      attr_accessor :start_time

      # @return [DateTime] Job has ended at this time. Value is in UTC.
      attr_accessor :end_time


      #
      # Mapper for JobQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobQueryObject',
          type: {
            name: 'Composite',
            class_name: 'JobQueryObject',
            model_properties: {
              status: {
                required: false,
                serialized_name: 'status',
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
              job_id: {
                required: false,
                serialized_name: 'jobId',
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
              }
            }
          }
        }
      end
    end
  end
end
