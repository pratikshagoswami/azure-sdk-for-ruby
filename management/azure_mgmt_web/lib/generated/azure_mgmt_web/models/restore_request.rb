# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Description of a restore request.
    #
    class RestoreRequest < ProxyOnlyResource

      include MsRestAzure

      # @return [String] SAS URL to the container.
      attr_accessor :storage_account_url

      # @return [String] Name of a blob which contains the backup.
      attr_accessor :blob_name

      # @return [Boolean] <code>true</code> if the restore operation can
      # overwrite target app; otherwise, <code>false</code>. <code>true</code>
      # is needed if trying to restore over an existing app.
      attr_accessor :overwrite

      # @return [String] Name of an app.
      attr_accessor :site_name

      # @return [Array<DatabaseBackupSetting>] Collection of databases which
      # should be restored. This list has to match the list of databases
      # included in the backup.
      attr_accessor :databases

      # @return [Boolean] Changes a logic when restoring an app with custom
      # domains. <code>true</code> to remove custom domains automatically. If
      # <code>false</code>, custom domains are added to
      # the app's object when it is being restored, but that might fail due to
      # conflicts during the operation. Default value: false .
      attr_accessor :ignore_conflicting_host_names

      # @return [Boolean] Ignore the databases and only restore the site
      # content. Default value: false .
      attr_accessor :ignore_databases

      # @return [String] Specify app service plan that will own restored site.
      attr_accessor :app_service_plan

      # @return [BackupRestoreOperationType] Operation type. Possible values
      # include: 'Default', 'Clone', 'Relocation', 'Snapshot'. Default value:
      # 'Default' .
      attr_accessor :operation_type

      # @return [Boolean] <code>true</code> if SiteConfig.ConnectionStrings
      # should be set in new app; otherwise, <code>false</code>.
      attr_accessor :adjust_connection_strings

      # @return [String] App Service Environment name, if needed (only when
      # restoring an app to an App Service Environment).
      attr_accessor :hosting_environment


      #
      # Mapper for RestoreRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RestoreRequest',
          type: {
            name: 'Composite',
            class_name: 'RestoreRequest',
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
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              storage_account_url: {
                required: false,
                serialized_name: 'properties.storageAccountUrl',
                type: {
                  name: 'String'
                }
              },
              blob_name: {
                required: false,
                serialized_name: 'properties.blobName',
                type: {
                  name: 'String'
                }
              },
              overwrite: {
                required: false,
                serialized_name: 'properties.overwrite',
                type: {
                  name: 'Boolean'
                }
              },
              site_name: {
                required: false,
                serialized_name: 'properties.siteName',
                type: {
                  name: 'String'
                }
              },
              databases: {
                required: false,
                serialized_name: 'properties.databases',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DatabaseBackupSettingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DatabaseBackupSetting'
                      }
                  }
                }
              },
              ignore_conflicting_host_names: {
                required: false,
                serialized_name: 'properties.ignoreConflictingHostNames',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              ignore_databases: {
                required: false,
                serialized_name: 'properties.ignoreDatabases',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              app_service_plan: {
                required: false,
                serialized_name: 'properties.appServicePlan',
                type: {
                  name: 'String'
                }
              },
              operation_type: {
                required: false,
                serialized_name: 'properties.operationType',
                default_value: 'Default',
                type: {
                  name: 'Enum',
                  module: 'BackupRestoreOperationType'
                }
              },
              adjust_connection_strings: {
                required: false,
                serialized_name: 'properties.adjustConnectionStrings',
                type: {
                  name: 'Boolean'
                }
              },
              hosting_environment: {
                required: false,
                serialized_name: 'properties.hostingEnvironment',
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
