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

import AWSSDKSwiftCore

//MARK: Paginators

extension ApplicationAutoScaling {

    ///  Gets information about the scalable targets in the specified namespace. You can filter the results using ResourceIds and ScalableDimension.
    public func describeScalableTargetsPaginator(
        _ input: DescribeScalableTargetsRequest,
        onPage: @escaping (DescribeScalableTargetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeScalableTargets,
            tokenKey: \DescribeScalableTargetsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks. You can filter the results using ResourceId and ScalableDimension.
    public func describeScalingActivitiesPaginator(
        _ input: DescribeScalingActivitiesRequest,
        onPage: @escaping (DescribeScalingActivitiesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeScalingActivities,
            tokenKey: \DescribeScalingActivitiesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Describes the Application Auto Scaling scaling policies for the specified service namespace. You can filter the results using ResourceId, ScalableDimension, and PolicyNames. For more information, see Target Tracking Scaling Policies and Step Scaling Policies in the Application Auto Scaling User Guide.
    public func describeScalingPoliciesPaginator(
        _ input: DescribeScalingPoliciesRequest,
        onPage: @escaping (DescribeScalingPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeScalingPolicies,
            tokenKey: \DescribeScalingPoliciesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Describes the Application Auto Scaling scheduled actions for the specified service namespace. You can filter the results using the ResourceId, ScalableDimension, and ScheduledActionNames parameters. For more information, see Scheduled Scaling in the Application Auto Scaling User Guide.
    public func describeScheduledActionsPaginator(
        _ input: DescribeScheduledActionsRequest,
        onPage: @escaping (DescribeScheduledActionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeScheduledActions,
            tokenKey: \DescribeScheduledActionsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension ApplicationAutoScaling.DescribeScalableTargetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationAutoScaling.DescribeScalableTargetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceIds: self.resourceIds,
            scalableDimension: self.scalableDimension,
            serviceNamespace: self.serviceNamespace
        )

    }
}

extension ApplicationAutoScaling.DescribeScalingActivitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationAutoScaling.DescribeScalingActivitiesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceId: self.resourceId,
            scalableDimension: self.scalableDimension,
            serviceNamespace: self.serviceNamespace
        )

    }
}

extension ApplicationAutoScaling.DescribeScalingPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationAutoScaling.DescribeScalingPoliciesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            policyNames: self.policyNames,
            resourceId: self.resourceId,
            scalableDimension: self.scalableDimension,
            serviceNamespace: self.serviceNamespace
        )

    }
}

extension ApplicationAutoScaling.DescribeScheduledActionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationAutoScaling.DescribeScheduledActionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceId: self.resourceId,
            scalableDimension: self.scalableDimension,
            scheduledActionNames: self.scheduledActionNames,
            serviceNamespace: self.serviceNamespace
        )

    }
}


