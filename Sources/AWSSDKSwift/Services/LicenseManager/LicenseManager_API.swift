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
Client object for interacting with AWS LicenseManager service.

 AWS License Manager  AWS License Manager makes it easier to manage licenses from software vendors across multiple AWS accounts and on-premises servers.
*/
public struct LicenseManager: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the LicenseManager client
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
            amzTarget: "AWSLicenseManager",
            service: "license-manager",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-08-01",
            endpoint: endpoint,
            possibleErrorTypes: [LicenseManagerErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }
    
    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }
    
    //MARK: API Calls

    ///  Creates a license configuration. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), host affinity (how long a VM must be associated with a host), and the number of licenses purchased and used.
    public func createLicenseConfiguration(_ input: CreateLicenseConfigurationRequest) -> EventLoopFuture<CreateLicenseConfigurationResponse> {
        return client.execute(operation: "CreateLicenseConfiguration", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the specified license configuration. You cannot delete a license configuration that is in use.
    public func deleteLicenseConfiguration(_ input: DeleteLicenseConfigurationRequest) -> EventLoopFuture<DeleteLicenseConfigurationResponse> {
        return client.execute(operation: "DeleteLicenseConfiguration", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Gets detailed information about the specified license configuration.
    public func getLicenseConfiguration(_ input: GetLicenseConfigurationRequest) -> EventLoopFuture<GetLicenseConfigurationResponse> {
        return client.execute(operation: "GetLicenseConfiguration", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Gets the License Manager settings for the current Region.
    public func getServiceSettings(_ input: GetServiceSettingsRequest) -> EventLoopFuture<GetServiceSettingsResponse> {
        return client.execute(operation: "GetServiceSettings", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists the resource associations for the specified license configuration. Resource associations need not consume licenses from a license configuration. For example, an AMI or a stopped instance might not consume a license (depending on the license rules).
    public func listAssociationsForLicenseConfiguration(_ input: ListAssociationsForLicenseConfigurationRequest) -> EventLoopFuture<ListAssociationsForLicenseConfigurationResponse> {
        return client.execute(operation: "ListAssociationsForLicenseConfiguration", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists the license configuration operations that failed.
    public func listFailuresForLicenseConfigurationOperations(_ input: ListFailuresForLicenseConfigurationOperationsRequest) -> EventLoopFuture<ListFailuresForLicenseConfigurationOperationsResponse> {
        return client.execute(operation: "ListFailuresForLicenseConfigurationOperations", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists the license configurations for your account.
    public func listLicenseConfigurations(_ input: ListLicenseConfigurationsRequest) -> EventLoopFuture<ListLicenseConfigurationsResponse> {
        return client.execute(operation: "ListLicenseConfigurations", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Describes the license configurations for the specified resource.
    public func listLicenseSpecificationsForResource(_ input: ListLicenseSpecificationsForResourceRequest) -> EventLoopFuture<ListLicenseSpecificationsForResourceResponse> {
        return client.execute(operation: "ListLicenseSpecificationsForResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists resources managed using Systems Manager inventory.
    public func listResourceInventory(_ input: ListResourceInventoryRequest) -> EventLoopFuture<ListResourceInventoryResponse> {
        return client.execute(operation: "ListResourceInventory", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists the tags for the specified license configuration.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time. Use this action to audit the current license consumption for any license inventory and configuration.
    public func listUsageForLicenseConfiguration(_ input: ListUsageForLicenseConfigurationRequest) -> EventLoopFuture<ListUsageForLicenseConfigurationResponse> {
        return client.execute(operation: "ListUsageForLicenseConfiguration", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Adds the specified tags to the specified license configuration.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Removes the specified tags from the specified license configuration.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Modifies the attributes of an existing license configuration. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), host affinity (how long a VM must be associated with a host), and the number of licenses purchased and used.
    public func updateLicenseConfiguration(_ input: UpdateLicenseConfigurationRequest) -> EventLoopFuture<UpdateLicenseConfigurationResponse> {
        return client.execute(operation: "UpdateLicenseConfiguration", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Adds or removes the specified license configurations for the specified AWS resource. You can update the license specifications of AMIs, instances, and hosts. You cannot update the license specifications for launch templates and AWS CloudFormation templates, as they send license configurations to the operation that creates the resource.
    public func updateLicenseSpecificationsForResource(_ input: UpdateLicenseSpecificationsForResourceRequest) -> EventLoopFuture<UpdateLicenseSpecificationsForResourceResponse> {
        return client.execute(operation: "UpdateLicenseSpecificationsForResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates License Manager settings for the current Region.
    public func updateServiceSettings(_ input: UpdateServiceSettingsRequest) -> EventLoopFuture<UpdateServiceSettingsResponse> {
        return client.execute(operation: "UpdateServiceSettings", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension LicenseManager {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
