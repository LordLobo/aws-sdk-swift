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

/**
Client object for interacting with AWS GroundStation service.

Welcome to the AWS Ground Station API Reference. AWS Ground Station is a fully managed service that enables you to control satellite communications, downlink and process satellite data, and scale your satellite operations efficiently and cost-effectively without having to build or manage your own ground station infrastructure.
*/
public struct GroundStation: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the GroundStation client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "groundstation",
            serviceProtocol: .restjson,
            apiVersion: "2019-05-23",
            endpoint: endpoint,
            possibleErrorTypes: [GroundStationErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }
    
    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }
    
    //MARK: API Calls

    ///  Cancels a contact with a specified contact ID.
    public func cancelContact(_ input: CancelContactRequest) -> EventLoopFuture<ContactIdResponse> {
        return client.execute(operation: "CancelContact", path: "/contact/{contactId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Creates a Config with the specified configData parameters. Only one type of configData can be specified.
    public func createConfig(_ input: CreateConfigRequest) -> EventLoopFuture<ConfigIdResponse> {
        return client.execute(operation: "CreateConfig", path: "/config", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects. The name field in each endpoint is used in your mission profile DataflowEndpointConfig to specify which endpoints to use during a contact. When a contact uses multiple DataflowEndpointConfig objects, each Config must match a DataflowEndpoint in the same group.
    public func createDataflowEndpointGroup(_ input: CreateDataflowEndpointGroupRequest) -> EventLoopFuture<DataflowEndpointGroupIdResponse> {
        return client.execute(operation: "CreateDataflowEndpointGroup", path: "/dataflowEndpointGroup", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a mission profile.  dataflowEdges is a list of lists of strings. Each lower level list of strings has two elements: a from ARN and a to ARN.
    public func createMissionProfile(_ input: CreateMissionProfileRequest) -> EventLoopFuture<MissionProfileIdResponse> {
        return client.execute(operation: "CreateMissionProfile", path: "/missionprofile", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a Config.
    public func deleteConfig(_ input: DeleteConfigRequest) -> EventLoopFuture<ConfigIdResponse> {
        return client.execute(operation: "DeleteConfig", path: "/config/{configType}/{configId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a dataflow endpoint group.
    public func deleteDataflowEndpointGroup(_ input: DeleteDataflowEndpointGroupRequest) -> EventLoopFuture<DataflowEndpointGroupIdResponse> {
        return client.execute(operation: "DeleteDataflowEndpointGroup", path: "/dataflowEndpointGroup/{dataflowEndpointGroupId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a mission profile.
    public func deleteMissionProfile(_ input: DeleteMissionProfileRequest) -> EventLoopFuture<MissionProfileIdResponse> {
        return client.execute(operation: "DeleteMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Describes an existing contact.
    public func describeContact(_ input: DescribeContactRequest) -> EventLoopFuture<DescribeContactResponse> {
        return client.execute(operation: "DescribeContact", path: "/contact/{contactId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Returns Config information. Only one Config response can be returned.
    public func getConfig(_ input: GetConfigRequest) -> EventLoopFuture<GetConfigResponse> {
        return client.execute(operation: "GetConfig", path: "/config/{configType}/{configId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Returns the dataflow endpoint group.
    public func getDataflowEndpointGroup(_ input: GetDataflowEndpointGroupRequest) -> EventLoopFuture<GetDataflowEndpointGroupResponse> {
        return client.execute(operation: "GetDataflowEndpointGroup", path: "/dataflowEndpointGroup/{dataflowEndpointGroupId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Returns the number of minutes used by account.
    public func getMinuteUsage(_ input: GetMinuteUsageRequest) -> EventLoopFuture<GetMinuteUsageResponse> {
        return client.execute(operation: "GetMinuteUsage", path: "/minute-usage", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns a mission profile.
    public func getMissionProfile(_ input: GetMissionProfileRequest) -> EventLoopFuture<GetMissionProfileResponse> {
        return client.execute(operation: "GetMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Returns a satellite.
    public func getSatellite(_ input: GetSatelliteRequest) -> EventLoopFuture<GetSatelliteResponse> {
        return client.execute(operation: "GetSatellite", path: "/satellite/{satelliteId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of Config objects.
    public func listConfigs(_ input: ListConfigsRequest) -> EventLoopFuture<ListConfigsResponse> {
        return client.execute(operation: "ListConfigs", path: "/config", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn. 
    public func listContacts(_ input: ListContactsRequest) -> EventLoopFuture<ListContactsResponse> {
        return client.execute(operation: "ListContacts", path: "/contacts", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of DataflowEndpoint groups.
    public func listDataflowEndpointGroups(_ input: ListDataflowEndpointGroupsRequest) -> EventLoopFuture<ListDataflowEndpointGroupsResponse> {
        return client.execute(operation: "ListDataflowEndpointGroups", path: "/dataflowEndpointGroup", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of ground stations. 
    public func listGroundStations(_ input: ListGroundStationsRequest) -> EventLoopFuture<ListGroundStationsResponse> {
        return client.execute(operation: "ListGroundStations", path: "/groundstation", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of mission profiles.
    public func listMissionProfiles(_ input: ListMissionProfilesRequest) -> EventLoopFuture<ListMissionProfilesResponse> {
        return client.execute(operation: "ListMissionProfiles", path: "/missionprofile", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of satellites.
    public func listSatellites(_ input: ListSatellitesRequest) -> EventLoopFuture<ListSatellitesResponse> {
        return client.execute(operation: "ListSatellites", path: "/satellite", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of tags for a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Reserves a contact using specified parameters.
    public func reserveContact(_ input: ReserveContactRequest) -> EventLoopFuture<ContactIdResponse> {
        return client.execute(operation: "ReserveContact", path: "/contact", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Assigns a tag to a resource.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deassigns a resource tag.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Updates the Config used when scheduling contacts. Updating a Config will not update the execution parameters for existing future contacts scheduled with this Config.
    public func updateConfig(_ input: UpdateConfigRequest) -> EventLoopFuture<ConfigIdResponse> {
        return client.execute(operation: "UpdateConfig", path: "/config/{configType}/{configId}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Updates a mission profile. Updating a mission profile will not update the execution parameters for existing future contacts.
    public func updateMissionProfile(_ input: UpdateMissionProfileRequest) -> EventLoopFuture<MissionProfileIdResponse> {
        return client.execute(operation: "UpdateMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }
}

extension GroundStation {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
