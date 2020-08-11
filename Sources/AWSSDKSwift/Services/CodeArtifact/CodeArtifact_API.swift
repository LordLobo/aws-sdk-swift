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
Client object for interacting with AWS CodeArtifact service.

 AWS CodeArtifact is a fully managed artifact repository compatible with language-native package managers and build tools such as npm, Apache Maven, and pip. You can use CodeArtifact to share packages with development teams and pull packages. Packages can be pulled from both public and CodeArtifact repositories. You can also create an upstream relationship between a CodeArtifact repository and another repository, which effectively merges their contents from the point of view of a package manager client.   AWS CodeArtifact Components  Use the information in this guide to help you work with the following CodeArtifact components:    Repository: A CodeArtifact repository contains a set of package versions, each of which maps to a set of assets, or files. Repositories are polyglot, so a single repository can contain packages of any supported type. Each repository exposes endpoints for fetching and publishing packages using tools like the  npm  CLI, the Maven CLI ( mvn ), and  pip . You can create up to 100 repositories per AWS account.    Domain: Repositories are aggregated into a higher-level entity known as a domain. All package assets and metadata are stored in the domain, but are consumed through repositories. A given package asset, such as a Maven JAR file, is stored once per domain, no matter how many repositories it's present in. All of the assets and metadata in a domain are encrypted with the same customer master key (CMK) stored in AWS Key Management Service (AWS KMS). Each repository is a member of a single domain and can't be moved to a different domain. The domain allows organizational policy to be applied across multiple repositories, such as which accounts can access repositories in the domain, and which public repositories can be used as sources of packages. Although an organization can have multiple domains, we recommend a single production domain that contains all published artifacts so that teams can find and share packages across their organization.    Package: A package is a bundle of software and the metadata required to resolve dependencies and install the software. CodeArtifact supports npm, PyPI, and Maven package formats. In CodeArtifact, a package consists of:   A name (for example, webpack is the name of a popular npm package)   An optional namespace (for example, @types in @types/node)   A set of versions (for example, 1.0.0, 1.0.1, 1.0.2, etc.)    Package-level metadata (for example, npm tags)      Package version: A version of a package, such as @types/node 12.6.9. The version number format and semantics vary for different package formats. For example, npm package versions must conform to the Semantic Versioning specification. In CodeArtifact, a package version consists of the version identifier, metadata at the package version level, and a set of assets.    Upstream repository: One repository is upstream of another when the package versions in it can be accessed from the repository endpoint of the downstream repository, effectively merging the contents of the two repositories from the point of view of a client. CodeArtifact allows creating an upstream relationship between two repositories.    Asset: An individual file stored in CodeArtifact associated with a package version, such as an npm .tgz file or Maven POM and JAR files.   CodeArtifact supports these operations:    AssociateExternalConnection: Adds an existing external connection to a repository.     CopyPackageVersions: Copies package versions from one repository to another repository in the same domain.    CreateDomain: Creates a domain    CreateRepository: Creates a CodeArtifact repository in a domain.     DeleteDomain: Deletes a domain. You cannot delete a domain that contains repositories.     DeleteDomainPermissionsPolicy: Deletes the resource policy that is set on a domain.    DeletePackageVersions: Deletes versions of a package. After a package has been deleted, it can be republished, but its assets and metadata cannot be restored because they have been permanently removed from storage.    DeleteRepository: Deletes a repository.     DeleteRepositoryPermissionsPolicy: Deletes the resource policy that is set on a repository.    DescribeDomain: Returns a DomainDescription object that contains information about the requested domain.    DescribePackageVersion: Returns a  PackageVersionDescription  object that contains details about a package version.     DescribeRepository: Returns a RepositoryDescription object that contains detailed information about the requested repository.     DisposePackageVersions: Disposes versions of a package. A package version with the status Disposed cannot be restored because they have been permanently removed from storage.    DisassociateExternalConnection: Removes an existing external connection from a repository.     GetAuthorizationToken: Generates a temporary authorization token for accessing repositories in the domain. The token expires the authorization period has passed. The default authorization period is 12 hours and can be customized to any length with a maximum of 12 hours.    GetDomainPermissionsPolicy: Returns the policy of a resource that is attached to the specified domain.     GetPackageVersionAsset: Returns the contents of an asset that is in a package version.     GetPackageVersionReadme: Gets the readme file or descriptive text for a package version.    GetRepositoryEndpoint: Returns the endpoint of a repository for a specific package format. A repository has one endpoint for each package format:     npm     pypi     maven       GetRepositoryPermissionsPolicy: Returns the resource policy that is set on a repository.     ListDomains: Returns a list of DomainSummary objects. Each returned DomainSummary object contains information about a domain.    ListPackages: Lists the packages in a repository.    ListPackageVersionAssets: Lists the assets for a given package version.    ListPackageVersionDependencies: Returns a list of the direct dependencies for a package version.     ListPackageVersions: Returns a list of package versions for a specified package in a repository.    ListRepositories: Returns a list of repositories owned by the AWS account that called this method.    ListRepositoriesInDomain: Returns a list of the repositories in a domain.    PutDomainPermissionsPolicy: Attaches a resource policy to a domain.    PutRepositoryPermissionsPolicy: Sets the resource policy on a repository that specifies permissions to access it.     UpdatePackageVersionsStatus: Updates the status of one or more versions of a package.    UpdateRepository: Updates the properties of a repository.  
