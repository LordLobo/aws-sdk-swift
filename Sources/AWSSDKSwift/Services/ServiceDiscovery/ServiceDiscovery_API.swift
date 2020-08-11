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
Client object for interacting with AWS ServiceDiscovery service.

AWS Cloud Map lets you configure public DNS, private DNS, or HTTP namespaces that your microservice applications run in. When an instance of the service becomes available, you can call the AWS Cloud Map API to register the instance with AWS Cloud Map. For public or private DNS namespaces, AWS Cloud Map automatically creates DNS records and an optional health check. Clients that submit public or private DNS queries, or HTTP requests, for the service receive an answer that contains up to eight healthy records. 
*/
public struct ServiceDiscovery: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the ServiceDiscovery client
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
            amzTarget: "Route53AutoNaming_v20170314",
            service: "servicediscovery",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-03-14",
            endpoint: endpoint,
            possibleErrorTypes: [ServiceDiscoveryErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }
    
    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }
    
    //MARK: API Calls

    ///  Creates an HTTP namespace. Service instances that you register using an HTTP namespace can be discovered using a DiscoverInstances request but can't be discovered using DNS.  For the current limit on the number of namespaces that you can create using the same AWS account, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.
    public func createHttpNamespace(_ input: CreateHttpNamespaceRequest) -> EventLoopFuture<CreateHttpNamespaceResponse> {
        return client.execute(operation: "CreateHttpNamespace", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a private namespace based on DNS, which will be visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service will be backend.example.com. For the current limit on the number of namespaces that you can create using the same AWS account, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.
    public func createPrivateDnsNamespace(_ input: CreatePrivateDnsNamespaceRequest) -> EventLoopFuture<CreatePrivateDnsNamespaceResponse> {
        return client.execute(operation: "CreatePrivateDnsNamespace", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a public namespace based on DNS, which will be visible on the internet. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service will be backend.example.com. For the current limit on the number of namespaces that you can create using the same AWS account, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.
    public func createPublicDnsNamespace(_ input: CreatePublicDnsNamespaceRequest) -> EventLoopFuture<CreatePublicDnsNamespaceResponse> {
        return client.execute(operation: "CreatePublicDnsNamespace", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a service, which defines the configuration for the following entities:   For public and private DNS namespaces, one of the following combinations of DNS records in Amazon Route 53:   A   AAAA   A and AAAA   SRV   CNAME     Optionally, a health check   After you create the service, you can submit a RegisterInstance request, and AWS Cloud Map uses the values in the configuration to create the specified entities. For the current limit on the number of instances that you can register using the same namespace and using the same service, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.
    public func createService(_ input: CreateServiceRequest) -> EventLoopFuture<CreateServiceResponse> {
        return client.execute(operation: "CreateService", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a namespace from the current account. If the namespace still contains one or more services, the request fails.
    public func deleteNamespace(_ input: DeleteNamespaceRequest) -> EventLoopFuture<DeleteNamespaceResponse> {
        return client.execute(operation: "DeleteNamespace", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a specified service. If the service still contains one or more registered instances, the request fails.
    public func deleteService(_ input: DeleteServiceRequest) -> EventLoopFuture<DeleteServiceResponse> {
        return client.execute(operation: "DeleteService", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the Amazon Route 53 DNS records and health check, if any, that AWS Cloud Map created for the specified instance.
    public func deregisterInstance(_ input: DeregisterInstanceRequest) -> EventLoopFuture<DeregisterInstanceResponse> {
        return client.execute(operation: "DeregisterInstance", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Discovers registered instances for a specified namespace and service. You can use DiscoverInstances to discover instances for any type of namespace. For public and private DNS namespaces, you can also use DNS queries to discover instances.
    public func discoverInstances(_ input: DiscoverInstancesRequest) -> EventLoopFuture<DiscoverInstancesResponse> {
        return client.execute(operation: "DiscoverInstances", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Gets information about a specified instance.
    public func getInstance(_ input: GetInstanceRequest) -> EventLoopFuture<GetInstanceResponse> {
        return client.execute(operation: "GetInstance", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Gets the current health status (Healthy, Unhealthy, or Unknown) of one or more instances that are associated with a specified service.  There is a brief delay between when you register an instance and when the health status for the instance is available.  
    public func getInstancesHealthStatus(_ input: GetInstancesHealthStatusRequest) -> EventLoopFuture<GetInstancesHealthStatusResponse> {
        return client.execute(operation: "GetInstancesHealthStatus", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Gets information about a namespace.
    public func getNamespace(_ input: GetNamespaceRequest) -> EventLoopFuture<GetNamespaceResponse> {
        return client.execute(operation: "GetNamespace", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Gets information about any operation that returns an operation ID in the response, such as a CreateService request.  To get a list of operations that match specified criteria, see ListOperations. 
    public func getOperation(_ input: GetOperationRequest) -> EventLoopFuture<GetOperationResponse> {
        return client.execute(operation: "GetOperation", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Gets the settings for a specified service.
    public func getService(_ input: GetServiceRequest) -> EventLoopFuture<GetServiceResponse> {
        return client.execute(operation: "GetService", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists summary information about the instances that you registered by using a specified service.
    public func listInstances(_ input: ListInstancesRequest) -> EventLoopFuture<ListInstancesResponse> {
        return client.execute(operation: "ListInstances", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists summary information about the namespaces that were created by the current AWS account.
    public func listNamespaces(_ input: ListNamespacesRequest) -> EventLoopFuture<ListNamespacesResponse> {
        return client.execute(operation: "ListNamespaces", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists operations that match the criteria that you specify.
    public func listOperations(_ input: ListOperationsRequest) -> EventLoopFuture<ListOperationsResponse> {
        return client.execute(operation: "ListOperations", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists summary information for all the services that are associated with one or more specified namespaces.
    public func listServices(_ input: ListServicesRequest) -> EventLoopFuture<ListServicesResponse> {
        return client.execute(operation: "ListServices", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates or updates one or more records and, optionally, creates a health check based on the settings in a specified service. When you submit a RegisterInstance request, the following occurs:   For each DNS record that you define in the service that is specified by ServiceId, a record is created or updated in the hosted zone that is associated with the corresponding namespace.   If the service includes HealthCheckConfig, a health check is created based on the settings in the health check configuration.   The health check, if any, is associated with each of the new or updated records.    One RegisterInstance request must complete before you can submit another request and specify the same service ID and instance ID.  For more information, see CreateService. When AWS Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:    If the health check is healthy: returns all the records    If the health check is unhealthy: returns the applicable value for the last healthy instance    If you didn't specify a health check configuration: returns all the records   For the current limit on the number of instances that you can register using the same namespace and using the same service, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.
    public func registerInstance(_ input: RegisterInstanceRequest) -> EventLoopFuture<RegisterInstanceResponse> {
        return client.execute(operation: "RegisterInstance", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Adds one or more tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Removes one or more tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Submits a request to change the health status of a custom health check to healthy or unhealthy. You can use UpdateInstanceCustomHealthStatus to change the status only for custom health checks, which you define using HealthCheckCustomConfig when you create a service. You can't use it to change the status for Route 53 health checks, which you define using HealthCheckConfig. For more information, see HealthCheckCustomConfig.
    @discardableResult public func updateInstanceCustomHealthStatus(_ input: UpdateInstanceCustomHealthStatusRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "UpdateInstanceCustomHealthStatus", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Submits a request to perform the following operations:   Update the TTL setting for existing DnsRecords configurations   Add, update, or delete HealthCheckConfig for a specified service  You can't add, update, or delete a HealthCheckCustomConfig configuration.    For public and private DNS namespaces, note the following:   If you omit any existing DnsRecords or HealthCheckConfig configurations from an UpdateService request, the configurations are deleted from the service.   If you omit an existing HealthCheckCustomConfig configuration from an UpdateService request, the configuration is not deleted from the service.   When you update settings for a service, AWS Cloud Map also updates the corresponding settings in all the records and health checks that were created by using the specified service.
    public func updateService(_ input: UpdateServiceRequest) -> EventLoopFuture<UpdateServiceResponse> {
        return client.execute(operation: "UpdateService", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension ServiceDiscovery {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
