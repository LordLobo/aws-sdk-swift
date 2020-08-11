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
Client object for interacting with AWS MediaLive service.

API for AWS Elemental MediaLive
*/
public struct MediaLive: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the MediaLive client
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
            service: "medialive",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-14",
            endpoint: endpoint,
            possibleErrorTypes: [MediaLiveErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }
    
    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }
    
    //MARK: API Calls

    ///  Update a channel schedule
    public func batchUpdateSchedule(_ input: BatchUpdateScheduleRequest) -> EventLoopFuture<BatchUpdateScheduleResponse> {
        return client.execute(operation: "BatchUpdateSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Creates a new channel
    public func createChannel(_ input: CreateChannelRequest) -> EventLoopFuture<CreateChannelResponse> {
        return client.execute(operation: "CreateChannel", path: "/prod/channels", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Create an input
    public func createInput(_ input: CreateInputRequest) -> EventLoopFuture<CreateInputResponse> {
        return client.execute(operation: "CreateInput", path: "/prod/inputs", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a Input Security Group
    public func createInputSecurityGroup(_ input: CreateInputSecurityGroupRequest) -> EventLoopFuture<CreateInputSecurityGroupResponse> {
        return client.execute(operation: "CreateInputSecurityGroup", path: "/prod/inputSecurityGroups", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Create a new multiplex.
    public func createMultiplex(_ input: CreateMultiplexRequest) -> EventLoopFuture<CreateMultiplexResponse> {
        return client.execute(operation: "CreateMultiplex", path: "/prod/multiplexes", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Create a new program in the multiplex.
    public func createMultiplexProgram(_ input: CreateMultiplexProgramRequest) -> EventLoopFuture<CreateMultiplexProgramResponse> {
        return client.execute(operation: "CreateMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Create tags for a resource
    @discardableResult public func createTags(_ input: CreateTagsRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "CreateTags", path: "/prod/tags/{resource-arn}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Starts deletion of channel. The associated outputs are also deleted.
    public func deleteChannel(_ input: DeleteChannelRequest) -> EventLoopFuture<DeleteChannelResponse> {
        return client.execute(operation: "DeleteChannel", path: "/prod/channels/{channelId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the input end point
    public func deleteInput(_ input: DeleteInputRequest) -> EventLoopFuture<DeleteInputResponse> {
        return client.execute(operation: "DeleteInput", path: "/prod/inputs/{inputId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Deletes an Input Security Group
    public func deleteInputSecurityGroup(_ input: DeleteInputSecurityGroupRequest) -> EventLoopFuture<DeleteInputSecurityGroupResponse> {
        return client.execute(operation: "DeleteInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Delete a multiplex. The multiplex must be idle.
    public func deleteMultiplex(_ input: DeleteMultiplexRequest) -> EventLoopFuture<DeleteMultiplexResponse> {
        return client.execute(operation: "DeleteMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Delete a program from a multiplex.
    public func deleteMultiplexProgram(_ input: DeleteMultiplexProgramRequest) -> EventLoopFuture<DeleteMultiplexProgramResponse> {
        return client.execute(operation: "DeleteMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Delete an expired reservation.
    public func deleteReservation(_ input: DeleteReservationRequest) -> EventLoopFuture<DeleteReservationResponse> {
        return client.execute(operation: "DeleteReservation", path: "/prod/reservations/{reservationId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Delete all schedule actions on a channel.
    public func deleteSchedule(_ input: DeleteScheduleRequest) -> EventLoopFuture<DeleteScheduleResponse> {
        return client.execute(operation: "DeleteSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Removes tags for a resource
    @discardableResult public func deleteTags(_ input: DeleteTagsRequest) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteTags", path: "/prod/tags/{resource-arn}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Gets details about a channel
    public func describeChannel(_ input: DescribeChannelRequest) -> EventLoopFuture<DescribeChannelResponse> {
        return client.execute(operation: "DescribeChannel", path: "/prod/channels/{channelId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Produces details about an input
    public func describeInput(_ input: DescribeInputRequest) -> EventLoopFuture<DescribeInputResponse> {
        return client.execute(operation: "DescribeInput", path: "/prod/inputs/{inputId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Gets the details for the input device
    public func describeInputDevice(_ input: DescribeInputDeviceRequest) -> EventLoopFuture<DescribeInputDeviceResponse> {
        return client.execute(operation: "DescribeInputDevice", path: "/prod/inputDevices/{inputDeviceId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Produces a summary of an Input Security Group
    public func describeInputSecurityGroup(_ input: DescribeInputSecurityGroupRequest) -> EventLoopFuture<DescribeInputSecurityGroupResponse> {
        return client.execute(operation: "DescribeInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Gets details about a multiplex.
    public func describeMultiplex(_ input: DescribeMultiplexRequest) -> EventLoopFuture<DescribeMultiplexResponse> {
        return client.execute(operation: "DescribeMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Get the details for a program in a multiplex.
    public func describeMultiplexProgram(_ input: DescribeMultiplexProgramRequest) -> EventLoopFuture<DescribeMultiplexProgramResponse> {
        return client.execute(operation: "DescribeMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Get details for an offering.
    public func describeOffering(_ input: DescribeOfferingRequest) -> EventLoopFuture<DescribeOfferingResponse> {
        return client.execute(operation: "DescribeOffering", path: "/prod/offerings/{offeringId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Get details for a reservation.
    public func describeReservation(_ input: DescribeReservationRequest) -> EventLoopFuture<DescribeReservationResponse> {
        return client.execute(operation: "DescribeReservation", path: "/prod/reservations/{reservationId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Get a channel schedule
    public func describeSchedule(_ input: DescribeScheduleRequest) -> EventLoopFuture<DescribeScheduleResponse> {
        return client.execute(operation: "DescribeSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Produces list of channels that have been created
    public func listChannels(_ input: ListChannelsRequest) -> EventLoopFuture<ListChannelsResponse> {
        return client.execute(operation: "ListChannels", path: "/prod/channels", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  List input devices
    public func listInputDevices(_ input: ListInputDevicesRequest) -> EventLoopFuture<ListInputDevicesResponse> {
        return client.execute(operation: "ListInputDevices", path: "/prod/inputDevices", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Produces a list of Input Security Groups for an account
    public func listInputSecurityGroups(_ input: ListInputSecurityGroupsRequest) -> EventLoopFuture<ListInputSecurityGroupsResponse> {
        return client.execute(operation: "ListInputSecurityGroups", path: "/prod/inputSecurityGroups", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Produces list of inputs that have been created
    public func listInputs(_ input: ListInputsRequest) -> EventLoopFuture<ListInputsResponse> {
        return client.execute(operation: "ListInputs", path: "/prod/inputs", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  List the programs that currently exist for a specific multiplex.
    public func listMultiplexPrograms(_ input: ListMultiplexProgramsRequest) -> EventLoopFuture<ListMultiplexProgramsResponse> {
        return client.execute(operation: "ListMultiplexPrograms", path: "/prod/multiplexes/{multiplexId}/programs", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieve a list of the existing multiplexes.
    public func listMultiplexes(_ input: ListMultiplexesRequest) -> EventLoopFuture<ListMultiplexesResponse> {
        return client.execute(operation: "ListMultiplexes", path: "/prod/multiplexes", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  List offerings available for purchase.
    public func listOfferings(_ input: ListOfferingsRequest) -> EventLoopFuture<ListOfferingsResponse> {
        return client.execute(operation: "ListOfferings", path: "/prod/offerings", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  List purchased reservations.
    public func listReservations(_ input: ListReservationsRequest) -> EventLoopFuture<ListReservationsResponse> {
        return client.execute(operation: "ListReservations", path: "/prod/reservations", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Produces list of tags that have been created for a resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/prod/tags/{resource-arn}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Purchase an offering and create a reservation.
    public func purchaseOffering(_ input: PurchaseOfferingRequest) -> EventLoopFuture<PurchaseOfferingResponse> {
        return client.execute(operation: "PurchaseOffering", path: "/prod/offerings/{offeringId}/purchase", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Starts an existing channel
    public func startChannel(_ input: StartChannelRequest) -> EventLoopFuture<StartChannelResponse> {
        return client.execute(operation: "StartChannel", path: "/prod/channels/{channelId}/start", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.
    public func startMultiplex(_ input: StartMultiplexRequest) -> EventLoopFuture<StartMultiplexResponse> {
        return client.execute(operation: "StartMultiplex", path: "/prod/multiplexes/{multiplexId}/start", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Stops a running channel
    public func stopChannel(_ input: StopChannelRequest) -> EventLoopFuture<StopChannelResponse> {
        return client.execute(operation: "StopChannel", path: "/prod/channels/{channelId}/stop", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Stops a running multiplex. If the multiplex isn't running, this action has no effect.
    public func stopMultiplex(_ input: StopMultiplexRequest) -> EventLoopFuture<StopMultiplexResponse> {
        return client.execute(operation: "StopMultiplex", path: "/prod/multiplexes/{multiplexId}/stop", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates a channel.
    public func updateChannel(_ input: UpdateChannelRequest) -> EventLoopFuture<UpdateChannelResponse> {
        return client.execute(operation: "UpdateChannel", path: "/prod/channels/{channelId}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Changes the class of the channel.
    public func updateChannelClass(_ input: UpdateChannelClassRequest) -> EventLoopFuture<UpdateChannelClassResponse> {
        return client.execute(operation: "UpdateChannelClass", path: "/prod/channels/{channelId}/channelClass", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Updates an input.
    public func updateInput(_ input: UpdateInputRequest) -> EventLoopFuture<UpdateInputResponse> {
        return client.execute(operation: "UpdateInput", path: "/prod/inputs/{inputId}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Updates the parameters for the input device.
    public func updateInputDevice(_ input: UpdateInputDeviceRequest) -> EventLoopFuture<UpdateInputDeviceResponse> {
        return client.execute(operation: "UpdateInputDevice", path: "/prod/inputDevices/{inputDeviceId}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Update an Input Security Group's Whilelists.
    public func updateInputSecurityGroup(_ input: UpdateInputSecurityGroupRequest) -> EventLoopFuture<UpdateInputSecurityGroupResponse> {
        return client.execute(operation: "UpdateInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Updates a multiplex.
    public func updateMultiplex(_ input: UpdateMultiplexRequest) -> EventLoopFuture<UpdateMultiplexResponse> {
        return client.execute(operation: "UpdateMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Update a program in a multiplex.
    public func updateMultiplexProgram(_ input: UpdateMultiplexProgramRequest) -> EventLoopFuture<UpdateMultiplexProgramResponse> {
        return client.execute(operation: "UpdateMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Update reservation.
    public func updateReservation(_ input: UpdateReservationRequest) -> EventLoopFuture<UpdateReservationResponse> {
        return client.execute(operation: "UpdateReservation", path: "/prod/reservations/{reservationId}", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }
}

extension MediaLive {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
