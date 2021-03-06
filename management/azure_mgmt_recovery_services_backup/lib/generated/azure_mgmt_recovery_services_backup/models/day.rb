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
    # Day of the week.
    #
    class Day

      include MsRestAzure

      # @return [Integer] Date of the month
      attr_accessor :date

      # @return [Boolean] Whether Date is last date of month
      attr_accessor :is_last


      #
      # Mapper for Day class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Day',
          type: {
            name: 'Composite',
            class_name: 'Day',
            model_properties: {
              date: {
                required: false,
                serialized_name: 'date',
                type: {
                  name: 'Number'
                }
              },
              is_last: {
                required: false,
                serialized_name: 'isLast',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
