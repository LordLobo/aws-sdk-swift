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
Client object for interacting with AWS MediaStore service.

An AWS Elemental MediaStore container is a namespace that holds folders and objects. You use a container endpoint to create, read, and delete objects. 
*/
public struct MediaStore: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the MediaStore client
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
            amzTarget: "MediaStore_20170901",
            service: "mediastore",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-09-01",
            endpoint: endpoint,
            possibleErrorTypes: [MediaStoreErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }
    
    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }
    
    //MARK: API Calls

    ///  Creates a storage container to hold objects. A container is similar to a bucket in the Amazon S3 service.
    public func createContainer(_ input: CreateContainerInput) -> EventLoopFuture<CreateContainerOutput> {
        return client.execute(operation: "CreateContainer", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the specified container. Before you make a DeleteContainer request, delete any objects in the container or in any folders in the container. You can delete only empty containers. 
    public func deleteContainer(_ input: DeleteContainerInput) -> EventLoopFuture<DeleteContainerOutput> {
        return client.execute(operation: "DeleteContainer", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the access policy that is associated with the specified container.
    public func deleteContainerPolicy(_ input: DeleteContainerPolicyInput) -> EventLoopFuture<DeleteContainerPolicyOutput> {
        return client.execute(operation: "DeleteContainerPolicy", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the cross-origin resource sharing (CORS) configuration information that is set for the container. To use this operation, you must have permission to perform the MediaStore:DeleteCorsPolicy action. The container owner has this permission by default and can grant this permission to others.
    public func deleteCorsPolicy(_ input: DeleteCorsPolicyInput) -> EventLoopFuture<DeleteCorsPolicyOutput> {
        return client.execute(operation: "DeleteCorsPolicy", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Removes an object lifecycle policy from a container. It takes up to 20 minutes for the change to take effect.
    public func deleteLifecyclePolicy(_ input: DeleteLifecyclePolicyInput) -> EventLoopFuture<DeleteLifecyclePolicyOutput> {
        return client.execute(operation: "DeleteLifecyclePolicy", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the metric policy that is associated with the specified container. If there is no metric policy associated with the container, MediaStore doesn't send metrics to CloudWatch.
    public func deleteMetricPolicy(_ input: DeleteMetricPolicyInput) -> EventLoopFuture<DeleteMetricPolicyOutput> {
        return client.execute(operation: "DeleteMetricPolicy", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves the properties of the requested container. This request is commonly used to retrieve the endpoint of a container. An endpoint is a value assigned by the service when a new container is created. A container's endpoint does not change after it has been assigned. The DescribeContainer request returns a single Container object based on ContainerName. To return all Container objects that are associated with a specified AWS account, use ListContainers.
    public func describeContainer(_ input: DescribeContainerInput) -> EventLoopFuture<DescribeContainerOutput> {
        return client.execute(operation: "DescribeContainer", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves the access policy for the specified container. For information about the data that is included in an access policy, see the AWS Identity and Access Management User Guide.
    public func getContainerPolicy(_ input: GetContainerPolicyInput) -> EventLoopFuture<GetContainerPolicyOutput> {
        return client.execute(operation: "GetContainerPolicy", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns the cross-origin resource sharing (CORS) configuration information that is set for the container. To use this operation, you must have permission to perform the MediaStore:GetCorsPolicy action. By default, the container owner has this permission and can grant it to others.
    public func getCorsPolicy(_ input: GetCorsPolicyInput) -> EventLoopFuture<GetCorsPolicyOutput> {
        return client.execute(operation: "GetCorsPolicy", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves the object lifecycle policy that is assigned to a container.
    public func getLifecyclePolicy(_ input: GetLifecyclePolicyInput) -> EventLoopFuture<GetLifecyclePolicyOutput> {
        return client.execute(operation: "GetLifecyclePolicy", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns the metric policy for the specified container. 
    public func getMetricPolicy(_ input: GetMetricPolicyInput) -> EventLoopFuture<GetMetricPolicyOutput> {
        return client.execute(operation: "GetMetricPolicy", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists the properties of all containers in AWS Elemental MediaStore.  You can query to receive all the containers in one response. Or you can include the MaxResults parameter to receive a limited number of containers in each response. In this case, the response includes a token. To get the next set of containers, send the command again, this time with the NextToken parameter (with the returned token as its value). The next set of responses appears, with a token if there are still more containers to receive.  See also DescribeContainer, which gets the properties of one container. 
    public func listContainers(_ input: ListContainersInput) -> EventLoopFuture<ListContainersOutput> {
        return client.execute(operation: "ListContainers", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of the tags assigned to the specified container. 
    public func listTagsForResource(_ input: ListTagsForResourceInput) -> EventLoopFuture<ListTagsForResourceOutput> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates an access policy for the specified container to restrict the users and clients that can access it. For information about the data that is included in an access policy, see the AWS Identity and Access Management User Guide. For this release of the REST API, you can create only one policy for a container. If you enter PutContainerPolicy twice, the second command modifies the existing policy. 
    public func putContainerPolicy(_ input: PutContainerPolicyInput) -> EventLoopFuture<PutContainerPolicyOutput> {
        return client.execute(operation: "PutContainerPolicy", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Sets the cross-origin resource sharing (CORS) configuration on a container so that the container can service cross-origin requests. For example, you might want to enable a request whose origin is http://www.example.com to access your AWS Elemental MediaStore container at my.example.container.com by using the browser's XMLHttpRequest capability. To enable CORS on a container, you attach a CORS policy to the container. In the CORS policy, you configure rules that identify origins and the HTTP methods that can be executed on your container. The policy can contain up to 398,000 characters. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed. To learn more about CORS, see Cross-Origin Resource Sharing (CORS) in AWS Elemental MediaStore.
    public func putCorsPolicy(_ input: PutCorsPolicyInput) -> EventLoopFuture<PutCorsPolicyOutput> {
        return client.execute(operation: "PutCorsPolicy", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Writes an object lifecycle policy to a container. If the container already has an object lifecycle policy, the service replaces the existing policy with the new policy. It takes up to 20 minutes for the change to take effect. For information about how to construct an object lifecycle policy, see Components of an Object Lifecycle Policy.
    public func putLifecyclePolicy(_ input: PutLifecyclePolicyInput) -> EventLoopFuture<PutLifecyclePolicyOutput> {
        return client.execute(operation: "PutLifecyclePolicy", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  The metric policy that you want to add to the container. A metric policy allows AWS Elemental MediaStore to send metrics to Amazon CloudWatch. It takes up to 20 minutes for the new policy to take effect.
    public func putMetricPolicy(_ input: PutMetricPolicyInput) -> EventLoopFuture<PutMetricPolicyOutput> {
        return client.execute(operation: "PutMetricPolicy", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Starts access logging on the specified container. When you enable access logging on a container, MediaStore delivers access logs for objects stored in that container to Amazon CloudWatch Logs.
    public func startAccessLogging(_ input: StartAccessLoggingInput) -> EventLoopFuture<StartAccessLoggingOutput> {
        return client.execute(operation: "StartAccessLogging", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Stops access logging on the specified container. When you stop access logging on a container, MediaStore stops sending access logs to Amazon CloudWatch Logs. These access logs are not saved and are not retrievable.
    public func stopAccessLogging(_ input: StopAccessLoggingInput) -> EventLoopFuture<StopAccessLoggingOutput> {
        return client.execute(operation: "StopAccessLogging", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Adds tags to the specified AWS Elemental MediaStore container. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50 tags to each container. For more information about tagging, including naming and usage conventions, see Tagging Resources in MediaStore.
    public func tagResource(_ input: TagResourceInput) -> EventLoopFuture<TagResourceOutput> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Removes tags from the specified container. You can specify one or more tags to remove. 
    public func untagResource(_ input: UntagResourceInput) -> EventLoopFuture<UntagResourceOutput> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension MediaStore {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
