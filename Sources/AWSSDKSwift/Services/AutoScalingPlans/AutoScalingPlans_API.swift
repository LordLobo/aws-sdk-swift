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
Client object for interacting with AWS AutoScalingPlans service.

AWS Auto Scaling Use AWS Auto Scaling to quickly discover all the scalable AWS resources for your application and configure dynamic scaling and predictive scaling for your resources using scaling plans. Use this service in conjunction with the Amazon EC2 Auto Scaling, Application Auto Scaling, Amazon CloudWatch, and AWS CloudFormation services.  Currently, predictive scaling is only available for Amazon EC2 Auto Scaling groups. For more information about AWS Auto Scaling, including information about granting IAM users required permissions for AWS Auto Scaling actions, see the AWS Auto Scaling User Guide.
*/
public struct AutoScalingPlans: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the AutoScalingPlans client
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
            amzTarget: "AnyScaleScalingPlannerFrontendService",
            service: "autoscaling-plans",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-01-06",
            endpoint: endpoint,
            possibleErrorTypes: [AutoScalingPlansErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }
    
    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }
    
    //MARK: API Calls

    ///  Creates a scaling plan.
    public func createScalingPlan(_ input: CreateScalingPlanRequest) -> EventLoopFuture<CreateScalingPlanResponse> {
        return client.execute(operation: "CreateScalingPlan", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the specified scaling plan. Deleting a scaling plan deletes the underlying ScalingInstruction for all of the scalable resources that are covered by the plan. If the plan has launched resources or has scaling activities in progress, you must delete those resources separately.
    public func deleteScalingPlan(_ input: DeleteScalingPlanRequest) -> EventLoopFuture<DeleteScalingPlanResponse> {
        return client.execute(operation: "DeleteScalingPlan", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Describes the scalable resources in the specified scaling plan.
    public func describeScalingPlanResources(_ input: DescribeScalingPlanResourcesRequest) -> EventLoopFuture<DescribeScalingPlanResourcesResponse> {
        return client.execute(operation: "DescribeScalingPlanResources", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Describes one or more of your scaling plans.
    public func describeScalingPlans(_ input: DescribeScalingPlansRequest) -> EventLoopFuture<DescribeScalingPlansResponse> {
        return client.execute(operation: "DescribeScalingPlans", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves the forecast data for a scalable resource. Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days. 
    public func getScalingPlanResourceForecastData(_ input: GetScalingPlanResourceForecastDataRequest) -> EventLoopFuture<GetScalingPlanResourceForecastDataResponse> {
        return client.execute(operation: "GetScalingPlanResourceForecastData", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates the specified scaling plan. You cannot update a scaling plan if it is in the process of being created, updated, or deleted.
    public func updateScalingPlan(_ input: UpdateScalingPlanRequest) -> EventLoopFuture<UpdateScalingPlanResponse> {
        return client.execute(operation: "UpdateScalingPlan", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension AutoScalingPlans {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
