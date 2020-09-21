# orgbookapi.api.IssuerApi

## Load the API package
```dart
import 'package:orgbookapi/api.dart';
```

All URIs are relative to *https://www.orgbook.gov.bc.ca/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**issuerFetchLogo**](IssuerApi.md#issuerFetchLogo) | **GET** /issuer/{id}/logo | 
[**issuerList**](IssuerApi.md#issuerList) | **GET** /issuer | 
[**issuerListCredentialTypes**](IssuerApi.md#issuerListCredentialTypes) | **GET** /issuer/{id}/credentialtype | 
[**issuerRead**](IssuerApi.md#issuerRead) | **GET** /issuer/{id} | 


# **issuerFetchLogo**
> Issuer issuerFetchLogo(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = IssuerApi();
var id = 56; // int | A unique integer value identifying this issuer.

try { 
    var result = api_instance.issuerFetchLogo(id);
    print(result);
} catch (e) {
    print("Exception when calling IssuerApi->issuerFetchLogo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this issuer. | 

### Return type

[**Issuer**](Issuer.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuerList**
> InlineResponse2002 issuerList()



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = IssuerApi();

try { 
    var result = api_instance.issuerList();
    print(result);
} catch (e) {
    print("Exception when calling IssuerApi->issuerList: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuerListCredentialTypes**
> List<CredentialType> issuerListCredentialTypes(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = IssuerApi();
var id = 56; // int | A unique integer value identifying this issuer.

try { 
    var result = api_instance.issuerListCredentialTypes(id);
    print(result);
} catch (e) {
    print("Exception when calling IssuerApi->issuerListCredentialTypes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this issuer. | 

### Return type

[**List<CredentialType>**](CredentialType.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuerRead**
> Issuer issuerRead(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = IssuerApi();
var id = 56; // int | A unique integer value identifying this issuer.

try { 
    var result = api_instance.issuerRead(id);
    print(result);
} catch (e) {
    print("Exception when calling IssuerApi->issuerRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this issuer. | 

### Return type

[**Issuer**](Issuer.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

