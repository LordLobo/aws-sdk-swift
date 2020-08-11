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
        self.context = AWSServiceContext(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AnyScaleScalingPlannerFrontendService",
            service: "autoscaling-plans",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-01-06",
            endpoint: endpoint,
            errorType: AutoScalingPlansErrorType.self,
            timeout: timeout
        )
    }
    
    /// return new `AutoScalingPlans` with new timeout value
    public func timingOut(after timeout: TimeAmount) -> Self {
        return .init(client: self.client, context: self.context.timingOut(after: timeout))
    }

    /// return new `AutoScalingPlans` logging to specified Logger
    public func logging(to logger: Logger) -> Self {
        return .init(client: self.client, context: self.context.logging(to: logger))
    }
    
    //MARK: API Calls

    ///  Creates a scaling plan.
    public func createScalingPlan(_ input: CreateScalingPlanRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateScalingPlanResponse> {
        return client.execute(operation: "CreateScalingPlan", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Deletes the specified scaling plan. Deleting a scaling plan deletes the underlying ScalingInstruction for all of the scalable resources that are covered by the plan. If the plan has launched resources or has scaling activities in progress, you must delete those resources separately.
    public func deleteScalingPlan(_ input: DeleteScalingPlanRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScalingPlanResponse> {
        return client.execute(operation: "DeleteScalingPlan", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Describes the scalable resources in the specified scaling plan.
    public func describeScalingPlanResources(_ input: DescribeScalingPlanResourcesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScalingPlanResourcesResponse> {
        return client.execute(operation: "DescribeScalingPlanResources", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Describes one or more of your scaling plans.
    public func describeScalingPlans(_ input: DescribeScalingPlansRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScalingPlansResponse> {
        return client.execute(operation: "DescribeScalingPlans", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Retrieves the forecast data for a scalable resource. Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days. 
    public func getScalingPlanResourceForecastData(_ input: GetScalingPlanResourceForecastDataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetScalingPlanResourceForecastDataResponse> {
        return client.execute(operation: "GetScalingPlanResourceForecastData", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Updates the specified scaling plan. You cannot update a scaling plan if it is in the process of being created, updated, or deleted.
    public func updateScalingPlan(_ input: UpdateScalingPlanRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateScalingPlanResponse> {
        return client.execute(operation: "UpdateScalingPlan", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }
}

extension AutoScalingPlans {
    init(client: AWSClient, context: AWSServiceContext) {
        self.client = client
        self.context = context
    }
}
