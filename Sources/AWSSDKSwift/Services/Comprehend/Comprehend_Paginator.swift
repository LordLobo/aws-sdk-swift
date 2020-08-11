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

extension Comprehend {

    ///  Gets a list of the documentation classification jobs that you have submitted.
    public func listDocumentClassificationJobsPaginator(
        _ input: ListDocumentClassificationJobsRequest,
        onPage: @escaping (ListDocumentClassificationJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDocumentClassificationJobs,
            tokenKey: \ListDocumentClassificationJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of the document classifiers that you have created.
    public func listDocumentClassifiersPaginator(
        _ input: ListDocumentClassifiersRequest,
        onPage: @escaping (ListDocumentClassifiersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDocumentClassifiers,
            tokenKey: \ListDocumentClassifiersResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of the dominant language detection jobs that you have submitted.
    public func listDominantLanguageDetectionJobsPaginator(
        _ input: ListDominantLanguageDetectionJobsRequest,
        onPage: @escaping (ListDominantLanguageDetectionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDominantLanguageDetectionJobs,
            tokenKey: \ListDominantLanguageDetectionJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of the entity detection jobs that you have submitted.
    public func listEntitiesDetectionJobsPaginator(
        _ input: ListEntitiesDetectionJobsRequest,
        onPage: @escaping (ListEntitiesDetectionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEntitiesDetectionJobs,
            tokenKey: \ListEntitiesDetectionJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training. Allows you to filter the list of recognizers based on criteria such as status and submission time. This call returns up to 500 entity recognizers in the list, with a default number of 100 recognizers in the list. The results of this list are not in any particular order. Please get the list and sort locally if needed.
    public func listEntityRecognizersPaginator(
        _ input: ListEntityRecognizersRequest,
        onPage: @escaping (ListEntityRecognizersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEntityRecognizers,
            tokenKey: \ListEntityRecognizersResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Get a list of key phrase detection jobs that you have submitted.
    public func listKeyPhrasesDetectionJobsPaginator(
        _ input: ListKeyPhrasesDetectionJobsRequest,
        onPage: @escaping (ListKeyPhrasesDetectionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listKeyPhrasesDetectionJobs,
            tokenKey: \ListKeyPhrasesDetectionJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of sentiment detection jobs that you have submitted.
    public func listSentimentDetectionJobsPaginator(
        _ input: ListSentimentDetectionJobsRequest,
        onPage: @escaping (ListSentimentDetectionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSentimentDetectionJobs,
            tokenKey: \ListSentimentDetectionJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of the topic detection jobs that you have submitted.
    public func listTopicsDetectionJobsPaginator(
        _ input: ListTopicsDetectionJobsRequest,
        onPage: @escaping (ListTopicsDetectionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTopicsDetectionJobs,
            tokenKey: \ListTopicsDetectionJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension Comprehend.ListDocumentClassificationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListDocumentClassificationJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Comprehend.ListDocumentClassifiersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListDocumentClassifiersRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Comprehend.ListDominantLanguageDetectionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListDominantLanguageDetectionJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Comprehend.ListEntitiesDetectionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListEntitiesDetectionJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Comprehend.ListEntityRecognizersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListEntityRecognizersRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Comprehend.ListKeyPhrasesDetectionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListKeyPhrasesDetectionJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Comprehend.ListSentimentDetectionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListSentimentDetectionJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Comprehend.ListTopicsDetectionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListTopicsDetectionJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


