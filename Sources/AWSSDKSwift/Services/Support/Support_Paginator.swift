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

extension Support {

    ///  Returns a list of cases that you specify by passing one or more case IDs. You can use the afterTime and beforeTime parameters to filter the cases by date. You can set values for the includeResolvedCases and includeCommunications parameters to specify how much information to return. The response returns the following in JSON format:   One or more CaseDetails data types.   One or more nextToken values, which specify where to paginate the returned records represented by the CaseDetails objects.   Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request might return an error.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func describeCasesPaginator(
        _ input: DescribeCasesRequest,
        onPage: @escaping (DescribeCasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeCases,
            tokenKey: \DescribeCasesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns communications and attachments for one or more support cases. Use the afterTime and beforeTime parameters to filter by date. You can use the caseId parameter to restrict the results to a specific case. Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error. You can use the maxResults and nextToken parameters to control the pagination of the results. Set maxResults to the number of cases that you want to display on each page, and use nextToken to specify the resumption of pagination.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func describeCommunicationsPaginator(
        _ input: DescribeCommunicationsRequest,
        onPage: @escaping (DescribeCommunicationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeCommunications,
            tokenKey: \DescribeCommunicationsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension Support.DescribeCasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Support.DescribeCasesRequest {
        return .init(
            afterTime: self.afterTime,
            beforeTime: self.beforeTime,
            caseIdList: self.caseIdList,
            displayId: self.displayId,
            includeCommunications: self.includeCommunications,
            includeResolvedCases: self.includeResolvedCases,
            language: self.language,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Support.DescribeCommunicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Support.DescribeCommunicationsRequest {
        return .init(
            afterTime: self.afterTime,
            beforeTime: self.beforeTime,
            caseId: self.caseId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


