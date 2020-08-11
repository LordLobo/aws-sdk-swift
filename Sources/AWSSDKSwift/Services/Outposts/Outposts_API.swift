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
Client object for interacting with AWS Outposts service.

AWS Outposts is a fully-managed service that extends AWS infrastructure, APIs, and tools to customer premises. By providing local access to AWS-managed infrastructure, AWS Outposts enables customers to build and run applications on premises using the same programming interfaces as in AWS Regions, while using local compute and storage resources for lower latency and local data processing needs.
*/
public struct Outposts: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the Outposts client
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
            service: "outposts",
            serviceProtocol: .restjson,
            apiVersion: "2019-12-03",
            endpoint: endpoint,
            serviceEndpoints: ["us-gov-east-1": "outposts.us-gov-east-1.amazonaws.com", "us-gov-west-1": "outposts.us-gov-west-1.amazonaws.com"],
            possibleErrorTypes: [OutpostsErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }
    
    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }
    
    //MARK: API Calls

    ///  Creates an Outpost.
    public func createOutpost(_ input: CreateOutpostInput) -> EventLoopFuture<CreateOutpostOutput> {
        return client.execute(operation: "CreateOutpost", path: "/outposts", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the Outpost.
    public func deleteOutpost(_ input: DeleteOutpostInput) -> EventLoopFuture<DeleteOutpostOutput> {
        return client.execute(operation: "DeleteOutpost", path: "/outposts/{OutpostId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the site.
    public func deleteSite(_ input: DeleteSiteInput) -> EventLoopFuture<DeleteSiteOutput> {
        return client.execute(operation: "DeleteSite", path: "/sites/{SiteId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Gets information about the specified Outpost.
    public func getOutpost(_ input: GetOutpostInput) -> EventLoopFuture<GetOutpostOutput> {
        return client.execute(operation: "GetOutpost", path: "/outposts/{OutpostId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Lists the instance types for the specified Outpost.
    public func getOutpostInstanceTypes(_ input: GetOutpostInstanceTypesInput) -> EventLoopFuture<GetOutpostInstanceTypesOutput> {
        return client.execute(operation: "GetOutpostInstanceTypes", path: "/outposts/{OutpostId}/instanceTypes", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  List the Outposts for your AWS account.
    public func listOutposts(_ input: ListOutpostsInput) -> EventLoopFuture<ListOutpostsOutput> {
        return client.execute(operation: "ListOutposts", path: "/outposts", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Lists the sites for the specified AWS account.
    public func listSites(_ input: ListSitesInput) -> EventLoopFuture<ListSitesOutput> {
        return client.execute(operation: "ListSites", path: "/sites", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }
}

extension Outposts {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
