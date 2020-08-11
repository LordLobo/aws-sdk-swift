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

extension Glacier {

    ///  This operation lists jobs for a vault, including jobs that are in-progress and jobs that have recently finished. The List Job operation returns a list of these jobs sorted by job initiation time.  Amazon Glacier retains recently completed jobs for a period before deleting them; however, it eventually removes completed jobs. The output of completed jobs can be retrieved. Retaining completed jobs for a period of time after they have completed enables you to get a job output in the event you miss the job completion notification or your first attempt to download it fails. For example, suppose you start an archive retrieval job to download an archive. After the job completes, you start to download the archive but encounter a network error. In this scenario, you can retry and download the archive while the job exists.  The List Jobs operation supports pagination. You should always check the response Marker field. If there are no more jobs to list, the Marker field is set to null. If there are more jobs to list, the Marker field is set to a non-null value, which you can use to continue the pagination of the list. To return a list of jobs that begins at a specific job, set the marker request parameter to the Marker value for that job that you obtained from a previous List Jobs request. You can set a maximum limit for the number of jobs returned in the response by specifying the limit parameter in the request. The default limit is 50. The number of jobs returned might be fewer than the limit, but the number of returned jobs never exceeds the limit. Additionally, you can filter the jobs list returned by specifying the optional statuscode parameter or completed parameter, or both. Using the statuscode parameter, you can specify to return only jobs that match either the InProgress, Succeeded, or Failed status. Using the completed parameter, you can specify to return only jobs that were completed (true) or jobs that were not completed (false). For more information about using this operation, see the documentation for the underlying REST API List Jobs. 
    public func listJobsPaginator(
        _ input: ListJobsInput,
        onPage: @escaping (ListJobsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJobs,
            tokenKey: \ListJobsOutput.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  This operation lists in-progress multipart uploads for the specified vault. An in-progress multipart upload is a multipart upload that has been initiated by an InitiateMultipartUpload request, but has not yet been completed or aborted. The list returned in the List Multipart Upload response has no guaranteed order.  The List Multipart Uploads operation supports pagination. By default, this operation returns up to 50 multipart uploads in the response. You should always check the response for a marker at which to continue the list; if there are no more items the marker is null. To return a list of multipart uploads that begins at a specific upload, set the marker request parameter to the value you obtained from a previous List Multipart Upload request. You can also limit the number of uploads returned in the response by specifying the limit parameter in the request. Note the difference between this operation and listing parts (ListParts). The List Multipart Uploads operation lists all multipart uploads for a vault and does not require a multipart upload ID. The List Parts operation requires a multipart upload ID since parts are associated with a single upload. An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see Access Control Using AWS Identity and Access Management (IAM). For conceptual information and the underlying REST API, see Working with Archives in Amazon S3 Glacier and List Multipart Uploads  in the Amazon Glacier Developer Guide.
    public func listMultipartUploadsPaginator(
        _ input: ListMultipartUploadsInput,
        onPage: @escaping (ListMultipartUploadsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMultipartUploads,
            tokenKey: \ListMultipartUploadsOutput.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  This operation lists the parts of an archive that have been uploaded in a specific multipart upload. You can make this request at any time during an in-progress multipart upload before you complete the upload (see CompleteMultipartUpload. List Parts returns an error for completed uploads. The list returned in the List Parts response is sorted by part range.  The List Parts operation supports pagination. By default, this operation returns up to 50 uploaded parts in the response. You should always check the response for a marker at which to continue the list; if there are no more items the marker is null. To return a list of parts that begins at a specific part, set the marker request parameter to the value you obtained from a previous List Parts request. You can also limit the number of parts returned in the response by specifying the limit parameter in the request.  An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see Access Control Using AWS Identity and Access Management (IAM). For conceptual information and the underlying REST API, see Working with Archives in Amazon S3 Glacier and List Parts in the Amazon Glacier Developer Guide.
    public func listPartsPaginator(
        _ input: ListPartsInput,
        onPage: @escaping (ListPartsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listParts,
            tokenKey: \ListPartsOutput.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  This operation lists all vaults owned by the calling user's account. The list returned in the response is ASCII-sorted by vault name. By default, this operation returns up to 10 items. If there are more vaults to list, the response marker field contains the vault Amazon Resource Name (ARN) at which to continue the list with a new List Vaults request; otherwise, the marker field is null. To return a list of vaults that begins at a specific vault, set the marker request parameter to the vault ARN you obtained from a previous List Vaults request. You can also limit the number of vaults returned in the response by specifying the limit parameter in the request.  An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see Access Control Using AWS Identity and Access Management (IAM). For conceptual information and underlying REST API, see Retrieving Vault Metadata in Amazon S3 Glacier and List Vaults  in the Amazon Glacier Developer Guide. 
    public func listVaultsPaginator(
        _ input: ListVaultsInput,
        onPage: @escaping (ListVaultsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listVaults,
            tokenKey: \ListVaultsOutput.marker,
            context: self.context,
            onPage: onPage
        )
    }

}

extension Glacier.ListJobsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glacier.ListJobsInput {
        return .init(
            accountId: self.accountId,
            completed: self.completed,
            limit: self.limit,
            marker: token,
            statuscode: self.statuscode,
            vaultName: self.vaultName
        )

    }
}

extension Glacier.ListMultipartUploadsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glacier.ListMultipartUploadsInput {
        return .init(
            accountId: self.accountId,
            limit: self.limit,
            marker: token,
            vaultName: self.vaultName
        )

    }
}

extension Glacier.ListPartsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glacier.ListPartsInput {
        return .init(
            accountId: self.accountId,
            limit: self.limit,
            marker: token,
            uploadId: self.uploadId,
            vaultName: self.vaultName
        )

    }
}

extension Glacier.ListVaultsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glacier.ListVaultsInput {
        return .init(
            accountId: self.accountId,
            limit: self.limit,
            marker: token
        )

    }
}


