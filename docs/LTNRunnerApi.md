# LTNRunnerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getV1RunnerModels**](LTNRunnerApi.md#getv1runnermodels) | **GET** /v1/runner/models | List configured runner model routes
[**postV1RunnerChat**](LTNRunnerApi.md#postv1runnerchat) | **POST** /v1/runner/chat | Multi-turn chat completion
[**postV1RunnerGenerate**](LTNRunnerApi.md#postv1runnergenerate) | **POST** /v1/runner/generate | Single-prompt generation


# **getV1RunnerModels**
```objc
-(NSURLSessionTask*) getV1RunnerModelsWithCompletionHandler: 
        (void (^)(LTNGetV1RunnerModels200Response* output, NSError* error)) handler;
```

List configured runner model routes



### Example
```objc
LTNDefaultConfiguration *apiConfig = [LTNDefaultConfiguration sharedConfig];



LTNRunnerApi*apiInstance = [[LTNRunnerApi alloc] init];

// List configured runner model routes
[apiInstance getV1RunnerModelsWithCompletionHandler: 
          ^(LTNGetV1RunnerModels200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling LTNRunnerApi->getV1RunnerModels: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LTNGetV1RunnerModels200Response***](LTNGetV1RunnerModels200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postV1RunnerChat**
```objc
-(NSURLSessionTask*) postV1RunnerChatWithPostV1RunnerChatRequest: (LTNPostV1RunnerChatRequest*) postV1RunnerChatRequest
        completionHandler: (void (^)(LTNPostV1RunnerChat200Response* output, NSError* error)) handler;
```

Multi-turn chat completion



### Example
```objc
LTNDefaultConfiguration *apiConfig = [LTNDefaultConfiguration sharedConfig];


LTNPostV1RunnerChatRequest* postV1RunnerChatRequest = [[LTNPostV1RunnerChatRequest alloc] init]; // 

LTNRunnerApi*apiInstance = [[LTNRunnerApi alloc] init];

// Multi-turn chat completion
[apiInstance postV1RunnerChatWithPostV1RunnerChatRequest:postV1RunnerChatRequest
          completionHandler: ^(LTNPostV1RunnerChat200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling LTNRunnerApi->postV1RunnerChat: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postV1RunnerChatRequest** | [**LTNPostV1RunnerChatRequest***](LTNPostV1RunnerChatRequest.md)|  | 

### Return type

[**LTNPostV1RunnerChat200Response***](LTNPostV1RunnerChat200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postV1RunnerGenerate**
```objc
-(NSURLSessionTask*) postV1RunnerGenerateWithPostV1RunnerGenerateRequest: (LTNPostV1RunnerGenerateRequest*) postV1RunnerGenerateRequest
        completionHandler: (void (^)(LTNPostV1RunnerChat200Response* output, NSError* error)) handler;
```

Single-prompt generation



### Example
```objc
LTNDefaultConfiguration *apiConfig = [LTNDefaultConfiguration sharedConfig];


LTNPostV1RunnerGenerateRequest* postV1RunnerGenerateRequest = [[LTNPostV1RunnerGenerateRequest alloc] init]; // 

LTNRunnerApi*apiInstance = [[LTNRunnerApi alloc] init];

// Single-prompt generation
[apiInstance postV1RunnerGenerateWithPostV1RunnerGenerateRequest:postV1RunnerGenerateRequest
          completionHandler: ^(LTNPostV1RunnerChat200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling LTNRunnerApi->postV1RunnerGenerate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postV1RunnerGenerateRequest** | [**LTNPostV1RunnerGenerateRequest***](LTNPostV1RunnerGenerateRequest.md)|  | 

### Return type

[**LTNPostV1RunnerChat200Response***](LTNPostV1RunnerChat200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

