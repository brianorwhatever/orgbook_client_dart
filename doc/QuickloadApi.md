# orgbookapi.api.QuickloadApi

## Load the API package
```dart
import 'package:orgbookapi/api.dart';
```

All URIs are relative to *https://www.orgbook.gov.bc.ca/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2Quickload**](QuickloadApi.md#apiV2Quickload) | **GET** /quickload | 


# **apiV2Quickload**
> apiV2Quickload()



quick load

### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = QuickloadApi();

try { 
    api_instance.apiV2Quickload();
} catch (e) {
    print("Exception when calling QuickloadApi->apiV2Quickload: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

