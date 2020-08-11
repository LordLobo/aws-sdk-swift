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

extension IoT1ClickProjects {

    ///  Lists the placement(s) of a project.
    public func listPlacementsPaginator(
        _ input: ListPlacementsRequest,
        onPage: @escaping (ListPlacementsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPlacements,
            tokenKey: \ListPlacementsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
    public func listProjectsPaginator(
        _ input: ListProjectsRequest,
        onPage: @escaping (ListProjectsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProjects,
            tokenKey: \ListProjectsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension IoT1ClickProjects.ListPlacementsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoT1ClickProjects.ListPlacementsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName
        )

    }
}

extension IoT1ClickProjects.ListProjectsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoT1ClickProjects.ListProjectsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


