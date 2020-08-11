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
Client object for interacting with AWS Imagebuilder service.

EC2 Image Builder is a fully managed AWS service that makes it easier to automate the creation, management, and deployment of customized, secure, and up-to-date “golden” server images that are pre-installed and pre-configured with software and settings to meet specific IT standards.
*/
public struct Imagebuilder: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the Imagebuilder client
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
        self.context = AWSServiceContext(
            region: region,
            partition: region?.partition ?? partition,
            service: "imagebuilder",
            serviceProtocol: .restjson,
            apiVersion: "2019-12-02",
            endpoint: endpoint,
            errorType: ImagebuilderErrorType.self,
            timeout: timeout
        )
    }
    
    /// return new `Imagebuilder` with new timeout value
    public func timingOut(after timeout: TimeAmount) -> Self {
        return .init(client: self.client, context: self.context.timingOut(after: timeout))
    }

    /// return new `Imagebuilder` logging to specified Logger
    public func logging(to logger: Logger) -> Self {
        return .init(client: self.client, context: self.context.logging(to: logger))
    }
    
    //MARK: API Calls

    ///  CancelImageCreation cancels the creation of Image. This operation can only be used on images in a non-terminal state.
    public func cancelImageCreation(_ input: CancelImageCreationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelImageCreationResponse> {
        return client.execute(operation: "CancelImageCreation", path: "/CancelImageCreation", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Creates a new component that can be used to build, validate, test, and assess your image.
    public func createComponent(_ input: CreateComponentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateComponentResponse> {
        return client.execute(operation: "CreateComponent", path: "/CreateComponent", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Creates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. 
    public func createDistributionConfiguration(_ input: CreateDistributionConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDistributionConfigurationResponse> {
        return client.execute(operation: "CreateDistributionConfiguration", path: "/CreateDistributionConfiguration", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Creates a new image. This request will create a new image along with all of the configured output resources defined in the distribution configuration. 
    public func createImage(_ input: CreateImageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageResponse> {
        return client.execute(operation: "CreateImage", path: "/CreateImage", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Creates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. 
    public func createImagePipeline(_ input: CreateImagePipelineRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImagePipelineResponse> {
        return client.execute(operation: "CreateImagePipeline", path: "/CreateImagePipeline", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Creates a new image recipe. Image recipes define how images are configured, tested, and assessed. 
    public func createImageRecipe(_ input: CreateImageRecipeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageRecipeResponse> {
        return client.execute(operation: "CreateImageRecipe", path: "/CreateImageRecipe", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Creates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. 
    public func createInfrastructureConfiguration(_ input: CreateInfrastructureConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInfrastructureConfigurationResponse> {
        return client.execute(operation: "CreateInfrastructureConfiguration", path: "/CreateInfrastructureConfiguration", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Deletes a component build version. 
    public func deleteComponent(_ input: DeleteComponentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteComponentResponse> {
        return client.execute(operation: "DeleteComponent", path: "/DeleteComponent", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Deletes a distribution configuration. 
    public func deleteDistributionConfiguration(_ input: DeleteDistributionConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDistributionConfigurationResponse> {
        return client.execute(operation: "DeleteDistributionConfiguration", path: "/DeleteDistributionConfiguration", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Deletes an image. 
    public func deleteImage(_ input: DeleteImageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImageResponse> {
        return client.execute(operation: "DeleteImage", path: "/DeleteImage", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Deletes an image pipeline. 
    public func deleteImagePipeline(_ input: DeleteImagePipelineRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImagePipelineResponse> {
        return client.execute(operation: "DeleteImagePipeline", path: "/DeleteImagePipeline", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Deletes an image recipe. 
    public func deleteImageRecipe(_ input: DeleteImageRecipeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImageRecipeResponse> {
        return client.execute(operation: "DeleteImageRecipe", path: "/DeleteImageRecipe", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Deletes an infrastructure configuration. 
    public func deleteInfrastructureConfiguration(_ input: DeleteInfrastructureConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInfrastructureConfigurationResponse> {
        return client.execute(operation: "DeleteInfrastructureConfiguration", path: "/DeleteInfrastructureConfiguration", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Gets a component object. 
    public func getComponent(_ input: GetComponentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetComponentResponse> {
        return client.execute(operation: "GetComponent", path: "/GetComponent", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Gets a component policy. 
    public func getComponentPolicy(_ input: GetComponentPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetComponentPolicyResponse> {
        return client.execute(operation: "GetComponentPolicy", path: "/GetComponentPolicy", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Gets a distribution configuration. 
    public func getDistributionConfiguration(_ input: GetDistributionConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDistributionConfigurationResponse> {
        return client.execute(operation: "GetDistributionConfiguration", path: "/GetDistributionConfiguration", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Gets an image. 
    public func getImage(_ input: GetImageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetImageResponse> {
        return client.execute(operation: "GetImage", path: "/GetImage", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Gets an image pipeline. 
    public func getImagePipeline(_ input: GetImagePipelineRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetImagePipelineResponse> {
        return client.execute(operation: "GetImagePipeline", path: "/GetImagePipeline", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Gets an image policy. 
    public func getImagePolicy(_ input: GetImagePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetImagePolicyResponse> {
        return client.execute(operation: "GetImagePolicy", path: "/GetImagePolicy", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Gets an image recipe. 
    public func getImageRecipe(_ input: GetImageRecipeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetImageRecipeResponse> {
        return client.execute(operation: "GetImageRecipe", path: "/GetImageRecipe", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Gets an image recipe policy. 
    public func getImageRecipePolicy(_ input: GetImageRecipePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetImageRecipePolicyResponse> {
        return client.execute(operation: "GetImageRecipePolicy", path: "/GetImageRecipePolicy", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Gets an infrastructure configuration. 
    public func getInfrastructureConfiguration(_ input: GetInfrastructureConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetInfrastructureConfigurationResponse> {
        return client.execute(operation: "GetInfrastructureConfiguration", path: "/GetInfrastructureConfiguration", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Imports a component and transforms its data into a component document. 
    public func importComponent(_ input: ImportComponentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportComponentResponse> {
        return client.execute(operation: "ImportComponent", path: "/ImportComponent", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns the list of component build versions for the specified semantic version. 
    public func listComponentBuildVersions(_ input: ListComponentBuildVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListComponentBuildVersionsResponse> {
        return client.execute(operation: "ListComponentBuildVersions", path: "/ListComponentBuildVersions", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns the list of component build versions for the specified semantic version. 
    public func listComponents(_ input: ListComponentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListComponentsResponse> {
        return client.execute(operation: "ListComponents", path: "/ListComponents", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a list of distribution configurations. 
    public func listDistributionConfigurations(_ input: ListDistributionConfigurationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDistributionConfigurationsResponse> {
        return client.execute(operation: "ListDistributionConfigurations", path: "/ListDistributionConfigurations", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a list of image build versions. 
    public func listImageBuildVersions(_ input: ListImageBuildVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListImageBuildVersionsResponse> {
        return client.execute(operation: "ListImageBuildVersions", path: "/ListImageBuildVersions", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a list of images created by the specified pipeline. 
    public func listImagePipelineImages(_ input: ListImagePipelineImagesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListImagePipelineImagesResponse> {
        return client.execute(operation: "ListImagePipelineImages", path: "/ListImagePipelineImages", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of image pipelines. 
    public func listImagePipelines(_ input: ListImagePipelinesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListImagePipelinesResponse> {
        return client.execute(operation: "ListImagePipelines", path: "/ListImagePipelines", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a list of image recipes. 
    public func listImageRecipes(_ input: ListImageRecipesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListImageRecipesResponse> {
        return client.execute(operation: "ListImageRecipes", path: "/ListImageRecipes", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns the list of images that you have access to. 
    public func listImages(_ input: ListImagesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListImagesResponse> {
        return client.execute(operation: "ListImages", path: "/ListImages", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a list of infrastructure configurations. 
    public func listInfrastructureConfigurations(_ input: ListInfrastructureConfigurationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInfrastructureConfigurationsResponse> {
        return client.execute(operation: "ListInfrastructureConfigurations", path: "/ListInfrastructureConfigurations", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns the list of tags for the specified resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Applies a policy to a component. We recommend that you call the RAM API CreateResourceShare to share resources. If you call the Image Builder API PutComponentPolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy in order for the resource to be visible to all principals with whom the resource is shared. 
    public func putComponentPolicy(_ input: PutComponentPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutComponentPolicyResponse> {
        return client.execute(operation: "PutComponentPolicy", path: "/PutComponentPolicy", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Applies a policy to an image. We recommend that you call the RAM API CreateResourceShare to share resources. If you call the Image Builder API PutImagePolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy in order for the resource to be visible to all principals with whom the resource is shared. 
    public func putImagePolicy(_ input: PutImagePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutImagePolicyResponse> {
        return client.execute(operation: "PutImagePolicy", path: "/PutImagePolicy", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Applies a policy to an image recipe. We recommend that you call the RAM API CreateResourceShare to share resources. If you call the Image Builder API PutImageRecipePolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy in order for the resource to be visible to all principals with whom the resource is shared. 
    public func putImageRecipePolicy(_ input: PutImageRecipePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutImageRecipePolicyResponse> {
        return client.execute(operation: "PutImageRecipePolicy", path: "/PutImageRecipePolicy", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Manually triggers a pipeline to create an image. 
    public func startImagePipelineExecution(_ input: StartImagePipelineExecutionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartImagePipelineExecutionResponse> {
        return client.execute(operation: "StartImagePipelineExecution", path: "/StartImagePipelineExecution", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Adds a tag to a resource. 
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Removes a tag from a resource. 
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Updates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. 
    public func updateDistributionConfiguration(_ input: UpdateDistributionConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDistributionConfigurationResponse> {
        return client.execute(operation: "UpdateDistributionConfiguration", path: "/UpdateDistributionConfiguration", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Updates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. 
    public func updateImagePipeline(_ input: UpdateImagePipelineRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateImagePipelineResponse> {
        return client.execute(operation: "UpdateImagePipeline", path: "/UpdateImagePipeline", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Updates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. 
    public func updateInfrastructureConfiguration(_ input: UpdateInfrastructureConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInfrastructureConfigurationResponse> {
        return client.execute(operation: "UpdateInfrastructureConfiguration", path: "/UpdateInfrastructureConfiguration", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }
}

extension Imagebuilder {
    init(client: AWSClient, context: AWSServiceContext) {
        self.client = client
        self.context = context
    }
}
