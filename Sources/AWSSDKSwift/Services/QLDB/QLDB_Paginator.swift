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

extension QLDB {

    ///  Returns an array of all Amazon QLDB journal stream descriptors for a given ledger. The output of each stream descriptor includes the same details that are returned by DescribeJournalKinesisStream. This action returns a maximum of MaxResults items. It is paginated so that you can retrieve all the items by calling ListJournalKinesisStreamsForLedger multiple times.
    public func listJournalKinesisStreamsForLedgerPaginator(
        _ input: ListJournalKinesisStreamsForLedgerRequest,
        onPage: @escaping (ListJournalKinesisStreamsForLedgerResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJournalKinesisStreamsForLedger,
            tokenKey: \ListJournalKinesisStreamsForLedgerResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns an array of journal export job descriptions for all ledgers that are associated with the current AWS account and Region. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3Exports multiple times. This action does not return any expired export jobs. For more information, see Export Job Expiration in the Amazon QLDB Developer Guide.
    public func listJournalS3ExportsPaginator(
        _ input: ListJournalS3ExportsRequest,
        onPage: @escaping (ListJournalS3ExportsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJournalS3Exports,
            tokenKey: \ListJournalS3ExportsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns an array of journal export job descriptions for a specified ledger. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3ExportsForLedger multiple times. This action does not return any expired export jobs. For more information, see Export Job Expiration in the Amazon QLDB Developer Guide.
    public func listJournalS3ExportsForLedgerPaginator(
        _ input: ListJournalS3ExportsForLedgerRequest,
        onPage: @escaping (ListJournalS3ExportsForLedgerResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJournalS3ExportsForLedger,
            tokenKey: \ListJournalS3ExportsForLedgerResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns an array of ledger summaries that are associated with the current AWS account and Region. This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling ListLedgers multiple times.
    public func listLedgersPaginator(
        _ input: ListLedgersRequest,
        onPage: @escaping (ListLedgersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listLedgers,
            tokenKey: \ListLedgersResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension QLDB.ListJournalKinesisStreamsForLedgerRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QLDB.ListJournalKinesisStreamsForLedgerRequest {
        return .init(
            ledgerName: self.ledgerName,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension QLDB.ListJournalS3ExportsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QLDB.ListJournalS3ExportsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension QLDB.ListJournalS3ExportsForLedgerRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QLDB.ListJournalS3ExportsForLedgerRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )

    }
}

extension QLDB.ListLedgersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QLDB.ListLedgersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


