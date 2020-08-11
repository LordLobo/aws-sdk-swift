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

extension SageMaker {

    ///  Lists the machine learning algorithms that have been created.
    public func listAlgorithmsPaginator(
        _ input: ListAlgorithmsInput,
        onPage: @escaping (ListAlgorithmsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAlgorithms,
            tokenKey: \ListAlgorithmsOutput.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists apps.
    public func listAppsPaginator(
        _ input: ListAppsRequest,
        onPage: @escaping (ListAppsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listApps,
            tokenKey: \ListAppsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Request a list of jobs.
    public func listAutoMLJobsPaginator(
        _ input: ListAutoMLJobsRequest,
        onPage: @escaping (ListAutoMLJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAutoMLJobs,
            tokenKey: \ListAutoMLJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  List the Candidates created for the job.
    public func listCandidatesForAutoMLJobPaginator(
        _ input: ListCandidatesForAutoMLJobRequest,
        onPage: @escaping (ListCandidatesForAutoMLJobResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCandidatesForAutoMLJob,
            tokenKey: \ListCandidatesForAutoMLJobResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of the Git repositories in your account.
    public func listCodeRepositoriesPaginator(
        _ input: ListCodeRepositoriesInput,
        onPage: @escaping (ListCodeRepositoriesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCodeRepositories,
            tokenKey: \ListCodeRepositoriesOutput.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists model compilation jobs that satisfy various filters. To create a model compilation job, use CreateCompilationJob. To get information about a particular model compilation job you have created, use DescribeCompilationJob.
    public func listCompilationJobsPaginator(
        _ input: ListCompilationJobsRequest,
        onPage: @escaping (ListCompilationJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCompilationJobs,
            tokenKey: \ListCompilationJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the domains.
    public func listDomainsPaginator(
        _ input: ListDomainsRequest,
        onPage: @escaping (ListDomainsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDomains,
            tokenKey: \ListDomainsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists endpoint configurations.
    public func listEndpointConfigsPaginator(
        _ input: ListEndpointConfigsInput,
        onPage: @escaping (ListEndpointConfigsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEndpointConfigs,
            tokenKey: \ListEndpointConfigsOutput.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists endpoints.
    public func listEndpointsPaginator(
        _ input: ListEndpointsInput,
        onPage: @escaping (ListEndpointsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEndpoints,
            tokenKey: \ListEndpointsOutput.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists all the experiments in your account. The list can be filtered to show only experiments that were created in a specific time range. The list can be sorted by experiment name or creation time.
    public func listExperimentsPaginator(
        _ input: ListExperimentsRequest,
        onPage: @escaping (ListExperimentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listExperiments,
            tokenKey: \ListExperimentsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns information about the flow definitions in your account.
    public func listFlowDefinitionsPaginator(
        _ input: ListFlowDefinitionsRequest,
        onPage: @escaping (ListFlowDefinitionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFlowDefinitions,
            tokenKey: \ListFlowDefinitionsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns information about the human task user interfaces in your account.
    public func listHumanTaskUisPaginator(
        _ input: ListHumanTaskUisRequest,
        onPage: @escaping (ListHumanTaskUisResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listHumanTaskUis,
            tokenKey: \ListHumanTaskUisResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of HyperParameterTuningJobSummary objects that describe the hyperparameter tuning jobs launched in your account.
    public func listHyperParameterTuningJobsPaginator(
        _ input: ListHyperParameterTuningJobsRequest,
        onPage: @escaping (ListHyperParameterTuningJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listHyperParameterTuningJobs,
            tokenKey: \ListHyperParameterTuningJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of labeling jobs.
    public func listLabelingJobsPaginator(
        _ input: ListLabelingJobsRequest,
        onPage: @escaping (ListLabelingJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listLabelingJobs,
            tokenKey: \ListLabelingJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of labeling jobs assigned to a specified work team.
    public func listLabelingJobsForWorkteamPaginator(
        _ input: ListLabelingJobsForWorkteamRequest,
        onPage: @escaping (ListLabelingJobsForWorkteamResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listLabelingJobsForWorkteam,
            tokenKey: \ListLabelingJobsForWorkteamResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the model packages that have been created.
    public func listModelPackagesPaginator(
        _ input: ListModelPackagesInput,
        onPage: @escaping (ListModelPackagesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listModelPackages,
            tokenKey: \ListModelPackagesOutput.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists models created with the CreateModel API.
    public func listModelsPaginator(
        _ input: ListModelsInput,
        onPage: @escaping (ListModelsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listModels,
            tokenKey: \ListModelsOutput.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns list of all monitoring job executions.
    public func listMonitoringExecutionsPaginator(
        _ input: ListMonitoringExecutionsRequest,
        onPage: @escaping (ListMonitoringExecutionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMonitoringExecutions,
            tokenKey: \ListMonitoringExecutionsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns list of all monitoring schedules.
    public func listMonitoringSchedulesPaginator(
        _ input: ListMonitoringSchedulesRequest,
        onPage: @escaping (ListMonitoringSchedulesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMonitoringSchedules,
            tokenKey: \ListMonitoringSchedulesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists notebook instance lifestyle configurations created with the CreateNotebookInstanceLifecycleConfig API.
    public func listNotebookInstanceLifecycleConfigsPaginator(
        _ input: ListNotebookInstanceLifecycleConfigsInput,
        onPage: @escaping (ListNotebookInstanceLifecycleConfigsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listNotebookInstanceLifecycleConfigs,
            tokenKey: \ListNotebookInstanceLifecycleConfigsOutput.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns a list of the Amazon SageMaker notebook instances in the requester's account in an AWS Region. 
    public func listNotebookInstancesPaginator(
        _ input: ListNotebookInstancesInput,
        onPage: @escaping (ListNotebookInstancesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listNotebookInstances,
            tokenKey: \ListNotebookInstancesOutput.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists processing jobs that satisfy various filters.
    public func listProcessingJobsPaginator(
        _ input: ListProcessingJobsRequest,
        onPage: @escaping (ListProcessingJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProcessingJobs,
            tokenKey: \ListProcessingJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of the work teams that you are subscribed to in the AWS Marketplace. The list may be empty if no work team satisfies the filter specified in the NameContains parameter.
    public func listSubscribedWorkteamsPaginator(
        _ input: ListSubscribedWorkteamsRequest,
        onPage: @escaping (ListSubscribedWorkteamsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSubscribedWorkteams,
            tokenKey: \ListSubscribedWorkteamsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns the tags for the specified Amazon SageMaker resource.
    public func listTagsPaginator(
        _ input: ListTagsInput,
        onPage: @escaping (ListTagsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTags,
            tokenKey: \ListTagsOutput.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists training jobs.
    public func listTrainingJobsPaginator(
        _ input: ListTrainingJobsRequest,
        onPage: @escaping (ListTrainingJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTrainingJobs,
            tokenKey: \ListTrainingJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of TrainingJobSummary objects that describe the training jobs that a hyperparameter tuning job launched.
    public func listTrainingJobsForHyperParameterTuningJobPaginator(
        _ input: ListTrainingJobsForHyperParameterTuningJobRequest,
        onPage: @escaping (ListTrainingJobsForHyperParameterTuningJobResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTrainingJobsForHyperParameterTuningJob,
            tokenKey: \ListTrainingJobsForHyperParameterTuningJobResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists transform jobs.
    public func listTransformJobsPaginator(
        _ input: ListTransformJobsRequest,
        onPage: @escaping (ListTransformJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTransformJobs,
            tokenKey: \ListTransformJobsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the trial components in your account. You can sort the list by trial component name or creation time. You can filter the list to show only components that were created in a specific time range. You can also filter on one of the following:    ExperimentName     SourceArn     TrialName   
    public func listTrialComponentsPaginator(
        _ input: ListTrialComponentsRequest,
        onPage: @escaping (ListTrialComponentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTrialComponents,
            tokenKey: \ListTrialComponentsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the trials in your account. Specify an experiment name to limit the list to the trials that are part of that experiment. Specify a trial component name to limit the list to the trials that associated with that trial component. The list can be filtered to show only trials that were created in a specific time range. The list can be sorted by trial name or creation time.
    public func listTrialsPaginator(
        _ input: ListTrialsRequest,
        onPage: @escaping (ListTrialsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTrials,
            tokenKey: \ListTrialsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists user profiles.
    public func listUserProfilesPaginator(
        _ input: ListUserProfilesRequest,
        onPage: @escaping (ListUserProfilesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listUserProfiles,
            tokenKey: \ListUserProfilesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Gets a list of work teams that you have defined in a region. The list may be empty if no work team satisfies the filter specified in the NameContains parameter.
    public func listWorkteamsPaginator(
        _ input: ListWorkteamsRequest,
        onPage: @escaping (ListWorkteamsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorkteams,
            tokenKey: \ListWorkteamsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Finds Amazon SageMaker resources that match a search query. Matching resources are returned as a list of SearchRecord objects in the response. You can sort the search results by any resource property in a ascending or descending order. You can query against the following value types: numeric, text, Boolean, and timestamp.
    public func searchPaginator(
        _ input: SearchRequest,
        onPage: @escaping (SearchResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: search,
            tokenKey: \SearchResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension SageMaker.ListAlgorithmsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListAlgorithmsInput {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )

    }
}

extension SageMaker.ListAppsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListAppsRequest {
        return .init(
            domainIdEquals: self.domainIdEquals,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            userProfileNameEquals: self.userProfileNameEquals
        )

    }
}

extension SageMaker.ListAutoMLJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListAutoMLJobsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListCandidatesForAutoMLJobRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListCandidatesForAutoMLJobRequest {
        return .init(
            autoMLJobName: self.autoMLJobName,
            candidateNameEquals: self.candidateNameEquals,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListCodeRepositoriesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListCodeRepositoriesInput {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )

    }
}

extension SageMaker.ListCompilationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListCompilationJobsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListDomainsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListDomainsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension SageMaker.ListEndpointConfigsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListEndpointConfigsInput {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )

    }
}

extension SageMaker.ListEndpointsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListEndpointsInput {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListExperimentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListExperimentsRequest {
        return .init(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )

    }
}

extension SageMaker.ListFlowDefinitionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListFlowDefinitionsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            maxResults: self.maxResults,
            nextToken: token,
            sortOrder: self.sortOrder
        )

    }
}

extension SageMaker.ListHumanTaskUisRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListHumanTaskUisRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            maxResults: self.maxResults,
            nextToken: token,
            sortOrder: self.sortOrder
        )

    }
}

extension SageMaker.ListHyperParameterTuningJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListHyperParameterTuningJobsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListLabelingJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListLabelingJobsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListLabelingJobsForWorkteamRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListLabelingJobsForWorkteamRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            jobReferenceCodeContains: self.jobReferenceCodeContains,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            workteamArn: self.workteamArn
        )

    }
}

extension SageMaker.ListModelPackagesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListModelPackagesInput {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )

    }
}

extension SageMaker.ListModelsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListModelsInput {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )

    }
}

extension SageMaker.ListMonitoringExecutionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListMonitoringExecutionsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            endpointName: self.endpointName,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            monitoringScheduleName: self.monitoringScheduleName,
            nextToken: token,
            scheduledTimeAfter: self.scheduledTimeAfter,
            scheduledTimeBefore: self.scheduledTimeBefore,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListMonitoringSchedulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListMonitoringSchedulesRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            endpointName: self.endpointName,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListNotebookInstanceLifecycleConfigsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListNotebookInstanceLifecycleConfigsInput {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )

    }
}

extension SageMaker.ListNotebookInstancesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListNotebookInstancesInput {
        return .init(
            additionalCodeRepositoryEquals: self.additionalCodeRepositoryEquals,
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            defaultCodeRepositoryContains: self.defaultCodeRepositoryContains,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            notebookInstanceLifecycleConfigNameContains: self.notebookInstanceLifecycleConfigNameContains,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListProcessingJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListProcessingJobsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListSubscribedWorkteamsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListSubscribedWorkteamsRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token
        )

    }
}

extension SageMaker.ListTagsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListTagsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )

    }
}

extension SageMaker.ListTrainingJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListTrainingJobsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListTrainingJobsForHyperParameterTuningJobRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListTrainingJobsForHyperParameterTuningJobRequest {
        return .init(
            hyperParameterTuningJobName: self.hyperParameterTuningJobName,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListTransformJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListTransformJobsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            lastModifiedTimeAfter: self.lastModifiedTimeAfter,
            lastModifiedTimeBefore: self.lastModifiedTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )

    }
}

extension SageMaker.ListTrialComponentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListTrialComponentsRequest {
        return .init(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            experimentName: self.experimentName,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            sourceArn: self.sourceArn,
            trialName: self.trialName
        )

    }
}

extension SageMaker.ListTrialsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListTrialsRequest {
        return .init(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            experimentName: self.experimentName,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            trialComponentName: self.trialComponentName
        )

    }
}

extension SageMaker.ListUserProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListUserProfilesRequest {
        return .init(
            domainIdEquals: self.domainIdEquals,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            userProfileNameContains: self.userProfileNameContains
        )

    }
}

extension SageMaker.ListWorkteamsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.ListWorkteamsRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )

    }
}

extension SageMaker.SearchRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMaker.SearchRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resource: self.resource,
            searchExpression: self.searchExpression,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )

    }
}


