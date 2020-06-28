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
import NIO

/**
Client object for interacting with AWS CognitoSync service.

Amazon Cognito Sync Amazon Cognito Sync provides an AWS service and client library that enable cross-device syncing of application-related user data. High-level client libraries are available for both iOS and Android. You can use these libraries to persist data locally so that it's available even if the device is offline. Developer credentials don't need to be stored on the mobile device to access the service. You can use Amazon Cognito to obtain a normalized user ID and credentials. User data is persisted in a dataset that can store up to 1 MB of key-value pairs, and you can have up to 20 datasets per user identity. With Amazon Cognito Sync, the data stored for each identity is accessible only to credentials assigned to that identity. In order to use the Cognito Sync service, you need to make API calls using credentials retrieved with Amazon Cognito Identity service. If you want to use Cognito Sync in an Android or iOS application, you will probably want to make API calls via the AWS Mobile SDK. To learn more, see the Developer Guide for Android and the Developer Guide for iOS.
*/
public struct CognitoSync {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the CognitoSync client
    /// - parameters:
    ///     - credentialProvider: Object providing credential to sign requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider: CredentialProviderFactory? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "cognito-sync",
            serviceProtocol: .restjson,
            apiVersion: "2014-06-30",
            endpoint: endpoint,
            possibleErrorTypes: [CognitoSyncErrorType.self]
        )
        self.client = AWSClient(
            credentialProviderFactory: credentialProvider ?? .runtime,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func bulkPublish(_ input: BulkPublishRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BulkPublishResponse> {
        return client.execute(operation: "BulkPublish", path: "/identitypools/{IdentityPoolId}/bulkpublish", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the specific dataset. The dataset will be deleted permanently, and the action can't be undone. Datasets that this dataset was merged with will no longer report the merge. Any subsequent operation on this dataset will result in a ResourceNotFoundException. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
    public func deleteDataset(_ input: DeleteDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDatasetResponse> {
        return client.execute(operation: "DeleteDataset", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.
    public func describeDataset(_ input: DescribeDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetResponse> {
        return client.execute(operation: "DescribeDataset", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets usage details (for example, data storage) about a particular identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func describeIdentityPoolUsage(_ input: DescribeIdentityPoolUsageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIdentityPoolUsageResponse> {
        return client.execute(operation: "DescribeIdentityPoolUsage", path: "/identitypools/{IdentityPoolId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets usage information for an identity, including number of datasets and data usage. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
    public func describeIdentityUsage(_ input: DescribeIdentityUsageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIdentityUsageResponse> {
        return client.execute(operation: "DescribeIdentityUsage", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Get the status of the last BulkPublish operation for an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func getBulkPublishDetails(_ input: GetBulkPublishDetailsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBulkPublishDetailsResponse> {
        return client.execute(operation: "GetBulkPublishDetails", path: "/identitypools/{IdentityPoolId}/getBulkPublishDetails", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the events and the corresponding Lambda functions associated with an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func getCognitoEvents(_ input: GetCognitoEventsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCognitoEventsResponse> {
        return client.execute(operation: "GetCognitoEvents", path: "/identitypools/{IdentityPoolId}/events", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the configuration settings of an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func getIdentityPoolConfiguration(_ input: GetIdentityPoolConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIdentityPoolConfigurationResponse> {
        return client.execute(operation: "GetIdentityPoolConfiguration", path: "/identitypools/{IdentityPoolId}/configuration", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call.
    public func listDatasets(_ input: ListDatasetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetsResponse> {
        return client.execute(operation: "ListDatasets", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets a list of identity pools registered with Cognito. ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.
    public func listIdentityPoolUsage(_ input: ListIdentityPoolUsageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIdentityPoolUsageResponse> {
        return client.execute(operation: "ListIdentityPoolUsage", path: "/identitypools", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.
    public func listRecords(_ input: ListRecordsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecordsResponse> {
        return client.execute(operation: "ListRecords", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Registers a device to receive push sync notifications. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
    public func registerDevice(_ input: RegisterDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterDeviceResponse> {
        return client.execute(operation: "RegisterDevice", path: "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    @discardableResult public func setCognitoEvents(_ input: SetCognitoEventsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "SetCognitoEvents", path: "/identitypools/{IdentityPoolId}/events", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Sets the necessary configuration for push sync. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func setIdentityPoolConfiguration(_ input: SetIdentityPoolConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetIdentityPoolConfigurationResponse> {
        return client.execute(operation: "SetIdentityPoolConfiguration", path: "/identitypools/{IdentityPoolId}/configuration", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Subscribes to receive notifications when a dataset is modified by another device. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
    public func subscribeToDataset(_ input: SubscribeToDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubscribeToDatasetResponse> {
        return client.execute(operation: "SubscribeToDataset", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Unsubscribes from receiving notifications when a dataset is modified by another device. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
    public func unsubscribeFromDataset(_ input: UnsubscribeFromDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnsubscribeFromDatasetResponse> {
        return client.execute(operation: "UnsubscribeFromDataset", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Posts updates to records and adds and deletes records for a dataset and user. The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count. For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
    public func updateRecords(_ input: UpdateRecordsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRecordsResponse> {
        return client.execute(operation: "UpdateRecords", path: "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
