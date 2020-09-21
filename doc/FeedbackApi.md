# orgbookapi.api.FeedbackApi

## Load the API package
```dart
import 'package:orgbookapi/api.dart';
```

All URIs are relative to *https://www.orgbook.gov.bc.ca/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**feedbackCreate**](FeedbackApi.md#feedbackCreate) | **POST** /feedback | 


# **feedbackCreate**
> feedbackCreate(fromName, fromEmail, comments)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = FeedbackApi();
var fromName = fromName_example; // String | Sender name
var fromEmail = ; // String | Sender email address
var comments = comments_example; // String | Comments

try { 
    api_instance.feedbackCreate(fromName, fromEmail, comments);
} catch (e) {
    print("Exception when calling FeedbackApi->feedbackCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromName** | **String**| Sender name | [optional] 
 **fromEmail** | [**String**](String.md)| Sender email address | [optional] 
 **comments** | **String**| Comments | [optional] 

### Return type

void (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

