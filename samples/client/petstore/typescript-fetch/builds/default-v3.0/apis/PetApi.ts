/* tslint:disable */
/* eslint-disable */
/**
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


import * as runtime from '../runtime';
import {
    ModelApiResponse,
    ModelApiResponseFromJSON,
    ModelApiResponseToJSON,
    Pet,
    PetFromJSON,
    PetToJSON,
} from '../models';

export interface AddPetRequest {
    pet: Pet;
}

export interface DeletePetRequest {
    petId: number;
    apiKey?: string;
}

export interface FindPetsByStatusRequest {
    status: Array<FindPetsByStatusStatusEnum>;
}

export interface FindPetsByTagsRequest {
    tags: Set<string>;
}

export interface GetPetByIdRequest {
    petId: number;
}

export interface UpdatePetRequest {
    pet: Pet;
}

export interface UpdatePetWithFormRequest {
    petId: number;
    name?: string;
    status?: string;
}

export interface UploadFileRequest {
    petId: number;
    additionalMetadata?: string;
    file?: Blob;
}

export interface UploadFileWithRequiredFileRequest {
    petId: number;
    requiredFile: Blob;
    additionalMetadata?: string;
}

/**
 * 
 */
export class PetApi extends runtime.BaseAPI {

    /**
     * 
     * Add a new pet to the store
     */
    async addPetRaw(requestParameters: AddPetRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.pet === null || requestParameters.pet === undefined) {
            throw new runtime.RequiredError('pet','Required parameter requestParameters.pet was null or undefined when calling addPet.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        if (this.configuration && this.configuration.accessToken) {
            // oauth required
            headerParameters["Authorization"] = await this.configuration.accessToken("petstore_auth", ["write:pets", "read:pets"]);
        }

        const response = await this.request({
            path: `/pet`,
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
            body: PetToJSON(requestParameters.pet),
        }, initOverrides);

        return new runtime.VoidApiResponse(response);
    }

