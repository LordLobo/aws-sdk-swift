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
Client object for interacting with AWS MediaConnect service.

API for AWS Elemental MediaConnect
*/
public struct MediaConnect: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the MediaConnect client
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
            service: "mediaconnect",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-14",
            endpoint: endpoint,
            possibleErrorTypes: [MediaConnectErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }
    
    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }
    
    //MARK: API Calls

    ///  Adds outputs to an existing flow. You can create up to 50 outputs per flow.
    public func addFlowOutputs(_ input: AddFlowOutputsRequest) -> EventLoopFuture<AddFlowOutputsResponse> {
        return client.execute(operation: "AddFlowOutputs", path: "/v1/flows/{flowArn}/outputs", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Adds Sources to flow
    public func addFlowSources(_ input: AddFlowSourcesRequest) -> EventLoopFuture<AddFlowSourcesResponse> {
        return client.execute(operation: "AddFlowSources", path: "/v1/flows/{flowArn}/source", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Adds VPC interfaces to flow
    public func addFlowVpcInterfaces(_ input: AddFlowVpcInterfacesRequest) -> EventLoopFuture<AddFlowVpcInterfacesResponse> {
        return client.execute(operation: "AddFlowVpcInterfaces", path: "/v1/flows/{flowArn}/vpcInterfaces", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a new flow. The request must include one source. The request optionally can include outputs (up to 50) and entitlements (up to 50).
    public func createFlow(_ input: CreateFlowRequest) -> EventLoopFuture<CreateFlowResponse> {
        return client.execute(operation: "CreateFlow", path: "/v1/flows", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a flow. Before you can delete a flow, you must stop the flow.
    public func deleteFlow(_ input: DeleteFlowRequest) -> EventLoopFuture<DeleteFlowResponse> {
        return client.execute(operation: "DeleteFlow", path: "/v1/flows/{flowArn}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Displays the details of a flow. The response includes the flow ARN, name, and Availability Zone, as well as details about the source, outputs, and entitlements.
    public func describeFlow(_ input: DescribeFlowRequest) -> EventLoopFuture<DescribeFlowResponse> {
        return client.execute(operation: "DescribeFlow", path: "/v1/flows/{flowArn}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Grants entitlements to an existing flow.
    public func grantFlowEntitlements(_ input: GrantFlowEntitlementsRequest) -> EventLoopFuture<GrantFlowEntitlementsResponse> {
        return client.execute(operation: "GrantFlowEntitlements", path: "/v1/flows/{flowArn}/entitlements", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.
    public func listEntitlements(_ input: ListEntitlementsRequest) -> EventLoopFuture<ListEntitlementsResponse> {
        return client.execute(operation: "ListEntitlements", path: "/v1/entitlements", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Displays a list of flows that are associated with this account. This request returns a paginated result.
    public func listFlows(_ input: ListFlowsRequest) -> EventLoopFuture<ListFlowsResponse> {
        return client.execute(operation: "ListFlows", path: "/v1/flows", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  List all tags on an AWS Elemental MediaConnect resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Removes an output from an existing flow. This request can be made only on an output that does not have an entitlement associated with it. If the output has an entitlement, you must revoke the entitlement instead. When an entitlement is revoked from a flow, the service automatically removes the associated output.
    public func removeFlowOutput(_ input: RemoveFlowOutputRequest) -> EventLoopFuture<RemoveFlowOutputResponse> {
        return client.execute(operation: "RemoveFlowOutput", path: "/v1/flows/{flowArn}/outputs/{outputArn}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Removes a source from an existing flow. This request can be made only if there is more than one source on the flow.
    public func removeFlowSource(_ input: RemoveFlowSourceRequest) -> EventLoopFuture<RemoveFlowSourceResponse> {
        return client.execute(operation: "RemoveFlowSource", path: "/v1/flows/{flowArn}/source/{sourceArn}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Removes a VPC Interface from an existing flow. This request can be made only on a VPC interface that does not have a Source or Output associated with it. If the VPC interface is referenced by a Source or Output, you must first delete or update the Source or Output to no longer reference the VPC interface.
    public func removeFlowVpcInterface(_ input: RemoveFlowVpcInterfaceRequest) -> EventLoopFuture<RemoveFlowVpcInterfaceResponse> {
        return client.execute(operation: "RemoveFlowVpcInterface", path: "/v1/flows/{flowArn}/vpcInterfaces/{vpcInterfaceName}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Revokes an entitlement from a flow. Once an entitlement is revoked, the content becomes unavailable to the subscriber and the associated output is removed.
    public func revokeFlowEntitlement(_ input: RevokeFlowEntitlementRequest) -> EventLoopFuture<RevokeFlowEntitlementResponse> {
        return client.execute(operation: "RevokeFlowEntitlement", path: "/v1/flows/{flowArn}/entitlements/{entitlementArn}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Starts a flow.
    public func startFlow(_ input: StartFlowRequest) -> EventLoopFuture<StartFlowResponse> {
        return client.execute(operation: "StartFlow", path: "/v1/flows/start/{flowArn}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Stops a flow.
    public func stopFlow(_ input: StopFlowRequest) -> EventLoopFuture<StopFlowResponse> {
        return client.execute(operation: "StopFlow", path: "/v1/flows/stop/{flowArn}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.
    @discardableResult public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes specified tags from a resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Updates flow
    public func updateFlow(_ input: UpdateFlowRequest) -> EventLoopFuture<UpdateFlowResponse> {
        return client.execute(operation: "UpdateFlow", path: "/v1/flows/{flowArn}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  You can change an entitlement's description, subscribers, and encryption. If you change the subscribers, the service will remove the outputs that are are used by the subscribers that are removed.
    public func updateFlowEntitlement(_ input: UpdateFlowEntitlementRequest) -> EventLoopFuture<UpdateFlowEntitlementResponse> {
        return client.execute(operation: "UpdateFlowEntitlement", path: "/v1/flows/{flowArn}/entitlements/{entitlementArn}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Updates an existing flow output.
    public func updateFlowOutput(_ input: UpdateFlowOutputRequest) -> EventLoopFuture<UpdateFlowOutputResponse> {
        return client.execute(operation: "UpdateFlowOutput", path: "/v1/flows/{flowArn}/outputs/{outputArn}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Updates the source of a flow.
    public func updateFlowSource(_ input: UpdateFlowSourceRequest) -> EventLoopFuture<UpdateFlowSourceResponse> {
        return client.execute(operation: "UpdateFlowSource", path: "/v1/flows/{flowArn}/source/{sourceArn}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }
}

extension MediaConnect {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
