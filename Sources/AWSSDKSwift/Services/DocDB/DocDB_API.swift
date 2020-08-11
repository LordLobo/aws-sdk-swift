//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore

/**
Client object for interacting with AWS DocDB service.

Amazon DocumentDB API documentation
*/
public struct DocDB: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the DocDB client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.context = AWSServiceContext(
            region: region,
            partition: region?.partition ?? partition,
            service: "rds",
            serviceProtocol: .query,
            apiVersion: "2014-10-31",
            endpoint: endpoint,
            errorType: DocDBErrorType.self,
            timeout: timeout
        )
    }
    
    /// return new `DocDB` with new timeout value
    public func timingOut(after timeout: TimeAmount) -> Self {
        return .init(client: self.client, context: self.context.timingOut(after: timeout))
    }

    /// return new `DocDB` logging to specified Logger
    public func logging(to logger: Logger) -> Self {
        return .init(client: self.client, context: self.context.logging(to: logger))
    }
    
    //MARK: API Calls

    ///  Adds metadata tags to an Amazon DocumentDB resource. You can use these tags with cost allocation reporting to track costs that are associated with Amazon DocumentDB resources. or in a Condition statement in an AWS Identity and Access Management (IAM) policy for Amazon DocumentDB.
    @discardableResult public func addTagsToResource(_ input: AddTagsToResourceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "AddTagsToResource", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Applies a pending maintenance action to a resource (for example, to a DB instance).
    public func applyPendingMaintenanceAction(_ input: ApplyPendingMaintenanceActionMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyPendingMaintenanceActionResult> {
        return client.execute(operation: "ApplyPendingMaintenanceAction", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Copies the specified cluster parameter group.
    public func copyDBClusterParameterGroup(_ input: CopyDBClusterParameterGroupMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyDBClusterParameterGroupResult> {
        return client.execute(operation: "CopyDBClusterParameterGroup", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Copies a snapshot of a cluster. To copy a cluster snapshot from a shared manual cluster snapshot, SourceDBClusterSnapshotIdentifier must be the Amazon Resource Name (ARN) of the shared cluster snapshot. To cancel the copy operation after it is in progress, delete the target cluster snapshot identified by TargetDBClusterSnapshotIdentifier while that DB cluster snapshot is in the copying status.
    public func copyDBClusterSnapshot(_ input: CopyDBClusterSnapshotMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyDBClusterSnapshotResult> {
        return client.execute(operation: "CopyDBClusterSnapshot", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Creates a new Amazon DocumentDB cluster.
    public func createDBCluster(_ input: CreateDBClusterMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBClusterResult> {
        return client.execute(operation: "CreateDBCluster", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Creates a new cluster parameter group. Parameters in a cluster parameter group apply to all of the instances in a DB cluster. A cluster parameter group is initially created with the default parameters for the database engine used by instances in the cluster. To provide custom values for any of the parameters, you must modify the group after you create it. After you create a DB cluster parameter group, you must associate it with your cluster. For the new DB cluster parameter group and associated settings to take effect, you must then reboot the instances in the cluster without failover.  After you create a cluster parameter group, you should wait at least 5 minutes before creating your first cluster that uses that cluster parameter group as the default parameter group. This allows Amazon DocumentDB to fully complete the create action before the cluster parameter group is used as the default for a new cluster. This step is especially important for parameters that are critical when creating the default database for a cluster, such as the character set for the default database defined by the character_set_database parameter. 
    public func createDBClusterParameterGroup(_ input: CreateDBClusterParameterGroupMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBClusterParameterGroupResult> {
        return client.execute(operation: "CreateDBClusterParameterGroup", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Creates a snapshot of a cluster. 
    public func createDBClusterSnapshot(_ input: CreateDBClusterSnapshotMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBClusterSnapshotResult> {
        return client.execute(operation: "CreateDBClusterSnapshot", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Creates a new instance.
    public func createDBInstance(_ input: CreateDBInstanceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBInstanceResult> {
        return client.execute(operation: "CreateDBInstance", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Creates a new subnet group. subnet groups must contain at least one subnet in at least two Availability Zones in the AWS Region.
    public func createDBSubnetGroup(_ input: CreateDBSubnetGroupMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBSubnetGroupResult> {
        return client.execute(operation: "CreateDBSubnetGroup", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Deletes a previously provisioned cluster. When you delete a cluster, all automated backups for that cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified cluster are not deleted. 
    public func deleteDBCluster(_ input: DeleteDBClusterMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDBClusterResult> {
        return client.execute(operation: "DeleteDBCluster", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Deletes a specified cluster parameter group. The cluster parameter group to be deleted can't be associated with any clusters.
    @discardableResult public func deleteDBClusterParameterGroup(_ input: DeleteDBClusterParameterGroupMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteDBClusterParameterGroup", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Deletes a cluster snapshot. If the snapshot is being copied, the copy operation is terminated.  The cluster snapshot must be in the available state to be deleted. 
    public func deleteDBClusterSnapshot(_ input: DeleteDBClusterSnapshotMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDBClusterSnapshotResult> {
        return client.execute(operation: "DeleteDBClusterSnapshot", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Deletes a previously provisioned instance. 
    public func deleteDBInstance(_ input: DeleteDBInstanceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDBInstanceResult> {
        return client.execute(operation: "DeleteDBInstance", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Deletes a subnet group.  The specified database subnet group must not be associated with any DB instances. 
    @discardableResult public func deleteDBSubnetGroup(_ input: DeleteDBSubnetGroupMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteDBSubnetGroup", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of certificate authority (CA) certificates provided by Amazon DocumentDB for this AWS account.
    public func describeCertificates(_ input: DescribeCertificatesMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CertificateMessage> {
        return client.execute(operation: "DescribeCertificates", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of DBClusterParameterGroup descriptions. If a DBClusterParameterGroupName parameter is specified, the list contains only the description of the specified cluster parameter group. 
    public func describeDBClusterParameterGroups(_ input: DescribeDBClusterParameterGroupsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DBClusterParameterGroupsMessage> {
        return client.execute(operation: "DescribeDBClusterParameterGroups", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns the detailed parameter list for a particular cluster parameter group.
    public func describeDBClusterParameters(_ input: DescribeDBClusterParametersMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DBClusterParameterGroupDetails> {
        return client.execute(operation: "DescribeDBClusterParameters", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of cluster snapshot attribute names and values for a manual DB cluster snapshot. When you share snapshots with other AWS accounts, DescribeDBClusterSnapshotAttributes returns the restore attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual cluster snapshot. If all is included in the list of values for the restore attribute, then the manual cluster snapshot is public and can be copied or restored by all AWS accounts.
    public func describeDBClusterSnapshotAttributes(_ input: DescribeDBClusterSnapshotAttributesMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBClusterSnapshotAttributesResult> {
        return client.execute(operation: "DescribeDBClusterSnapshotAttributes", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns information about cluster snapshots. This API operation supports pagination.
    public func describeDBClusterSnapshots(_ input: DescribeDBClusterSnapshotsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DBClusterSnapshotMessage> {
        return client.execute(operation: "DescribeDBClusterSnapshots", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns information about provisioned Amazon DocumentDB clusters. This API operation supports pagination. For certain management features such as cluster and instance lifecycle management, Amazon DocumentDB leverages operational technology that is shared with Amazon RDS and Amazon Neptune. Use the filterName=engine,Values=docdb filter parameter to return only Amazon DocumentDB clusters.
    public func describeDBClusters(_ input: DescribeDBClustersMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DBClusterMessage> {
        return client.execute(operation: "DescribeDBClusters", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of the available engines.
    public func describeDBEngineVersions(_ input: DescribeDBEngineVersionsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DBEngineVersionMessage> {
        return client.execute(operation: "DescribeDBEngineVersions", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns information about provisioned Amazon DocumentDB instances. This API supports pagination.
    public func describeDBInstances(_ input: DescribeDBInstancesMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DBInstanceMessage> {
        return client.execute(operation: "DescribeDBInstances", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.
    public func describeDBSubnetGroups(_ input: DescribeDBSubnetGroupsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DBSubnetGroupMessage> {
        return client.execute(operation: "DescribeDBSubnetGroups", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns the default engine and system parameter information for the cluster database engine.
    public func describeEngineDefaultClusterParameters(_ input: DescribeEngineDefaultClusterParametersMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEngineDefaultClusterParametersResult> {
        return client.execute(operation: "DescribeEngineDefaultClusterParameters", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Displays a list of categories for all event source types, or, if specified, for a specified source type. 
    public func describeEventCategories(_ input: DescribeEventCategoriesMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EventCategoriesMessage> {
        return client.execute(operation: "DescribeEventCategories", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns events related to instances, security groups, snapshots, and DB parameter groups for the past 14 days. You can obtain events specific to a particular DB instance, security group, snapshot, or parameter group by providing the name as a parameter. By default, the events of the past hour are returned.
    public func describeEvents(_ input: DescribeEventsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EventsMessage> {
        return client.execute(operation: "DescribeEvents", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of orderable instance options for the specified engine.
    public func describeOrderableDBInstanceOptions(_ input: DescribeOrderableDBInstanceOptionsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OrderableDBInstanceOptionsMessage> {
        return client.execute(operation: "DescribeOrderableDBInstanceOptions", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of resources (for example, instances) that have at least one pending maintenance action.
    public func describePendingMaintenanceActions(_ input: DescribePendingMaintenanceActionsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PendingMaintenanceActionsMessage> {
        return client.execute(operation: "DescribePendingMaintenanceActions", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Forces a failover for a cluster. A failover for a cluster promotes one of the Amazon DocumentDB replicas (read-only instances) in the cluster to be the primary instance (the cluster writer). If the primary instance fails, Amazon DocumentDB automatically fails over to an Amazon DocumentDB replica, if one exists. You can force a failover when you want to simulate a failure of a primary instance for testing.
    public func failoverDBCluster(_ input: FailoverDBClusterMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FailoverDBClusterResult> {
        return client.execute(operation: "FailoverDBCluster", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Lists all tags on an Amazon DocumentDB resource.
    public func listTagsForResource(_ input: ListTagsForResourceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagListMessage> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Modifies a setting for an Amazon DocumentDB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. 
    public func modifyDBCluster(_ input: ModifyDBClusterMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBClusterResult> {
        return client.execute(operation: "ModifyDBCluster", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Modifies the parameters of a cluster parameter group. To modify more than one parameter, submit a list of the following: ParameterName, ParameterValue, and ApplyMethod. A maximum of 20 parameters can be modified in a single request.   Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot or maintenance window before the change can take effect.   After you create a cluster parameter group, you should wait at least 5 minutes before creating your first cluster that uses that cluster parameter group as the default parameter group. This allows Amazon DocumentDB to fully complete the create action before the parameter group is used as the default for a new cluster. This step is especially important for parameters that are critical when creating the default database for a cluster, such as the character set for the default database defined by the character_set_database parameter. 
    public func modifyDBClusterParameterGroup(_ input: ModifyDBClusterParameterGroupMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DBClusterParameterGroupNameMessage> {
        return client.execute(operation: "ModifyDBClusterParameterGroup", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot. To share a manual cluster snapshot with other AWS accounts, specify restore as the AttributeName, and use the ValuesToAdd parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual cluster snapshot. Use the value all to make the manual cluster snapshot public, which means that it can be copied or restored by all AWS accounts. Do not add the all value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts. If a manual cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the ValuesToAdd parameter. You can't use all as a value for that parameter in this case.
    public func modifyDBClusterSnapshotAttribute(_ input: ModifyDBClusterSnapshotAttributeMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBClusterSnapshotAttributeResult> {
        return client.execute(operation: "ModifyDBClusterSnapshotAttribute", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Modifies settings for an instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.
    public func modifyDBInstance(_ input: ModifyDBInstanceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceResult> {
        return client.execute(operation: "ModifyDBInstance", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Modifies an existing subnet group. subnet groups must contain at least one subnet in at least two Availability Zones in the AWS Region.
    public func modifyDBSubnetGroup(_ input: ModifyDBSubnetGroupMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBSubnetGroupResult> {
        return client.execute(operation: "ModifyDBSubnetGroup", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  You might need to reboot your instance, usually for maintenance reasons. For example, if you make certain changes, or if you change the cluster parameter group that is associated with the instance, you must reboot the instance for the changes to take effect.  Rebooting an instance restarts the database engine service. Rebooting an instance results in a momentary outage, during which the instance status is set to rebooting. 
    public func rebootDBInstance(_ input: RebootDBInstanceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebootDBInstanceResult> {
        return client.execute(operation: "RebootDBInstance", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Removes metadata tags from an Amazon DocumentDB resource.
    @discardableResult public func removeTagsFromResource(_ input: RemoveTagsFromResourceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "RemoveTagsFromResource", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Modifies the parameters of a cluster parameter group to the default value. To reset specific parameters, submit a list of the following: ParameterName and ApplyMethod. To reset the entire cluster parameter group, specify the DBClusterParameterGroupName and ResetAllParameters parameters.   When you reset the entire group, dynamic parameters are updated immediately and static parameters are set to pending-reboot to take effect on the next DB instance reboot.
    public func resetDBClusterParameterGroup(_ input: ResetDBClusterParameterGroupMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DBClusterParameterGroupNameMessage> {
        return client.execute(operation: "ResetDBClusterParameterGroup", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Creates a new cluster from a snapshot or cluster snapshot. If a snapshot is specified, the target cluster is created from the source DB snapshot with a default configuration and default security group. If a cluster snapshot is specified, the target cluster is created from the source cluster restore point with the same configuration as the original source DB cluster, except that the new cluster is created with the default security group.
    public func restoreDBClusterFromSnapshot(_ input: RestoreDBClusterFromSnapshotMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestoreDBClusterFromSnapshotResult> {
        return client.execute(operation: "RestoreDBClusterFromSnapshot", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Restores a cluster to an arbitrary point in time. Users can restore to any point in time before LatestRestorableTime for up to BackupRetentionPeriod days. The target cluster is created from the source cluster with the same configuration as the original cluster, except that the new cluster is created with the default security group. 
    public func restoreDBClusterToPointInTime(_ input: RestoreDBClusterToPointInTimeMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestoreDBClusterToPointInTimeResult> {
        return client.execute(operation: "RestoreDBClusterToPointInTime", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Restarts the stopped cluster that is specified by DBClusterIdentifier. For more information, see Stopping and Starting an Amazon DocumentDB Cluster.
    public func startDBCluster(_ input: StartDBClusterMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDBClusterResult> {
        return client.execute(operation: "StartDBCluster", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Stops the running cluster that is specified by DBClusterIdentifier. The cluster must be in the available state. For more information, see Stopping and Starting an Amazon DocumentDB Cluster.
    public func stopDBCluster(_ input: StopDBClusterMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopDBClusterResult> {
        return client.execute(operation: "StopDBCluster", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }
}

extension DocDB {
    init(client: AWSClient, context: AWSServiceContext) {
        self.client = client
        self.context = context
    }
}