*/
public struct CodeArtifact: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the CodeArtifact client
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
            service: "codeartifact",
            serviceProtocol: .restjson,
            apiVersion: "2018-09-22",
            endpoint: endpoint,
            errorType: CodeArtifactErrorType.self,
            timeout: timeout
        )
    }
    
    /// return new `CodeArtifact` with new timeout value
    public func timingOut(after timeout: TimeAmount) -> Self {
        return .init(client: self.client, context: self.context.timingOut(after: timeout))
    }

    /// return new `CodeArtifact` logging to specified Logger
    public func logging(to logger: Logger) -> Self {
        return .init(client: self.client, context: self.context.logging(to: logger))
    }
    
    //MARK: API Calls

    ///  Adds an existing external connection to a repository. One external connection is allowed per repository.  A repository can have one or more upstream repositories, or an external connection. 
    public func associateExternalConnection(_ input: AssociateExternalConnectionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateExternalConnectionResult> {
        return client.execute(operation: "AssociateExternalConnection", path: "/v1/repository/external-connection", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Copies package versions from one repository to another repository in the same domain.    You must specify versions or versionRevisions. You cannot specify both.  
    public func copyPackageVersions(_ input: CopyPackageVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyPackageVersionsResult> {
        return client.execute(operation: "CopyPackageVersions", path: "/v1/package/versions/copy", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Creates a domain. CodeArtifact domains make it easier to manage multiple repositories across an organization. You can use a domain to apply permissions across many repositories owned by different AWS accounts. An asset is stored only once in a domain, even if it's in multiple repositories.  Although you can have multiple domains, we recommend a single production domain that contains all published artifacts so that your development teams can find and share packages. You can use a second pre-production domain to test changes to the production domain configuration. 
    public func createDomain(_ input: CreateDomainRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainResult> {
        return client.execute(operation: "CreateDomain", path: "/v1/domain", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Creates a repository. 
    public func createRepository(_ input: CreateRepositoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRepositoryResult> {
        return client.execute(operation: "CreateRepository", path: "/v1/repository", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Deletes a domain. You cannot delete a domain that contains repositories. If you want to delete a domain with repositories, first delete its repositories. 
    public func deleteDomain(_ input: DeleteDomainRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainResult> {
        return client.execute(operation: "DeleteDomain", path: "/v1/domain", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Deletes the resource policy set on a domain. 
    public func deleteDomainPermissionsPolicy(_ input: DeleteDomainPermissionsPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainPermissionsPolicyResult> {
        return client.execute(operation: "DeleteDomainPermissionsPolicy", path: "/v1/domain/permissions/policy", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Deletes one or more versions of a package. A deleted package version cannot be restored in your repository. If you want to remove a package version from your repository and be able to restore it later, set its status to Archived. Archived packages cannot be downloaded from a repository and don't show up with list package APIs (for example,  ListackageVersions ), but you can restore them using  UpdatePackageVersionsStatus . 
    public func deletePackageVersions(_ input: DeletePackageVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePackageVersionsResult> {
        return client.execute(operation: "DeletePackageVersions", path: "/v1/package/versions/delete", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Deletes a repository. 
    public func deleteRepository(_ input: DeleteRepositoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRepositoryResult> {
        return client.execute(operation: "DeleteRepository", path: "/v1/repository", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Deletes the resource policy that is set on a repository. After a resource policy is deleted, the permissions allowed and denied by the deleted policy are removed. The effect of deleting a resource policy might not be immediate.    Use DeleteRepositoryPermissionsPolicy with caution. After a policy is deleted, AWS users, roles, and accounts lose permissions to perform the repository actions granted by the deleted policy.  
    public func deleteRepositoryPermissionsPolicy(_ input: DeleteRepositoryPermissionsPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRepositoryPermissionsPolicyResult> {
        return client.execute(operation: "DeleteRepositoryPermissionsPolicy", path: "/v1/repository/permissions/policies", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a  DomainDescription  object that contains information about the requested domain. 
    public func describeDomain(_ input: DescribeDomainRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainResult> {
        return client.execute(operation: "DescribeDomain", path: "/v1/domain", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a  PackageVersionDescription  object that contains information about the requested package version. 
    public func describePackageVersion(_ input: DescribePackageVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackageVersionResult> {
        return client.execute(operation: "DescribePackageVersion", path: "/v1/package/version", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a RepositoryDescription object that contains detailed information about the requested repository. 
    public func describeRepository(_ input: DescribeRepositoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoryResult> {
        return client.execute(operation: "DescribeRepository", path: "/v1/repository", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Removes an existing external connection from a repository. 
    public func disassociateExternalConnection(_ input: DisassociateExternalConnectionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateExternalConnectionResult> {
        return client.execute(operation: "DisassociateExternalConnection", path: "/v1/repository/external-connection", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Deletes the assets in package versions and sets the package versions' status to Disposed. A disposed package version cannot be restored in your repository because its assets are deleted.   To view all disposed package versions in a repository, use  ListackageVersions  and set the  status  parameter to Disposed.   To view information about a disposed package version, use  ListPackageVersions  and set the  status  parameter to Disposed. 
    public func disposePackageVersions(_ input: DisposePackageVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisposePackageVersionsResult> {
        return client.execute(operation: "DisposePackageVersions", path: "/v1/package/versions/dispose", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Generates a temporary authentication token for accessing repositories in the domain. This API requires the codeartifact:GetAuthorizationToken and sts:GetServiceBearerToken permissions.   CodeArtifact authorization tokens are valid for a period of 12 hours when created with the login command. You can call login periodically to refresh the token. When you create an authorization token with the GetAuthorizationToken API, you can set a custom authorization period, up to a maximum of 12 hours, with the durationSeconds parameter. The authorization period begins after login or GetAuthorizationToken is called. If login or GetAuthorizationToken is called while assuming a role, the token lifetime is independent of the maximum session duration of the role. For example, if you call sts assume-role and specify a session duration of 15 minutes, then generate a CodeArtifact authorization token, the token will be valid for the full authorization period even though this is longer than the 15-minute session duration. See Using IAM Roles for more information on controlling session duration.  
    public func getAuthorizationToken(_ input: GetAuthorizationTokenRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAuthorizationTokenResult> {
        return client.execute(operation: "GetAuthorizationToken", path: "/v1/authorization-token", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns the resource policy attached to the specified domain.    The policy is a resource-based policy, not an identity-based policy. For more information, see Identity-based policies and resource-based policies  in the AWS Identity and Access Management User Guide.  
    public func getDomainPermissionsPolicy(_ input: GetDomainPermissionsPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDomainPermissionsPolicyResult> {
        return client.execute(operation: "GetDomainPermissionsPolicy", path: "/v1/domain/permissions/policy", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns an asset (or file) that is in a package. For example, for a Maven package version, use GetPackageVersionAsset to download a JAR file, a POM file, or any other assets in the package version. 
    public func getPackageVersionAsset(_ input: GetPackageVersionAssetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPackageVersionAssetResult> {
        return client.execute(operation: "GetPackageVersionAsset", path: "/v1/package/version/asset", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Gets the readme file or descriptive text for a package version. For packages that do not contain a readme file, CodeArtifact extracts a description from a metadata file. For example, from the &lt;description&gt; element in the pom.xml file of a Maven package.   The returned text might contain formatting. For example, it might contain formatting for Markdown or reStructuredText. 
    public func getPackageVersionReadme(_ input: GetPackageVersionReadmeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPackageVersionReadmeResult> {
        return client.execute(operation: "GetPackageVersionReadme", path: "/v1/package/version/readme", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns the endpoint of a repository for a specific package format. A repository has one endpoint for each package format:     npm     pypi     maven   
    public func getRepositoryEndpoint(_ input: GetRepositoryEndpointRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRepositoryEndpointResult> {
        return client.execute(operation: "GetRepositoryEndpoint", path: "/v1/repository/endpoint", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns the resource policy that is set on a repository. 
    public func getRepositoryPermissionsPolicy(_ input: GetRepositoryPermissionsPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRepositoryPermissionsPolicyResult> {
        return client.execute(operation: "GetRepositoryPermissionsPolicy", path: "/v1/repository/permissions/policy", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a list of  DomainSummary  objects for all domains owned by the AWS account that makes this call. Each returned DomainSummary object contains information about a domain. 
    public func listDomains(_ input: ListDomainsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDomainsResult> {
        return client.execute(operation: "ListDomains", path: "/v1/domains", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a list of  AssetSummary  objects for assets in a package version. 
    public func listPackageVersionAssets(_ input: ListPackageVersionAssetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPackageVersionAssetsResult> {
        return client.execute(operation: "ListPackageVersionAssets", path: "/v1/package/version/assets", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns the direct dependencies for a package version. The dependencies are returned as  PackageDependency  objects. CodeArtifact extracts the dependencies for a package version from the metadata file for the package format (for example, the package.json file for npm packages and the pom.xml file for Maven). Any package version dependencies that are not listed in the configuration file are not returned. 
    public func listPackageVersionDependencies(_ input: ListPackageVersionDependenciesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPackageVersionDependenciesResult> {
        return client.execute(operation: "ListPackageVersionDependencies", path: "/v1/package/version/dependencies", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a list of  PackageVersionSummary  objects for package versions in a repository that match the request parameters. 
    public func listPackageVersions(_ input: ListPackageVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPackageVersionsResult> {
        return client.execute(operation: "ListPackageVersions", path: "/v1/package/versions", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a list of  PackageSummary  objects for packages in a repository that match the request parameters. 
    public func listPackages(_ input: ListPackagesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPackagesResult> {
        return client.execute(operation: "ListPackages", path: "/v1/packages", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a list of  RepositorySummary  objects. Each RepositorySummary contains information about a repository in the specified AWS account and that matches the input parameters. 
    public func listRepositories(_ input: ListRepositoriesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRepositoriesResult> {
        return client.execute(operation: "ListRepositories", path: "/v1/repositories", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns a list of  RepositorySummary  objects. Each RepositorySummary contains information about a repository in the specified domain and that matches the input parameters. 
    public func listRepositoriesInDomain(_ input: ListRepositoriesInDomainRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRepositoriesInDomainResult> {
        return client.execute(operation: "ListRepositoriesInDomain", path: "/v1/domain/repositories", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Sets a resource policy on a domain that specifies permissions to access it. 
    public func putDomainPermissionsPolicy(_ input: PutDomainPermissionsPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutDomainPermissionsPolicyResult> {
        return client.execute(operation: "PutDomainPermissionsPolicy", path: "/v1/domain/permissions/policy", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Sets the resource policy on a repository that specifies permissions to access it. 
    public func putRepositoryPermissionsPolicy(_ input: PutRepositoryPermissionsPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutRepositoryPermissionsPolicyResult> {
        return client.execute(operation: "PutRepositoryPermissionsPolicy", path: "/v1/repository/permissions/policy", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Updates the status of one or more versions of a package. 
    public func updatePackageVersionsStatus(_ input: UpdatePackageVersionsStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePackageVersionsStatusResult> {
        return client.execute(operation: "UpdatePackageVersionsStatus", path: "/v1/package/versions/update_status", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Update the properties of a repository. 
    public func updateRepository(_ input: UpdateRepositoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRepositoryResult> {
        return client.execute(operation: "UpdateRepository", path: "/v1/repository", httpMethod: .PUT, serviceContext: context, input: input, on: eventLoop)
    }

    //MARK: Streaming API Calls

    ///   Returns an asset (or file) that is in a package. For example, for a Maven package version, use GetPackageVersionAsset to download a JAR file, a POM file, or any other assets in the package version. 
    public func getPackageVersionAssetStreaming(_ input: GetPackageVersionAssetRequest, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop)->EventLoopFuture<Void>) -> EventLoopFuture<GetPackageVersionAssetResult> {
        return client.execute(operation: "GetPackageVersionAsset", path: "/v1/package/version/asset", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop, stream: stream)
    }
}

extension CodeArtifact {
    init(client: AWSClient, context: AWSServiceContext) {
        self.client = client
        self.context = context
    }
}
