/**
 * OpenAPI Petstore
 *
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.apis

import java.io.IOException

import org.openapitools.client.models.Order

import com.google.gson.annotations.SerializedName

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.openapitools.client.infrastructure.ApiClient
import org.openapitools.client.infrastructure.ApiResponse
import org.openapitools.client.infrastructure.ClientException
import org.openapitools.client.infrastructure.ClientError
import org.openapitools.client.infrastructure.ServerException
import org.openapitools.client.infrastructure.ServerError
import org.openapitools.client.infrastructure.MultiValueMap
import org.openapitools.client.infrastructure.PartConfig
import org.openapitools.client.infrastructure.RequestConfig
import org.openapitools.client.infrastructure.RequestMethod
import org.openapitools.client.infrastructure.ResponseType
import org.openapitools.client.infrastructure.Success
import org.openapitools.client.infrastructure.toMultiValue

class StoreApi(basePath: kotlin.String = defaultBasePath) : ApiClient(basePath) {
    companion object {
        @JvmStatic
        val defaultBasePath: String by lazy {
            System.getProperties().getProperty(ApiClient.baseUrlKey, "http://petstore.swagger.io/v2")
        }
    }

    /**
    * Delete purchase order by ID
    * For valid response try integer IDs with value &lt; 1000. Anything above 1000 or nonintegers will generate API errors
    * @param orderId ID of the order that needs to be deleted 
    * @return void
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    suspend fun deleteOrder(orderId: kotlin.String) : Unit = withContext(Dispatchers.IO) {
        val localVarResponse = deleteOrderWithHttpInfo(orderId = orderId)

        return@withContext when (localVarResponse.responseType) {
            ResponseType.Success -> Unit
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Delete purchase order by ID
    * For valid response try integer IDs with value &lt; 1000. Anything above 1000 or nonintegers will generate API errors
    * @param orderId ID of the order that needs to be deleted 
    * @return ApiResponse<Unit?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Throws(IllegalStateException::class, IOException::class)
    suspend fun deleteOrderWithHttpInfo(orderId: kotlin.String) : ApiResponse<Unit?> = withContext(Dispatchers.IO) {
        val localVariableConfig = deleteOrderRequestConfig(orderId = orderId)

        return@withContext request<Unit, Unit>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation deleteOrder
    *
    * @param orderId ID of the order that needs to be deleted 
    * @return RequestConfig
    */
    fun deleteOrderRequestConfig(orderId: kotlin.String) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        
        return RequestConfig(
            method = RequestMethod.DELETE,
            path = "/store/order/{orderId}".replace("{"+"orderId"+"}", "$orderId"),
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
    * Returns pet inventories by status
    * Returns a map of status codes to quantities
    * @return kotlin.collections.Map<kotlin.String, kotlin.Int>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    suspend fun getInventory() : kotlin.collections.Map<kotlin.String, kotlin.Int> = withContext(Dispatchers.IO) {
        val localVarResponse = getInventoryWithHttpInfo()

        return@withContext when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.collections.Map<kotlin.String, kotlin.Int>
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Returns pet inventories by status
    * Returns a map of status codes to quantities
    * @return ApiResponse<kotlin.collections.Map<kotlin.String, kotlin.Int>?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    suspend fun getInventoryWithHttpInfo() : ApiResponse<kotlin.collections.Map<kotlin.String, kotlin.Int>?> = withContext(Dispatchers.IO) {
        val localVariableConfig = getInventoryRequestConfig()

        return@withContext request<Unit, kotlin.collections.Map<kotlin.String, kotlin.Int>>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation getInventory
    *
    * @return RequestConfig
    */
    fun getInventoryRequestConfig() : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/store/inventory",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
    * Find purchase order by ID
    * For valid response try integer IDs with value &lt;&#x3D; 5 or &gt; 10. Other values will generated exceptions
    * @param orderId ID of pet that needs to be fetched 
    * @return Order
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    suspend fun getOrderById(orderId: kotlin.Long) : Order = withContext(Dispatchers.IO) {
        val localVarResponse = getOrderByIdWithHttpInfo(orderId = orderId)

        return@withContext when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as Order
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Find purchase order by ID
    * For valid response try integer IDs with value &lt;&#x3D; 5 or &gt; 10. Other values will generated exceptions
    * @param orderId ID of pet that needs to be fetched 
    * @return ApiResponse<Order?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    suspend fun getOrderByIdWithHttpInfo(orderId: kotlin.Long) : ApiResponse<Order?> = withContext(Dispatchers.IO) {
        val localVariableConfig = getOrderByIdRequestConfig(orderId = orderId)

        return@withContext request<Unit, Order>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation getOrderById
    *
    * @param orderId ID of pet that needs to be fetched 
    * @return RequestConfig
    */
    fun getOrderByIdRequestConfig(orderId: kotlin.Long) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/store/order/{orderId}".replace("{"+"orderId"+"}", "$orderId"),
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
    * Place an order for a pet
    * 
    * @param body order placed for purchasing the pet 
    * @return Order
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    suspend fun placeOrder(body: Order) : Order = withContext(Dispatchers.IO) {
        val localVarResponse = placeOrderWithHttpInfo(body = body)

        return@withContext when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as Order
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Place an order for a pet
    * 
    * @param body order placed for purchasing the pet 
    * @return ApiResponse<Order?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    suspend fun placeOrderWithHttpInfo(body: Order) : ApiResponse<Order?> = withContext(Dispatchers.IO) {
        val localVariableConfig = placeOrderRequestConfig(body = body)

        return@withContext request<Order, Order>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation placeOrder
    *
    * @param body order placed for purchasing the pet 
    * @return RequestConfig
    */
    fun placeOrderRequestConfig(body: Order) : RequestConfig<Order> {
        val localVariableBody = body
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.POST,
            path = "/store/order",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

}
