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
import NIO

/**
Client object for interacting with AWS MarketplaceCatalog service.

Catalog API actions allow you to create, describe, list, and delete changes to your published entities. An entity is a product or an offer on AWS Marketplace. You can automate your entity update process by integrating the AWS Marketplace Catalog API with your AWS Marketplace product build or deployment pipelines. You can also create your own applications on top of the Catalog API to manage your products on AWS Marketplace.
*/
public struct MarketplaceCatalog {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the MarketplaceCatalog client
    /// - parameters:
    ///     - credentialProvider: Object providing credential to sign requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider: CredentialProviderFactory? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "catalog.marketplace",
            signingName: "aws-marketplace",
            serviceProtocol: .restjson,
            apiVersion: "2018-09-17",
            endpoint: endpoint,
            possibleErrorTypes: [MarketplaceCatalogErrorType.self]
        )
        self.client = AWSClient(
            credentialProviderFactory: credentialProvider ?? .runtime,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Used to cancel an open change request. Must be sent before the status of the request changes to APPLYING, the final stage of completing your change request. You can describe a change during the 60-day request history retention period for API calls.
    public func cancelChangeSet(_ input: CancelChangeSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelChangeSetResponse> {
        return client.execute(operation: "CancelChangeSet", path: "/CancelChangeSet", httpMethod: "PATCH", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides information about a given change set.
    public func describeChangeSet(_ input: DescribeChangeSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChangeSetResponse> {
        return client.execute(operation: "DescribeChangeSet", path: "/DescribeChangeSet", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the metadata and content of the entity.
    public func describeEntity(_ input: DescribeEntityRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEntityResponse> {
        return client.execute(operation: "DescribeEntity", path: "/DescribeEntity", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the list of change sets owned by the account being used to make the call. You can filter this list by providing any combination of entityId, ChangeSetName, and status. If you provide more than one filter, the API operation applies a logical AND between the filters. You can describe a change during the 60-day request history retention period for API calls.
    public func listChangeSets(_ input: ListChangeSetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListChangeSetsResponse> {
        return client.execute(operation: "ListChangeSets", path: "/ListChangeSets", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides the list of entities of a given type.
    public func listEntities(_ input: ListEntitiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEntitiesResponse> {
        return client.execute(operation: "ListEntities", path: "/ListEntities", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  This operation allows you to request changes in your entities.
    public func startChangeSet(_ input: StartChangeSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartChangeSetResponse> {
        return client.execute(operation: "StartChangeSet", path: "/StartChangeSet", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
