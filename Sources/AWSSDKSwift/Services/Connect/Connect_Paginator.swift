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

extension Connect {

    ///  Gets the real-time metric data from the specified Amazon Connect instance. For a description of each metric, see Real-time Metrics Definitions in the Amazon Connect Administrator Guide.
    public func getCurrentMetricDataPaginator(
        _ input: GetCurrentMetricDataRequest,
        onPage: @escaping (GetCurrentMetricDataResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCurrentMetricData,
            tokenKey: \GetCurrentMetricDataResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets historical metric data from the specified Amazon Connect instance. For a description of each historical metric, see Historical Metrics Definitions in the Amazon Connect Administrator Guide.
    public func getMetricDataPaginator(
        _ input: GetMetricDataRequest,
        onPage: @escaping (GetMetricDataResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getMetricData,
            tokenKey: \GetMetricDataResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Provides information about the contact flows for the specified Amazon Connect instance. For more information about contact flows, see Contact Flows in the Amazon Connect Administrator Guide.
    public func listContactFlowsPaginator(
        _ input: ListContactFlowsRequest,
        onPage: @escaping (ListContactFlowsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listContactFlows,
            tokenKey: \ListContactFlowsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Provides information about the hours of operation for the specified Amazon Connect instance. For more information about hours of operation, see Set the Hours of Operation for a Queue in the Amazon Connect Administrator Guide.
    public func listHoursOfOperationsPaginator(
        _ input: ListHoursOfOperationsRequest,
        onPage: @escaping (ListHoursOfOperationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listHoursOfOperations,
            tokenKey: \ListHoursOfOperationsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Provides information about the phone numbers for the specified Amazon Connect instance.  For more information about phone numbers, see Set Up Phone Numbers for Your Contact Center in the Amazon Connect Administrator Guide.
    public func listPhoneNumbersPaginator(
        _ input: ListPhoneNumbersRequest,
        onPage: @escaping (ListPhoneNumbersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPhoneNumbers,
            tokenKey: \ListPhoneNumbersResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Provides information about the queues for the specified Amazon Connect instance. For more information about queues, see Queues: Standard and Agent in the Amazon Connect Administrator Guide.
    public func listQueuesPaginator(
        _ input: ListQueuesRequest,
        onPage: @escaping (ListQueuesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listQueues,
            tokenKey: \ListQueuesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Provides summary information about the routing profiles for the specified Amazon Connect instance. For more information about routing profiles, see Routing Profiles and Create a Routing Profile in the Amazon Connect Administrator Guide.
    public func listRoutingProfilesPaginator(
        _ input: ListRoutingProfilesRequest,
        onPage: @escaping (ListRoutingProfilesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRoutingProfiles,
            tokenKey: \ListRoutingProfilesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Provides summary information about the security profiles for the specified Amazon Connect instance. For more information about security profiles, see Security Profiles in the Amazon Connect Administrator Guide.
    public func listSecurityProfilesPaginator(
        _ input: ListSecurityProfilesRequest,
        onPage: @escaping (ListSecurityProfilesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSecurityProfiles,
            tokenKey: \ListSecurityProfilesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Provides summary information about the hierarchy groups for the specified Amazon Connect instance. For more information about agent hierarchies, see Set Up Agent Hierarchies in the Amazon Connect Administrator Guide.
    public func listUserHierarchyGroupsPaginator(
        _ input: ListUserHierarchyGroupsRequest,
        onPage: @escaping (ListUserHierarchyGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listUserHierarchyGroups,
            tokenKey: \ListUserHierarchyGroupsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Provides summary information about the users for the specified Amazon Connect instance.
    public func listUsersPaginator(
        _ input: ListUsersRequest,
        onPage: @escaping (ListUsersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listUsers,
            tokenKey: \ListUsersResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension Connect.GetCurrentMetricDataRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Connect.GetCurrentMetricDataRequest {
        return .init(
            currentMetrics: self.currentMetrics,
            filters: self.filters,
            groupings: self.groupings,
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Connect.GetMetricDataRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Connect.GetMetricDataRequest {
        return .init(
            endTime: self.endTime,
            filters: self.filters,
            groupings: self.groupings,
            historicalMetrics: self.historicalMetrics,
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token,
            startTime: self.startTime
        )

    }
}

extension Connect.ListContactFlowsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Connect.ListContactFlowsRequest {
        return .init(
            contactFlowTypes: self.contactFlowTypes,
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Connect.ListHoursOfOperationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Connect.ListHoursOfOperationsRequest {
        return .init(
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Connect.ListPhoneNumbersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Connect.ListPhoneNumbersRequest {
        return .init(
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token,
            phoneNumberCountryCodes: self.phoneNumberCountryCodes,
            phoneNumberTypes: self.phoneNumberTypes
        )

    }
}

extension Connect.ListQueuesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Connect.ListQueuesRequest {
        return .init(
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token,
            queueTypes: self.queueTypes
        )

    }
}

extension Connect.ListRoutingProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Connect.ListRoutingProfilesRequest {
        return .init(
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Connect.ListSecurityProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Connect.ListSecurityProfilesRequest {
        return .init(
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Connect.ListUserHierarchyGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Connect.ListUserHierarchyGroupsRequest {
        return .init(
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Connect.ListUsersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Connect.ListUsersRequest {
        return .init(
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


