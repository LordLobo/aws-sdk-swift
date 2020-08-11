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
Client object for interacting with AWS IoTSecureTunneling service.

AWS IoT Secure Tunneling AWS IoT Secure Tunnling enables you to create remote connections to devices deployed in the field. For more information about how AWS IoT Secure Tunneling works, see the User Guide.
*/
public struct IoTSecureTunneling: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the IoTSecureTunneling client
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
            amzTarget: "IoTSecuredTunneling",
            service: "api.tunneling.iot",
            signingName: "IoTSecuredTunneling",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-10-05",
            endpoint: endpoint,
            possibleErrorTypes: [IoTSecureTunnelingErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }
    
    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }
    
    //MARK: API Calls

    ///  Closes a tunnel identified by the unique tunnel id. When a CloseTunnel request is received, we close the WebSocket connections between the client and proxy server so no data can be transmitted.
    public func closeTunnel(_ input: CloseTunnelRequest) -> EventLoopFuture<CloseTunnelResponse> {
        return client.execute(operation: "CloseTunnel", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Gets information about a tunnel identified by the unique tunnel id.
    public func describeTunnel(_ input: DescribeTunnelRequest) -> EventLoopFuture<DescribeTunnelResponse> {
        return client.execute(operation: "DescribeTunnel", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  List all tunnels for an AWS account. Tunnels are listed by creation time in descending order, newer tunnels will be listed before older tunnels.
    public func listTunnels(_ input: ListTunnelsRequest) -> EventLoopFuture<ListTunnelsResponse> {
        return client.execute(operation: "ListTunnels", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a new tunnel, and returns two client access tokens for clients to use to connect to the AWS IoT Secure Tunneling proxy server. .
    public func openTunnel(_ input: OpenTunnelRequest) -> EventLoopFuture<OpenTunnelResponse> {
        return client.execute(operation: "OpenTunnel", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  A resource tag.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Removes a tag from a resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension IoTSecureTunneling {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
