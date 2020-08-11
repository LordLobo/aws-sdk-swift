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

extension NetworkManager {

    ///  Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.
    public func describeGlobalNetworksPaginator(
        _ input: DescribeGlobalNetworksRequest,
        onPage: @escaping (DescribeGlobalNetworksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeGlobalNetworks,
            tokenKey: \DescribeGlobalNetworksResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets the association information for customer gateways that are associated with devices and links in your global network.
    public func getCustomerGatewayAssociationsPaginator(
        _ input: GetCustomerGatewayAssociationsRequest,
        onPage: @escaping (GetCustomerGatewayAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCustomerGatewayAssociations,
            tokenKey: \GetCustomerGatewayAssociationsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets information about one or more of your devices in a global network.
    public func getDevicesPaginator(
        _ input: GetDevicesRequest,
        onPage: @escaping (GetDevicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getDevices,
            tokenKey: \GetDevicesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.
    public func getLinkAssociationsPaginator(
        _ input: GetLinkAssociationsRequest,
        onPage: @escaping (GetLinkAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getLinkAssociations,
            tokenKey: \GetLinkAssociationsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.
    public func getLinksPaginator(
        _ input: GetLinksRequest,
        onPage: @escaping (GetLinksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getLinks,
            tokenKey: \GetLinksResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets information about one or more of your sites in a global network.
    public func getSitesPaginator(
        _ input: GetSitesRequest,
        onPage: @escaping (GetSitesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getSites,
            tokenKey: \GetSitesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets information about the transit gateway registrations in a specified global network.
    public func getTransitGatewayRegistrationsPaginator(
        _ input: GetTransitGatewayRegistrationsRequest,
        onPage: @escaping (GetTransitGatewayRegistrationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTransitGatewayRegistrations,
            tokenKey: \GetTransitGatewayRegistrationsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension NetworkManager.DescribeGlobalNetworksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.DescribeGlobalNetworksRequest {
        return .init(
            globalNetworkIds: self.globalNetworkIds,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension NetworkManager.GetCustomerGatewayAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.GetCustomerGatewayAssociationsRequest {
        return .init(
            customerGatewayArns: self.customerGatewayArns,
            globalNetworkId: self.globalNetworkId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension NetworkManager.GetDevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.GetDevicesRequest {
        return .init(
            deviceIds: self.deviceIds,
            globalNetworkId: self.globalNetworkId,
            maxResults: self.maxResults,
            nextToken: token,
            siteId: self.siteId
        )

    }
}

extension NetworkManager.GetLinkAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.GetLinkAssociationsRequest {
        return .init(
            deviceId: self.deviceId,
            globalNetworkId: self.globalNetworkId,
            linkId: self.linkId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension NetworkManager.GetLinksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.GetLinksRequest {
        return .init(
            globalNetworkId: self.globalNetworkId,
            linkIds: self.linkIds,
            maxResults: self.maxResults,
            nextToken: token,
            provider: self.provider,
            siteId: self.siteId,
            type: self.type
        )

    }
}

extension NetworkManager.GetSitesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.GetSitesRequest {
        return .init(
            globalNetworkId: self.globalNetworkId,
            maxResults: self.maxResults,
            nextToken: token,
            siteIds: self.siteIds
        )

    }
}

extension NetworkManager.GetTransitGatewayRegistrationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.GetTransitGatewayRegistrationsRequest {
        return .init(
            globalNetworkId: self.globalNetworkId,
            maxResults: self.maxResults,
            nextToken: token,
            transitGatewayArns: self.transitGatewayArns
        )

    }
}


