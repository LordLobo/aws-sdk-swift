// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension QLDBSession {
    //MARK: Enums

    //MARK: Shapes

    public struct AbortTransactionRequest: AWSShape {


        public init() {
        }

    }

    public struct AbortTransactionResult: AWSShape {


        public init() {
        }

    }

    public struct CommitTransactionRequest: AWSShape {

        /// Specifies the commit digest for the transaction to commit. For every active transaction, the commit digest must be passed. QLDB validates CommitDigest and rejects the commit with an error if the digest computed on the client does not match the digest computed by QLDB.
        public let commitDigest: Data
        /// Specifies the transaction id of the transaction to commit.
        public let transactionId: String

        public init(commitDigest: Data, transactionId: String) {
            self.commitDigest = commitDigest
            self.transactionId = transactionId
        }

        public func validate(name: String) throws {
            try validate(self.transactionId, name:"transactionId", parent: name, max: 22)
            try validate(self.transactionId, name:"transactionId", parent: name, min: 22)
            try validate(self.transactionId, name:"transactionId", parent: name, pattern: "^[A-Za-z-0-9]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case commitDigest = "CommitDigest"
            case transactionId = "TransactionId"
        }
    }

    public struct CommitTransactionResult: AWSShape {

        /// The commit digest of the committed transaction.
        public let commitDigest: Data?
        /// The transaction id of the committed transaction.
        public let transactionId: String?

        public init(commitDigest: Data? = nil, transactionId: String? = nil) {
            self.commitDigest = commitDigest
            self.transactionId = transactionId
        }

        private enum CodingKeys: String, CodingKey {
            case commitDigest = "CommitDigest"
            case transactionId = "TransactionId"
        }
    }

    public struct EndSessionRequest: AWSShape {


        public init() {
        }

    }

    public struct EndSessionResult: AWSShape {


        public init() {
        }

    }

    public struct ExecuteStatementRequest: AWSShape {

        /// Specifies the parameters for the parameterized statement in the request.
        public let parameters: [ValueHolder]?
        /// Specifies the statement of the request.
        public let statement: String
        /// Specifies the transaction id of the request.
        public let transactionId: String

        public init(parameters: [ValueHolder]? = nil, statement: String, transactionId: String) {
            self.parameters = parameters
            self.statement = statement
            self.transactionId = transactionId
        }

        public func validate(name: String) throws {
            try self.parameters?.forEach {
                try $0.validate(name: "\(name).parameters[]")
            }
            try validate(self.statement, name:"statement", parent: name, max: 100000)
            try validate(self.statement, name:"statement", parent: name, min: 1)
            try validate(self.transactionId, name:"transactionId", parent: name, max: 22)
            try validate(self.transactionId, name:"transactionId", parent: name, min: 22)
            try validate(self.transactionId, name:"transactionId", parent: name, pattern: "^[A-Za-z-0-9]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case parameters = "Parameters"
            case statement = "Statement"
            case transactionId = "TransactionId"
        }
    }

    public struct ExecuteStatementResult: AWSShape {

        /// Contains the details of the first fetched page.
        public let firstPage: Page?

        public init(firstPage: Page? = nil) {
            self.firstPage = firstPage
        }

        private enum CodingKeys: String, CodingKey {
            case firstPage = "FirstPage"
        }
    }

    public struct FetchPageRequest: AWSShape {

        /// Specifies the next page token of the page to be fetched.
        public let nextPageToken: String
        /// Specifies the transaction id of the page to be fetched.
        public let transactionId: String

        public init(nextPageToken: String, transactionId: String) {
            self.nextPageToken = nextPageToken
            self.transactionId = transactionId
        }

        public func validate(name: String) throws {
            try validate(self.nextPageToken, name:"nextPageToken", parent: name, max: 1024)
            try validate(self.nextPageToken, name:"nextPageToken", parent: name, min: 4)
            try validate(self.nextPageToken, name:"nextPageToken", parent: name, pattern: "^[A-Za-z-0-9+/=]+$")
            try validate(self.transactionId, name:"transactionId", parent: name, max: 22)
            try validate(self.transactionId, name:"transactionId", parent: name, min: 22)
            try validate(self.transactionId, name:"transactionId", parent: name, pattern: "^[A-Za-z-0-9]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case nextPageToken = "NextPageToken"
            case transactionId = "TransactionId"
        }
    }

    public struct FetchPageResult: AWSShape {

        /// Contains details of the fetched page.
        public let page: Page?

        public init(page: Page? = nil) {
            self.page = page
        }

        private enum CodingKeys: String, CodingKey {
            case page = "Page"
        }
    }

    public struct Page: AWSShape {

        /// The token of the next page.
        public let nextPageToken: String?
        /// A structure that contains values in multiple encoding formats.
        public let values: [ValueHolder]?

        public init(nextPageToken: String? = nil, values: [ValueHolder]? = nil) {
            self.nextPageToken = nextPageToken
            self.values = values
        }

        private enum CodingKeys: String, CodingKey {
            case nextPageToken = "NextPageToken"
            case values = "Values"
        }
    }

    public struct SendCommandRequest: AWSShape {

        /// Command to abort the current transaction.
        public let abortTransaction: AbortTransactionRequest?
        /// Command to commit the specified transaction.
        public let commitTransaction: CommitTransactionRequest?
        /// Command to end the current session.
        public let endSession: EndSessionRequest?
        /// Command to execute a statement in the specified transaction.
        public let executeStatement: ExecuteStatementRequest?
        /// Command to fetch a page.
        public let fetchPage: FetchPageRequest?
        /// Specifies the session token for the current command. A session token is constant throughout the life of the session. To obtain a session token, run the StartSession command. This SessionToken is required for every subsequent command that is issued during the current session.
        public let sessionToken: String?
        /// Command to start a new session. A session token is obtained as part of the response.
        public let startSession: StartSessionRequest?
        /// Command to start a new transaction.
        public let startTransaction: StartTransactionRequest?

        public init(abortTransaction: AbortTransactionRequest? = nil, commitTransaction: CommitTransactionRequest? = nil, endSession: EndSessionRequest? = nil, executeStatement: ExecuteStatementRequest? = nil, fetchPage: FetchPageRequest? = nil, sessionToken: String? = nil, startSession: StartSessionRequest? = nil, startTransaction: StartTransactionRequest? = nil) {
            self.abortTransaction = abortTransaction
            self.commitTransaction = commitTransaction
            self.endSession = endSession
            self.executeStatement = executeStatement
            self.fetchPage = fetchPage
            self.sessionToken = sessionToken
            self.startSession = startSession
            self.startTransaction = startTransaction
        }

        public func validate(name: String) throws {
            try self.commitTransaction?.validate(name: "\(name).commitTransaction")
            try self.executeStatement?.validate(name: "\(name).executeStatement")
            try self.fetchPage?.validate(name: "\(name).fetchPage")
            try validate(self.sessionToken, name:"sessionToken", parent: name, max: 1024)
            try validate(self.sessionToken, name:"sessionToken", parent: name, min: 4)
            try validate(self.sessionToken, name:"sessionToken", parent: name, pattern: "^[A-Za-z-0-9+/=]+$")
            try self.startSession?.validate(name: "\(name).startSession")
        }

        private enum CodingKeys: String, CodingKey {
            case abortTransaction = "AbortTransaction"
            case commitTransaction = "CommitTransaction"
            case endSession = "EndSession"
            case executeStatement = "ExecuteStatement"
            case fetchPage = "FetchPage"
            case sessionToken = "SessionToken"
            case startSession = "StartSession"
            case startTransaction = "StartTransaction"
        }
    }

    public struct SendCommandResult: AWSShape {

        /// Contains the details of the aborted transaction.
        public let abortTransaction: AbortTransactionResult?
        /// Contains the details of the committed transaction.
        public let commitTransaction: CommitTransactionResult?
        /// Contains the details of the ended session.
        public let endSession: EndSessionResult?
        /// Contains the details of the executed statement.
        public let executeStatement: ExecuteStatementResult?
        /// Contains the details of the fetched page.
        public let fetchPage: FetchPageResult?
        /// Contains the details of the started session that includes a session token. This SessionToken is required for every subsequent command that is issued during the current session.
        public let startSession: StartSessionResult?
        /// Contains the details of the started transaction.
        public let startTransaction: StartTransactionResult?

        public init(abortTransaction: AbortTransactionResult? = nil, commitTransaction: CommitTransactionResult? = nil, endSession: EndSessionResult? = nil, executeStatement: ExecuteStatementResult? = nil, fetchPage: FetchPageResult? = nil, startSession: StartSessionResult? = nil, startTransaction: StartTransactionResult? = nil) {
            self.abortTransaction = abortTransaction
            self.commitTransaction = commitTransaction
            self.endSession = endSession
            self.executeStatement = executeStatement
            self.fetchPage = fetchPage
            self.startSession = startSession
            self.startTransaction = startTransaction
        }

        private enum CodingKeys: String, CodingKey {
            case abortTransaction = "AbortTransaction"
            case commitTransaction = "CommitTransaction"
            case endSession = "EndSession"
            case executeStatement = "ExecuteStatement"
            case fetchPage = "FetchPage"
            case startSession = "StartSession"
            case startTransaction = "StartTransaction"
        }
    }

    public struct StartSessionRequest: AWSShape {

        /// The name of the ledger to start a new session against.
        public let ledgerName: String

        public init(ledgerName: String) {
            self.ledgerName = ledgerName
        }

        public func validate(name: String) throws {
            try validate(self.ledgerName, name:"ledgerName", parent: name, max: 32)
            try validate(self.ledgerName, name:"ledgerName", parent: name, min: 1)
            try validate(self.ledgerName, name:"ledgerName", parent: name, pattern: "(?!^.*--)(?!^[0-9]+$)(?!^-)(?!.*-$)^[A-Za-z0-9-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case ledgerName = "LedgerName"
        }
    }

    public struct StartSessionResult: AWSShape {

        /// Session token of the started session. This SessionToken is required for every subsequent command that is issued during the current session.
        public let sessionToken: String?

        public init(sessionToken: String? = nil) {
            self.sessionToken = sessionToken
        }

        private enum CodingKeys: String, CodingKey {
            case sessionToken = "SessionToken"
        }
    }

    public struct StartTransactionRequest: AWSShape {


        public init() {
        }

    }

    public struct StartTransactionResult: AWSShape {

        /// The transaction id of the started transaction.
        public let transactionId: String?

        public init(transactionId: String? = nil) {
            self.transactionId = transactionId
        }

        private enum CodingKeys: String, CodingKey {
            case transactionId = "TransactionId"
        }
    }

    public struct ValueHolder: AWSShape {

        /// An Amazon Ion binary value contained in a ValueHolder structure. 
        public let ionBinary: Data?
        /// An Amazon Ion plaintext value contained in a ValueHolder structure. 
        public let ionText: String?

        public init(ionBinary: Data? = nil, ionText: String? = nil) {
            self.ionBinary = ionBinary
            self.ionText = ionText
        }

        public func validate(name: String) throws {
            try validate(self.ionBinary, name:"ionBinary", parent: name, max: 131072)
            try validate(self.ionBinary, name:"ionBinary", parent: name, min: 1)
            try validate(self.ionText, name:"ionText", parent: name, max: 1048576)
            try validate(self.ionText, name:"ionText", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case ionBinary = "IonBinary"
            case ionText = "IonText"
        }
    }
}
