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
Client object for interacting with AWS AppMesh service.

AWS App Mesh is a service mesh based on the Envoy proxy that makes it easy to monitor and
         control microservices. App Mesh standardizes how your microservices communicate, giving you
         end-to-end visibility and helping to ensure high availability for your applications.
         App Mesh gives you consistent visibility and network traffic controls for every
         microservice in an application. You can use App Mesh with AWS Fargate, Amazon ECS, Amazon EKS,
         Kubernetes on AWS, and Amazon EC2.
         
            App Mesh supports microservice applications that use service discovery naming for their
            components. For more information about service discovery on Amazon ECS, see Service Discovery in the Amazon Elastic Container Service Developer Guide. Kubernetes
               kube-dns and coredns are supported. For more information,
            see DNS
               for Services and Pods in the Kubernetes documentation.
         
*/
public struct AppMesh: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the AppMesh client
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
            service: "appmesh",
            serviceProtocol: .restjson,
            apiVersion: "2019-01-25",
            endpoint: endpoint,
            errorType: AppMeshErrorType.self,
            timeout: timeout
        )
    }
    
    /// return new `AppMesh` with new timeout value
    public func timingOut(after timeout: TimeAmount) -> Self {
        return .init(client: self.client, context: self.context.timingOut(after: timeout))
    }

    /// return new `AppMesh` logging to specified Logger
    public func logging(to logger: Logger) -> Self {
        return .init(client: self.client, context: self.context.logging(to: logger))
    }
    
    //MARK: API Calls

    ///  Creates a service mesh.
    ///            A service mesh is a logical boundary for network traffic between services that are
    ///           represented by resources within the mesh. After you create your service mesh, you can
    ///           create virtual services, virtual nodes, virtual routers, and routes to distribute traffic
    ///           between the applications in your mesh.
    ///           For more information about service meshes, see Service meshes.
    public func createMesh(_ input: CreateMeshInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMeshOutput> {
        return client.execute(operation: "CreateMesh", path: "/v20190125/meshes", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Creates a route that is associated with a virtual router.
    ///            You can route several different protocols and define a retry policy for a route.
    ///           Traffic can be routed to one or more virtual nodes.
    ///           For more information about routes, see Routes.
    public func createRoute(_ input: CreateRouteInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRouteOutput> {
        return client.execute(operation: "CreateRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Creates a virtual node within a service mesh.
    ///            A virtual node acts as a logical pointer to a particular task group, such as an Amazon ECS
    ///           service or a Kubernetes deployment. When you create a virtual node, you can specify the
    ///           service discovery information for your task group, and whether the proxy running in a task
    ///           group will communicate with other proxies using Transport Layer Security (TLS).
    ///           You define a listener for any inbound traffic that your virtual node
    ///           expects. Any virtual service that your virtual node expects to communicate to is specified
    ///           as a backend.
    ///           The response metadata for your new virtual node contains the arn that is
    ///           associated with the virtual node. Set this value (either the full ARN or the truncated
    ///           resource name: for example, mesh/default/virtualNode/simpleapp) as the
    ///              APPMESH_VIRTUAL_NODE_NAME environment variable for your task group's Envoy
    ///           proxy container in your task definition or pod spec. This is then mapped to the
    ///              node.id and node.cluster Envoy parameters.
    ///           
    ///              If you require your Envoy stats or tracing to use a different name, you can override
    ///              the node.cluster value that is set by
    ///                 APPMESH_VIRTUAL_NODE_NAME with the
    ///                 APPMESH_VIRTUAL_NODE_CLUSTER environment variable.
    ///           
    ///           For more information about virtual nodes, see Virtual nodes.
    public func createVirtualNode(_ input: CreateVirtualNodeInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVirtualNodeOutput> {
        return client.execute(operation: "CreateVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Creates a virtual router within a service mesh.
    ///           Specify a listener for any inbound traffic that your virtual router
    ///           receives. Create a virtual router for each protocol and port that you need to route.
    ///           Virtual routers handle traffic for one or more virtual services within your mesh. After you
    ///           create your virtual router, create and associate routes for your virtual router that direct
    ///           incoming requests to different virtual nodes.
    ///           For more information about virtual routers, see Virtual routers.
    public func createVirtualRouter(_ input: CreateVirtualRouterInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVirtualRouterOutput> {
        return client.execute(operation: "CreateVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Creates a virtual service within a service mesh.
    ///           A virtual service is an abstraction of a real service that is provided by a virtual node
    ///           directly or indirectly by means of a virtual router. Dependent services call your virtual
    ///           service by its virtualServiceName, and those requests are routed to the
    ///           virtual node or virtual router that is specified as the provider for the virtual
    ///           service.
    ///           For more information about virtual services, see Virtual services.
    public func createVirtualService(_ input: CreateVirtualServiceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVirtualServiceOutput> {
        return client.execute(operation: "CreateVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Deletes an existing service mesh.
    ///           You must delete all resources (virtual services, routes, virtual routers, and virtual
    ///           nodes) in the service mesh before you can delete the mesh itself.
    public func deleteMesh(_ input: DeleteMeshInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMeshOutput> {
        return client.execute(operation: "DeleteMesh", path: "/v20190125/meshes/{meshName}", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Deletes an existing route.
    public func deleteRoute(_ input: DeleteRouteInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRouteOutput> {
        return client.execute(operation: "DeleteRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Deletes an existing virtual node.
    ///           You must delete any virtual services that list a virtual node as a service provider
    ///           before you can delete the virtual node itself.
    public func deleteVirtualNode(_ input: DeleteVirtualNodeInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVirtualNodeOutput> {
        return client.execute(operation: "DeleteVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Deletes an existing virtual router.
    ///           You must delete any routes associated with the virtual router before you can delete the
    ///           router itself.
    public func deleteVirtualRouter(_ input: DeleteVirtualRouterInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVirtualRouterOutput> {
        return client.execute(operation: "DeleteVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Deletes an existing virtual service.
    public func deleteVirtualService(_ input: DeleteVirtualServiceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVirtualServiceOutput> {
        return client.execute(operation: "DeleteVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Describes an existing service mesh.
    public func describeMesh(_ input: DescribeMeshInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMeshOutput> {
        return client.execute(operation: "DescribeMesh", path: "/v20190125/meshes/{meshName}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Describes an existing route.
    public func describeRoute(_ input: DescribeRouteInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteOutput> {
        return client.execute(operation: "DescribeRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Describes an existing virtual node.
    public func describeVirtualNode(_ input: DescribeVirtualNodeInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirtualNodeOutput> {
        return client.execute(operation: "DescribeVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Describes an existing virtual router.
    public func describeVirtualRouter(_ input: DescribeVirtualRouterInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirtualRouterOutput> {
        return client.execute(operation: "DescribeVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Describes an existing virtual service.
    public func describeVirtualService(_ input: DescribeVirtualServiceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirtualServiceOutput> {
        return client.execute(operation: "DescribeVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of existing service meshes.
    public func listMeshes(_ input: ListMeshesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMeshesOutput> {
        return client.execute(operation: "ListMeshes", path: "/v20190125/meshes", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of existing routes in a service mesh.
    public func listRoutes(_ input: ListRoutesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRoutesOutput> {
        return client.execute(operation: "ListRoutes", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  List the tags for an App Mesh resource.
    public func listTagsForResource(_ input: ListTagsForResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceOutput> {
        return client.execute(operation: "ListTagsForResource", path: "/v20190125/tags", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of existing virtual nodes.
    public func listVirtualNodes(_ input: ListVirtualNodesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListVirtualNodesOutput> {
        return client.execute(operation: "ListVirtualNodes", path: "/v20190125/meshes/{meshName}/virtualNodes", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of existing virtual routers in a service mesh.
    public func listVirtualRouters(_ input: ListVirtualRoutersInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListVirtualRoutersOutput> {
        return client.execute(operation: "ListVirtualRouters", path: "/v20190125/meshes/{meshName}/virtualRouters", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of existing virtual services in a service mesh.
    public func listVirtualServices(_ input: ListVirtualServicesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListVirtualServicesOutput> {
        return client.execute(operation: "ListVirtualServices", path: "/v20190125/meshes/{meshName}/virtualServices", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn.
    ///           If existing tags on a resource aren't specified in the request parameters, they aren't
    ///           changed. When a resource is deleted, the tags associated with that resource are also
    ///           deleted.
    public func tagResource(_ input: TagResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceOutput> {
        return client.execute(operation: "TagResource", path: "/v20190125/tag", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Deletes specified tags from a resource.
    public func untagResource(_ input: UntagResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceOutput> {
        return client.execute(operation: "UntagResource", path: "/v20190125/untag", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Updates an existing service mesh.
    public func updateMesh(_ input: UpdateMeshInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMeshOutput> {
        return client.execute(operation: "UpdateMesh", path: "/v20190125/meshes/{meshName}", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Updates an existing route for a specified service mesh and virtual router.
    public func updateRoute(_ input: UpdateRouteInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRouteOutput> {
        return client.execute(operation: "UpdateRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Updates an existing virtual node in a specified service mesh.
    public func updateVirtualNode(_ input: UpdateVirtualNodeInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateVirtualNodeOutput> {
        return client.execute(operation: "UpdateVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Updates an existing virtual router in a specified service mesh.
    public func updateVirtualRouter(_ input: UpdateVirtualRouterInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateVirtualRouterOutput> {
        return client.execute(operation: "UpdateVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Updates an existing virtual service in a specified service mesh.
    public func updateVirtualService(_ input: UpdateVirtualServiceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateVirtualServiceOutput> {
        return client.execute(operation: "UpdateVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }
}

extension AppMesh {
    init(client: AWSClient, context: AWSServiceContext) {
        self.client = client
        self.context = context
    }
}
