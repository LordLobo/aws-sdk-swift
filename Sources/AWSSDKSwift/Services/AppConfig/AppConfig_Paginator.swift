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

extension AppConfig {

    ///  List all applications in your AWS account.
    public func listApplicationsPaginator(
        _ input: ListApplicationsRequest,
        onPage: @escaping (Applications, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listApplications,
            tokenKey: \Applications.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the configuration profiles for an application.
    public func listConfigurationProfilesPaginator(
        _ input: ListConfigurationProfilesRequest,
        onPage: @escaping (ConfigurationProfiles, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listConfigurationProfiles,
            tokenKey: \ConfigurationProfiles.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  List deployment strategies.
    public func listDeploymentStrategiesPaginator(
        _ input: ListDeploymentStrategiesRequest,
        onPage: @escaping (DeploymentStrategies, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDeploymentStrategies,
            tokenKey: \DeploymentStrategies.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the deployments for an environment.
    public func listDeploymentsPaginator(
        _ input: ListDeploymentsRequest,
        onPage: @escaping (Deployments, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDeployments,
            tokenKey: \Deployments.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  List the environments for an application.
    public func listEnvironmentsPaginator(
        _ input: ListEnvironmentsRequest,
        onPage: @escaping (Environments, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEnvironments,
            tokenKey: \Environments.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  View a list of configurations stored in the AppConfig configuration store by version.
    public func listHostedConfigurationVersionsPaginator(
        _ input: ListHostedConfigurationVersionsRequest,
        onPage: @escaping (HostedConfigurationVersions, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listHostedConfigurationVersions,
            tokenKey: \HostedConfigurationVersions.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension AppConfig.ListApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppConfig.ListApplicationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension AppConfig.ListConfigurationProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppConfig.ListConfigurationProfilesRequest {
        return .init(
            applicationId: self.applicationId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension AppConfig.ListDeploymentStrategiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppConfig.ListDeploymentStrategiesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension AppConfig.ListDeploymentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppConfig.ListDeploymentsRequest {
        return .init(
            applicationId: self.applicationId,
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension AppConfig.ListEnvironmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppConfig.ListEnvironmentsRequest {
        return .init(
            applicationId: self.applicationId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension AppConfig.ListHostedConfigurationVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppConfig.ListHostedConfigurationVersionsRequest {
        return .init(
            applicationId: self.applicationId,
            configurationProfileId: self.configurationProfileId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


