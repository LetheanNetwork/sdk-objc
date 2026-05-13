#import "LTNRunnerApi.h"
#import "LTNQueryParamCollection.h"
#import "LTNApiClient.h"
#import "LTNGetHealth429Response.h"
#import "LTNGetV1RunnerModels200Response.h"
#import "LTNPostV1RunnerChat200Response.h"
#import "LTNPostV1RunnerChatRequest.h"
#import "LTNPostV1RunnerGenerateRequest.h"


@interface LTNRunnerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation LTNRunnerApi

NSString* kLTNRunnerApiErrorDomain = @"LTNRunnerApiErrorDomain";
NSInteger kLTNRunnerApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[LTNApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(LTNApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// List configured runner model routes
/// 
///  @returns LTNGetV1RunnerModels200Response*
///
-(NSURLSessionTask*) getV1RunnerModelsWithCompletionHandler: 
    (void (^)(LTNGetV1RunnerModels200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/runner/models"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"bearerAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"LTNGetV1RunnerModels200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((LTNGetV1RunnerModels200Response*)data, error);
                                }
                            }];
}

///
/// Multi-turn chat completion
/// 
///  @param postV1RunnerChatRequest  
///
///  @returns LTNPostV1RunnerChat200Response*
///
-(NSURLSessionTask*) postV1RunnerChatWithPostV1RunnerChatRequest: (LTNPostV1RunnerChatRequest*) postV1RunnerChatRequest
    completionHandler: (void (^)(LTNPostV1RunnerChat200Response* output, NSError* error)) handler {
    // verify the required parameter 'postV1RunnerChatRequest' is set
    if (postV1RunnerChatRequest == nil) {
        NSParameterAssert(postV1RunnerChatRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"postV1RunnerChatRequest"] };
            NSError* error = [NSError errorWithDomain:kLTNRunnerApiErrorDomain code:kLTNRunnerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/runner/chat"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"bearerAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = postV1RunnerChatRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"LTNPostV1RunnerChat200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((LTNPostV1RunnerChat200Response*)data, error);
                                }
                            }];
}

///
/// Single-prompt generation
/// 
///  @param postV1RunnerGenerateRequest  
///
///  @returns LTNPostV1RunnerChat200Response*
///
-(NSURLSessionTask*) postV1RunnerGenerateWithPostV1RunnerGenerateRequest: (LTNPostV1RunnerGenerateRequest*) postV1RunnerGenerateRequest
    completionHandler: (void (^)(LTNPostV1RunnerChat200Response* output, NSError* error)) handler {
    // verify the required parameter 'postV1RunnerGenerateRequest' is set
    if (postV1RunnerGenerateRequest == nil) {
        NSParameterAssert(postV1RunnerGenerateRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"postV1RunnerGenerateRequest"] };
            NSError* error = [NSError errorWithDomain:kLTNRunnerApiErrorDomain code:kLTNRunnerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/runner/generate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"bearerAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = postV1RunnerGenerateRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"LTNPostV1RunnerChat200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((LTNPostV1RunnerChat200Response*)data, error);
                                }
                            }];
}



@end
