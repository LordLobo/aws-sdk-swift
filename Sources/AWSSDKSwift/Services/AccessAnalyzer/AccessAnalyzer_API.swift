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
Client object for interacting with AWS AccessAnalyzer service.

AWS IAM Access Analyzer helps identify potential resource-access risks by enabling you to identify any policies that grant access to an external principal. It does this by using logic-based reasoning to analyze resource-based policies in your AWS environment. An external principal can be another AWS account, a root user, an IAM user or role, a federated user, an AWS service, or an anonymous user. This guide describes the AWS IAM Access Analyzer operations that you can call programmatically. For general information about Access Analyzer, see the AWS IAM Access Analyzer section of the IAM User Guide. To start using Access Analyzer, you first need to create an analyzer.
*/
public struct AccessAnalyzer: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the AccessAnalyzer client
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
            service: "access-analyzer",
            serviceProtocol: .restjson,
            apiVersion: "2019-11-01",
            endpoint: endpoint,
            possibleErrorTypes: [AccessAnalyzerErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }
    
    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }
    
    //MARK: API Calls

    ///  Creates an analyzer for your account.
    public func createAnalyzer(_ input: CreateAnalyzerRequest) -> EventLoopFuture<CreateAnalyzerResponse> {
        return client.execute(operation: "CreateAnalyzer", path: "/analyzer", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Creates an archive rule for the specified analyzer. Archive rules automatically archive findings that meet the criteria you define when you create the rule.
    @discardableResult public func createArchiveRule(_ input: CreateArchiveRuleRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "CreateArchiveRule", path: "/analyzer/{analyzerName}/archive-rule", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the specified analyzer. When you delete an analyzer, Access Analyzer is disabled for the account in the current or specific Region. All findings that were generated by the analyzer are deleted. You cannot undo this action.
    @discardableResult public func deleteAnalyzer(_ input: DeleteAnalyzerRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteAnalyzer", path: "/analyzer/{analyzerName}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the specified archive rule.
    @discardableResult public func deleteArchiveRule(_ input: DeleteArchiveRuleRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteArchiveRule", path: "/analyzer/{analyzerName}/archive-rule/{ruleName}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves information about a resource that was analyzed.
    public func getAnalyzedResource(_ input: GetAnalyzedResourceRequest) -> EventLoopFuture<GetAnalyzedResourceResponse> {
        return client.execute(operation: "GetAnalyzedResource", path: "/analyzed-resource", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves information about the specified analyzer.
    public func getAnalyzer(_ input: GetAnalyzerRequest) -> EventLoopFuture<GetAnalyzerResponse> {
        return client.execute(operation: "GetAnalyzer", path: "/analyzer/{analyzerName}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves information about an archive rule.
    public func getArchiveRule(_ input: GetArchiveRuleRequest) -> EventLoopFuture<GetArchiveRuleResponse> {
        return client.execute(operation: "GetArchiveRule", path: "/analyzer/{analyzerName}/archive-rule/{ruleName}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves information about the specified finding.
    public func getFinding(_ input: GetFindingRequest) -> EventLoopFuture<GetFindingResponse> {
        return client.execute(operation: "GetFinding", path: "/finding/{id}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer..
    public func listAnalyzedResources(_ input: ListAnalyzedResourcesRequest) -> EventLoopFuture<ListAnalyzedResourcesResponse> {
        return client.execute(operation: "ListAnalyzedResources", path: "/analyzed-resource", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a list of analyzers.
    public func listAnalyzers(_ input: ListAnalyzersRequest) -> EventLoopFuture<ListAnalyzersResponse> {
        return client.execute(operation: "ListAnalyzers", path: "/analyzer", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a list of archive rules created for the specified analyzer.
    public func listArchiveRules(_ input: ListArchiveRulesRequest) -> EventLoopFuture<ListArchiveRulesResponse> {
        return client.execute(operation: "ListArchiveRules", path: "/analyzer/{analyzerName}/archive-rule", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a list of findings generated by the specified analyzer.
    public func listFindings(_ input: ListFindingsRequest) -> EventLoopFuture<ListFindingsResponse> {
        return client.execute(operation: "ListFindings", path: "/finding", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a list of tags applied to the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Immediately starts a scan of the policies applied to the specified resource.
    @discardableResult public func startResourceScan(_ input: StartResourceScanRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "StartResourceScan", path: "/resource/scan", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Adds a tag to the specified resource.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Removes a tag from the specified resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Updates the criteria and values for the specified archive rule.
    @discardableResult public func updateArchiveRule(_ input: UpdateArchiveRuleRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "UpdateArchiveRule", path: "/analyzer/{analyzerName}/archive-rule/{ruleName}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Updates the status for the specified findings.
    @discardableResult public func updateFindings(_ input: UpdateFindingsRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "UpdateFindings", path: "/finding", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }
}

extension AccessAnalyzer {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
