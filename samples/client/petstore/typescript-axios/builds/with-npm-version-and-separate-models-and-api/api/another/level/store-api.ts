/* tslint:disable */
/* eslint-disable */
/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


import globalAxios, { AxiosPromise, AxiosInstance, AxiosRequestConfig } from 'axios';
import { Configuration } from '../../../configuration';
// Some imports not used depending on template conditions
// @ts-ignore
import { DUMMY_BASE_URL, assertParamExists, setApiKeyToObject, setBasicAuthToObject, setBearerAuthToObject, setOAuthToObject, setSearchParams, serializeDataIfNeeded, toPathString, createRequestFunction } from '../../../common';
// @ts-ignore
import { BASE_PATH, COLLECTION_FORMATS, RequestArgs, BaseAPI, RequiredError } from '../../../base';
// @ts-ignore
import { Order } from '../../../model/some/levels/deep';
/**
 * StoreApi - axios parameter creator
 * @export
 */
export const StoreApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
         * @summary Delete purchase order by ID
         * @param {string} orderId ID of the order that needs to be deleted
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteOrder: async (orderId: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'orderId' is not null or undefined
            assertParamExists('deleteOrder', 'orderId', orderId)
            const localVarPath = `/store/order/{orderId}`
                .replace(`{${"orderId"}}`, encodeURIComponent(String(orderId)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'DELETE', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;


    
            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Returns a map of status codes to quantities
         * @summary Returns pet inventories by status
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getInventory: async (options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            const localVarPath = `/store/inventory`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication api_key required
            await setApiKeyToObject(localVarHeaderParameter, "api_key", configuration)


    
            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
         * @summary Find purchase order by ID
         * @param {number} orderId ID of pet that needs to be fetched
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getOrderById: async (orderId: number, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'orderId' is not null or undefined
            assertParamExists('getOrderById', 'orderId', orderId)
            const localVarPath = `/store/order/{orderId}`
                .replace(`{${"orderId"}}`, encodeURIComponent(String(orderId)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;


    
            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * 
         * @summary Place an order for a pet
         * @param {Order} body order placed for purchasing the pet
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        placeOrder: async (body: Order, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'body' is not null or undefined
            assertParamExists('placeOrder', 'body', body)
            const localVarPath = `/store/order`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;


    
            localVarHeaderParameter['Content-Type'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = serializeDataIfNeeded(body, localVarRequestOptions, configuration)

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * StoreApi - functional programming interface
 * @export
 */
export const StoreApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = StoreApiAxiosParamCreator(configuration)
    return {
        /**
         * For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
         * @summary Delete purchase order by ID
         * @param {string} orderId ID of the order that needs to be deleted
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async deleteOrder(orderId: string, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.deleteOrder(orderId, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Returns a map of status codes to quantities
         * @summary Returns pet inventories by status
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async getInventory(options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<{ [key: string]: number; }>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.getInventory(options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
         * @summary Find purchase order by ID
         * @param {number} orderId ID of pet that needs to be fetched
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async getOrderById(orderId: number, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Order>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.getOrderById(orderId, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * 
         * @summary Place an order for a pet
         * @param {Order} body order placed for purchasing the pet
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async placeOrder(body: Order, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Order>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.placeOrder(body, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
    }
};

/**
 * StoreApi - factory interface
 * @export
 */
export const StoreApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = StoreApiFp(configuration)
    return {
        /**
         * For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
         * @summary Delete purchase order by ID
         * @param {string} orderId ID of the order that needs to be deleted
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteOrder(orderId: string, options?: any): AxiosPromise<void> {
            return localVarFp.deleteOrder(orderId, options).then((request) => request(axios, basePath));
        },
        /**
         * Returns a map of status codes to quantities
         * @summary Returns pet inventories by status
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getInventory(options?: any): AxiosPromise<{ [key: string]: number; }> {
            return localVarFp.getInventory(options).then((request) => request(axios, basePath));
        },
        /**
         * For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
         * @summary Find purchase order by ID
         * @param {number} orderId ID of pet that needs to be fetched
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getOrderById(orderId: number, options?: any): AxiosPromise<Order> {
            return localVarFp.getOrderById(orderId, options).then((request) => request(axios, basePath));
        },
        /**
         * 
         * @summary Place an order for a pet
         * @param {Order} body order placed for purchasing the pet
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        placeOrder(body: Order, options?: any): AxiosPromise<Order> {
            return localVarFp.placeOrder(body, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * StoreApi - object-oriented interface
 * @export
 * @class StoreApi
 * @extends {BaseAPI}
 */
export class StoreApi extends BaseAPI {
    /**
     * For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
     * @summary Delete purchase order by ID
     * @param {string} orderId ID of the order that needs to be deleted
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof StoreApi
     */
    public deleteOrder(orderId: string, options?: AxiosRequestConfig) {
        return StoreApiFp(this.configuration).deleteOrder(orderId, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Returns a map of status codes to quantities
     * @summary Returns pet inventories by status
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof StoreApi
     */
    public getInventory(options?: AxiosRequestConfig) {
        return StoreApiFp(this.configuration).getInventory(options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
     * @summary Find purchase order by ID
     * @param {number} orderId ID of pet that needs to be fetched
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof StoreApi
     */
    public getOrderById(orderId: number, options?: AxiosRequestConfig) {
        return StoreApiFp(this.configuration).getOrderById(orderId, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * 
     * @summary Place an order for a pet
     * @param {Order} body order placed for purchasing the pet
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof StoreApi
     */
    public placeOrder(body: Order, options?: AxiosRequestConfig) {
        return StoreApiFp(this.configuration).placeOrder(body, options).then((request) => request(this.axios, this.basePath));
    }
}
