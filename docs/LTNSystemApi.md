# LTNSystemApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHealth**](LTNSystemApi.md#gethealth) | **GET** /health | Health check


# **getHealth**
```objc
-(NSURLSessionTask*) getHealthWithCompletionHandler: 
        (void (^)(LTNGetHealth200Response* output, NSError* error)) handler;
```

Health check

Returns server health status

### Example
```objc


LTNSystemApi*apiInstance = [[LTNSystemApi alloc] init];

// Health check
[apiInstance getHealthWithCompletionHandler: 
          ^(LTNGetHealth200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling LTNSystemApi->getHealth: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LTNGetHealth200Response***](LTNGetHealth200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

