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

extension Shield {

    ///  Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.
    public func listAttacksPaginator(
        _ input: ListAttacksRequest,
        onPage: @escaping (ListAttacksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAttacks,
            tokenKey: \ListAttacksResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists all Protection objects for the account.
    public func listProtectionsPaginator(
        _ input: ListProtectionsRequest,
        onPage: @escaping (ListProtectionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProtections,
            tokenKey: \ListProtectionsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension Shield.ListAttacksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Shield.ListAttacksRequest {
        return .init(
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            resourceArns: self.resourceArns,
            startTime: self.startTime
        )

    }
}

extension Shield.ListProtectionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Shield.ListProtectionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