    /**
     * 
     * Add a new pet to the store
     */
    async addPet(requestParameters: AddPetRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<void> {
        await this.addPetRaw(requestParameters, initOverrides);
    }

    /**
     * 
     * Deletes a pet
     */
    async deletePetRaw(requestParameters: DeletePetRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.petId === null || requestParameters.petId === undefined) {
            throw new runtime.RequiredError('petId','Required parameter requestParameters.petId was null or undefined when calling deletePet.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (requestParameters.apiKey !== undefined && requestParameters.apiKey !== null) {
            headerParameters['api_key'] = String(requestParameters.apiKey);
        }

        if (this.configuration && this.configuration.accessToken) {
            // oauth required
            headerParameters["Authorization"] = await this.configuration.accessToken("petstore_auth", ["write:pets", "read:pets"]);
        }

        const response = await this.request({
            path: `/pet/{petId}`.replace(`{${"petId"}}`, encodeURIComponent(String(requestParameters.petId))),
            method: 'DELETE',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.VoidApiResponse(response);
    }

    /**
     * 
     * Deletes a pet
     */
    async deletePet(requestParameters: DeletePetRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<void> {
        await this.deletePetRaw(requestParameters, initOverrides);
    }

    /**
     * Multiple status values can be provided with comma separated strings
     * Finds Pets by status
     */
    async findPetsByStatusRaw(requestParameters: FindPetsByStatusRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<runtime.ApiResponse<Array<Pet>>> {
        if (requestParameters.status === null || requestParameters.status === undefined) {
            throw new runtime.RequiredError('status','Required parameter requestParameters.status was null or undefined when calling findPetsByStatus.');
        }

        const queryParameters: any = {};

        if (requestParameters.status) {
            queryParameters['status'] = requestParameters.status.join(runtime.COLLECTION_FORMATS["csv"]);
        }

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            // oauth required
            headerParameters["Authorization"] = await this.configuration.accessToken("petstore_auth", ["write:pets", "read:pets"]);
        }

        const response = await this.request({
            path: `/pet/findByStatus`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => jsonValue.map(PetFromJSON));
    }

    /**
     * Multiple status values can be provided with comma separated strings
     * Finds Pets by status
     */
    async findPetsByStatus(requestParameters: FindPetsByStatusRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<Array<Pet>> {
        const response = await this.findPetsByStatusRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
     * Finds Pets by tags
     */
    async findPetsByTagsRaw(requestParameters: FindPetsByTagsRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<runtime.ApiResponse<Set<Pet>>> {
        if (requestParameters.tags === null || requestParameters.tags === undefined) {
            throw new runtime.RequiredError('tags','Required parameter requestParameters.tags was null or undefined when calling findPetsByTags.');
        }

        const queryParameters: any = {};

        if (requestParameters.tags) {
            queryParameters['tags'] = Array.from(requestParameters.tags).join(runtime.COLLECTION_FORMATS["csv"]);
        }

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            // oauth required
            headerParameters["Authorization"] = await this.configuration.accessToken("petstore_auth", ["write:pets", "read:pets"]);
        }

        const response = await this.request({
            path: `/pet/findByTags`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => new Set(jsonValue.map(PetFromJSON)));
    }

    /**
     * Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
     * Finds Pets by tags
     */
    async findPetsByTags(requestParameters: FindPetsByTagsRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<Set<Pet>> {
        const response = await this.findPetsByTagsRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Returns a single pet
     * Find pet by ID
     */
    async getPetByIdRaw(requestParameters: GetPetByIdRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<runtime.ApiResponse<Pet>> {
        if (requestParameters.petId === null || requestParameters.petId === undefined) {
            throw new runtime.RequiredError('petId','Required parameter requestParameters.petId was null or undefined when calling getPetById.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.apiKey) {
            headerParameters["api_key"] = this.configuration.apiKey("api_key"); // api_key authentication
        }

        const response = await this.request({
            path: `/pet/{petId}`.replace(`{${"petId"}}`, encodeURIComponent(String(requestParameters.petId))),
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => PetFromJSON(jsonValue));
    }

    /**
     * Returns a single pet
     * Find pet by ID
     */
    async getPetById(requestParameters: GetPetByIdRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<Pet> {
        const response = await this.getPetByIdRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * 
     * Update an existing pet
     */
    async updatePetRaw(requestParameters: UpdatePetRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.pet === null || requestParameters.pet === undefined) {
            throw new runtime.RequiredError('pet','Required parameter requestParameters.pet was null or undefined when calling updatePet.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        if (this.configuration && this.configuration.accessToken) {
            // oauth required
            headerParameters["Authorization"] = await this.configuration.accessToken("petstore_auth", ["write:pets", "read:pets"]);
        }

        const response = await this.request({
            path: `/pet`,
            method: 'PUT',
            headers: headerParameters,
            query: queryParameters,
            body: PetToJSON(requestParameters.pet),
        }, initOverrides);

        return new runtime.VoidApiResponse(response);
    }

    /**
     * 
     * Update an existing pet
     */
    async updatePet(requestParameters: UpdatePetRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<void> {
        await this.updatePetRaw(requestParameters, initOverrides);
    }

    /**
     * 
     * Updates a pet in the store with form data
     */
    async updatePetWithFormRaw(requestParameters: UpdatePetWithFormRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.petId === null || requestParameters.petId === undefined) {
            throw new runtime.RequiredError('petId','Required parameter requestParameters.petId was null or undefined when calling updatePetWithForm.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            // oauth required
            headerParameters["Authorization"] = await this.configuration.accessToken("petstore_auth", ["write:pets", "read:pets"]);
        }

        const consumes: runtime.Consume[] = [
            { contentType: 'application/x-www-form-urlencoded' },
        ];
        // @ts-ignore: canConsumeForm may be unused
        const canConsumeForm = runtime.canConsumeForm(consumes);

        let formParams: { append(param: string, value: any): any };
        let useForm = false;
        if (useForm) {
            formParams = new FormData();
        } else {
            formParams = new URLSearchParams();
        }

        if (requestParameters.name !== undefined) {
            formParams.append('name', requestParameters.name as any);
        }

        if (requestParameters.status !== undefined) {
            formParams.append('status', requestParameters.status as any);
        }

        const response = await this.request({
            path: `/pet/{petId}`.replace(`{${"petId"}}`, encodeURIComponent(String(requestParameters.petId))),
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
            body: formParams,
        }, initOverrides);

        return new runtime.VoidApiResponse(response);
    }

    /**
     * 
     * Updates a pet in the store with form data
     */
    async updatePetWithForm(requestParameters: UpdatePetWithFormRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<void> {
        await this.updatePetWithFormRaw(requestParameters, initOverrides);
    }

    /**
     * 
     * uploads an image
     */
    async uploadFileRaw(requestParameters: UploadFileRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<runtime.ApiResponse<ModelApiResponse>> {
        if (requestParameters.petId === null || requestParameters.petId === undefined) {
            throw new runtime.RequiredError('petId','Required parameter requestParameters.petId was null or undefined when calling uploadFile.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            // oauth required
            headerParameters["Authorization"] = await this.configuration.accessToken("petstore_auth", ["write:pets", "read:pets"]);
        }

        const consumes: runtime.Consume[] = [
            { contentType: 'multipart/form-data' },
        ];
        // @ts-ignore: canConsumeForm may be unused
        const canConsumeForm = runtime.canConsumeForm(consumes);

        let formParams: { append(param: string, value: any): any };
        let useForm = false;
        // use FormData to transmit files using content-type "multipart/form-data"
        useForm = canConsumeForm;
        if (useForm) {
            formParams = new FormData();
        } else {
            formParams = new URLSearchParams();
        }

        if (requestParameters.additionalMetadata !== undefined) {
            formParams.append('additionalMetadata', requestParameters.additionalMetadata as any);
        }

        if (requestParameters.file !== undefined) {
            formParams.append('file', requestParameters.file as any);
        }

        const response = await this.request({
            path: `/pet/{petId}/uploadImage`.replace(`{${"petId"}}`, encodeURIComponent(String(requestParameters.petId))),
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
            body: formParams,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => ModelApiResponseFromJSON(jsonValue));
    }

    /**
     * 
     * uploads an image
     */
    async uploadFile(requestParameters: UploadFileRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<ModelApiResponse> {
        const response = await this.uploadFileRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * 
     * uploads an image (required)
     */
    async uploadFileWithRequiredFileRaw(requestParameters: UploadFileWithRequiredFileRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<runtime.ApiResponse<ModelApiResponse>> {
        if (requestParameters.petId === null || requestParameters.petId === undefined) {
            throw new runtime.RequiredError('petId','Required parameter requestParameters.petId was null or undefined when calling uploadFileWithRequiredFile.');
        }

        if (requestParameters.requiredFile === null || requestParameters.requiredFile === undefined) {
            throw new runtime.RequiredError('requiredFile','Required parameter requestParameters.requiredFile was null or undefined when calling uploadFileWithRequiredFile.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            // oauth required
            headerParameters["Authorization"] = await this.configuration.accessToken("petstore_auth", ["write:pets", "read:pets"]);
        }

        const consumes: runtime.Consume[] = [
            { contentType: 'multipart/form-data' },
        ];
        // @ts-ignore: canConsumeForm may be unused
        const canConsumeForm = runtime.canConsumeForm(consumes);

        let formParams: { append(param: string, value: any): any };
        let useForm = false;
        // use FormData to transmit files using content-type "multipart/form-data"
        useForm = canConsumeForm;
        if (useForm) {
            formParams = new FormData();
        } else {
            formParams = new URLSearchParams();
        }

        if (requestParameters.additionalMetadata !== undefined) {
            formParams.append('additionalMetadata', requestParameters.additionalMetadata as any);
        }

        if (requestParameters.requiredFile !== undefined) {
            formParams.append('requiredFile', requestParameters.requiredFile as any);
        }

        const response = await this.request({
            path: `/fake/{petId}/uploadImageWithRequiredFile`.replace(`{${"petId"}}`, encodeURIComponent(String(requestParameters.petId))),
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
            body: formParams,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => ModelApiResponseFromJSON(jsonValue));
    }

    /**
     * 
     * uploads an image (required)
     */
    async uploadFileWithRequiredFile(requestParameters: UploadFileWithRequiredFileRequest, initOverrides?: RequestInit | runtime.InitOverideFunction): Promise<ModelApiResponse> {
        const response = await this.uploadFileWithRequiredFileRaw(requestParameters, initOverrides);
        return await response.value();
    }

}

/**
 * @export
 */
export const FindPetsByStatusStatusEnum = {
    Available: 'available',
    Pending: 'pending',
    Sold: 'sold'
} as const;
export type FindPetsByStatusStatusEnum = typeof FindPetsByStatusStatusEnum[keyof typeof FindPetsByStatusStatusEnum];
