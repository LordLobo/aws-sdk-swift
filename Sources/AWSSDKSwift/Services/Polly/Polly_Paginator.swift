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

extension Polly {

    ///  Returns a list of SpeechSynthesisTask objects ordered by their creation date. This operation can filter the tasks by their status, for example, allowing users to list only tasks that are completed.
    public func listSpeechSynthesisTasksPaginator(
        _ input: ListSpeechSynthesisTasksInput,
        onPage: @escaping (ListSpeechSynthesisTasksOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSpeechSynthesisTasks,
            tokenKey: \ListSpeechSynthesisTasksOutput.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension Polly.ListSpeechSynthesisTasksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Polly.ListSpeechSynthesisTasksInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )

    }
}


