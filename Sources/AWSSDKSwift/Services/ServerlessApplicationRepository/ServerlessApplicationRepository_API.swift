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
Client object for interacting with AWS ServerlessApplicationRepository service.

The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find
 and deploy serverless applications in the AWS Cloud. For more information about serverless applications,
 see Serverless Computing and Applications on the AWS website.The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of 
 all levels can get started with serverless computing without needing to learn anything new. You can use category 
 keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots. 
 You can also search for applications by name, publisher, or event source. To use an application, you simply choose it, 
 configure any required fields, and deploy it with a few clicks. You can also easily publish applications, sharing them publicly with the community at large, or privately
 within your team or across your organization. To publish a serverless application (or app), you can use the
 AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the
 code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template.
 For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs
 GitHub repository.The AWS Serverless Application Repository Developer Guide contains more information about the two developer
 experiences available:
 
 Consuming Applications – Browse for applications and view information about them, including
 source code and readme files. Also install, configure, and deploy applications of your choosing. 
 Publishing Applications – Configure and upload applications to make them available to other
 developers, and publish new versions of applications. 
 
 
*/
public struct ServerlessApplicationRepository: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the ServerlessApplicationRepository client
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
            service: "serverlessrepo",
            serviceProtocol: .restjson,
            apiVersion: "2017-09-08",
            endpoint: endpoint,
            serviceEndpoints: ["us-gov-east-1": "serverlessrepo.us-gov-east-1.amazonaws.com", "us-gov-west-1": "serverlessrepo.us-gov-west-1.amazonaws.com"],
            possibleErrorTypes: [ServerlessApplicationRepositoryErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }
    
    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }
    
    //MARK: API Calls

    ///  Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
    public func createApplication(_ input: CreateApplicationRequest) -> EventLoopFuture<CreateApplicationResponse> {
        return client.execute(operation: "CreateApplication", path: "/applications", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates an application version.
    public func createApplicationVersion(_ input: CreateApplicationVersionRequest) -> EventLoopFuture<CreateApplicationVersionResponse> {
        return client.execute(operation: "CreateApplicationVersion", path: "/applications/{applicationId}/versions/{semanticVersion}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Creates an AWS CloudFormation change set for the given application.
    public func createCloudFormationChangeSet(_ input: CreateCloudFormationChangeSetRequest) -> EventLoopFuture<CreateCloudFormationChangeSetResponse> {
        return client.execute(operation: "CreateCloudFormationChangeSet", path: "/applications/{applicationId}/changesets", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates an AWS CloudFormation template.
    public func createCloudFormationTemplate(_ input: CreateCloudFormationTemplateRequest) -> EventLoopFuture<CreateCloudFormationTemplateResponse> {
        return client.execute(operation: "CreateCloudFormationTemplate", path: "/applications/{applicationId}/templates", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the specified application.
    @discardableResult public func deleteApplication(_ input: DeleteApplicationRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteApplication", path: "/applications/{applicationId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Gets the specified application.
    public func getApplication(_ input: GetApplicationRequest) -> EventLoopFuture<GetApplicationResponse> {
        return client.execute(operation: "GetApplication", path: "/applications/{applicationId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves the policy for the application.
    public func getApplicationPolicy(_ input: GetApplicationPolicyRequest) -> EventLoopFuture<GetApplicationPolicyResponse> {
        return client.execute(operation: "GetApplicationPolicy", path: "/applications/{applicationId}/policy", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Gets the specified AWS CloudFormation template.
    public func getCloudFormationTemplate(_ input: GetCloudFormationTemplateRequest) -> EventLoopFuture<GetCloudFormationTemplateResponse> {
        return client.execute(operation: "GetCloudFormationTemplate", path: "/applications/{applicationId}/templates/{templateId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves the list of applications nested in the containing application.
    public func listApplicationDependencies(_ input: ListApplicationDependenciesRequest) -> EventLoopFuture<ListApplicationDependenciesResponse> {
        return client.execute(operation: "ListApplicationDependencies", path: "/applications/{applicationId}/dependencies", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Lists versions for the specified application.
    public func listApplicationVersions(_ input: ListApplicationVersionsRequest) -> EventLoopFuture<ListApplicationVersionsResponse> {
        return client.execute(operation: "ListApplicationVersions", path: "/applications/{applicationId}/versions", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Lists applications owned by the requester.
    public func listApplications(_ input: ListApplicationsRequest) -> EventLoopFuture<ListApplicationsResponse> {
        return client.execute(operation: "ListApplications", path: "/applications", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Sets the permission policy for an application. For the list of actions supported for this operation, see
    ///   Application 
    ///   Permissions
    ///   .
    public func putApplicationPolicy(_ input: PutApplicationPolicyRequest) -> EventLoopFuture<PutApplicationPolicyResponse> {
        return client.execute(operation: "PutApplicationPolicy", path: "/applications/{applicationId}/policy", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Unshares an application from an AWS Organization.This operation can be called only from the organization's master account.
    @discardableResult public func unshareApplication(_ input: UnshareApplicationRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "UnshareApplication", path: "/applications/{applicationId}/unshare", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates the specified application.
    public func updateApplication(_ input: UpdateApplicationRequest) -> EventLoopFuture<UpdateApplicationResponse> {
        return client.execute(operation: "UpdateApplication", path: "/applications/{applicationId}", httpMethod: .PATCH, input: input, config: self.config, context: self.context)
    }
}

extension ServerlessApplicationRepository {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
