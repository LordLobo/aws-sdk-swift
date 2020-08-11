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
Client object for interacting with AWS CloudHSMV2 service.

For more information about AWS CloudHSM, see AWS CloudHSM and the AWS CloudHSM User Guide.
*/
public struct CloudHSMV2: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the CloudHSMV2 client
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
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "BaldrApiService",
            service: "cloudhsmv2",
            signingName: "cloudhsm",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-04-28",
            endpoint: endpoint,
            possibleErrorTypes: [CloudHSMV2ErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }
    
    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }
    
    //MARK: API Calls

    ///  Copy an AWS CloudHSM cluster backup to a different region.
    public func copyBackupToRegion(_ input: CopyBackupToRegionRequest) -> EventLoopFuture<CopyBackupToRegionResponse> {
        return client.execute(operation: "CopyBackupToRegion", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a new AWS CloudHSM cluster.
    public func createCluster(_ input: CreateClusterRequest) -> EventLoopFuture<CreateClusterResponse> {
        return client.execute(operation: "CreateCluster", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster.
    public func createHsm(_ input: CreateHsmRequest) -> EventLoopFuture<CreateHsmResponse> {
        return client.execute(operation: "CreateHsm", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a specified AWS CloudHSM backup. A backup can be restored up to 7 days after the DeleteBackup request is made. For more information on restoring a backup, see RestoreBackup.
    public func deleteBackup(_ input: DeleteBackupRequest) -> EventLoopFuture<DeleteBackupResponse> {
        return client.execute(operation: "DeleteBackup", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use DescribeClusters. To delete an HSM, use DeleteHsm.
    public func deleteCluster(_ input: DeleteClusterRequest) -> EventLoopFuture<DeleteClusterResponse> {
        return client.execute(operation: "DeleteCluster", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to specify only one of these values. To find these values, use DescribeClusters.
    public func deleteHsm(_ input: DeleteHsmRequest) -> EventLoopFuture<DeleteHsmResponse> {
        return client.execute(operation: "DeleteHsm", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Gets information about backups of AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a NextToken value. Use this value in a subsequent DescribeBackups request to get more backups. When you receive a response with no NextToken (or an empty or null value), that means there are no more backups to get.
    public func describeBackups(_ input: DescribeBackupsRequest) -> EventLoopFuture<DescribeBackupsResponse> {
        return client.execute(operation: "DescribeBackups", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Gets information about AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a NextToken value. Use this value in a subsequent DescribeClusters request to get more clusters. When you receive a response with no NextToken (or an empty or null value), that means there are no more clusters to get.
    public func describeClusters(_ input: DescribeClustersRequest) -> EventLoopFuture<DescribeClustersResponse> {
        return client.execute(operation: "DescribeClusters", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate. Before you can claim a cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA. To get the cluster's CSR, use DescribeClusters.
    public func initializeCluster(_ input: InitializeClusterRequest) -> EventLoopFuture<InitializeClusterResponse> {
        return client.execute(operation: "InitializeCluster", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Gets a list of tags for the specified AWS CloudHSM cluster. This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a NextToken value. Use this value in a subsequent ListTags request to get more tags. When you receive a response with no NextToken (or an empty or null value), that means there are no more tags to get.
    public func listTags(_ input: ListTagsRequest) -> EventLoopFuture<ListTagsResponse> {
        return client.execute(operation: "ListTags", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Restores a specified AWS CloudHSM backup that is in the PENDING_DELETION state. For mor information on deleting a backup, see DeleteBackup.
    public func restoreBackup(_ input: RestoreBackupRequest) -> EventLoopFuture<RestoreBackupResponse> {
        return client.execute(operation: "RestoreBackup", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Removes the specified tag or tags from the specified AWS CloudHSM cluster.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension CloudHSMV2 {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
