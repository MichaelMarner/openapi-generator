/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI-Generator unset.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


#include <corvusoft/restbed/byte.hpp>
#include <corvusoft/restbed/string.hpp>
#include <corvusoft/restbed/settings.hpp>
#include <corvusoft/restbed/request.hpp>
#include <corvusoft/restbed/uri.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/algorithm/string.hpp>

#include "StoreApi.h"

namespace org {
namespace openapitools {
namespace server {
namespace api {

using namespace org::openapitools::server::model;

StoreApiException::StoreApiException(int status_code, std::string what)
  : m_status(status_code),
    m_what(what)
{

}
int StoreApiException::getStatus() const
{
    return m_status;
}
const char* StoreApiException::what() const noexcept
{
    return m_what.c_str();
}


template<class MODEL_T>
std::shared_ptr<MODEL_T> extractJsonModelBodyParam(const std::string& bodyContent)
{
    std::stringstream sstream(bodyContent);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream, pt);

    auto model = std::make_shared<MODEL_T>(pt);
    return model;
}

template<class MODEL_T>
std::vector<std::shared_ptr<MODEL_T>> extractJsonArrayBodyParam(const std::string& bodyContent)
{
    std::stringstream sstream(bodyContent);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream, pt);

    auto arrayRet = std::vector<std::shared_ptr<MODEL_T>>();
    for (const auto& child: pt) {
        arrayRet.emplace_back(std::make_shared<MODEL_T>(child.second));
    }
    return arrayRet;
}

template <class KEY_T, class VAL_T>
std::string convertMapResponse(const std::map<KEY_T, VAL_T>& map)
{
    boost::property_tree::ptree pt;
    for(const auto &kv: map) {
    pt.push_back(boost::property_tree::ptree::value_type(
        boost::lexical_cast<std::string>(kv.first),
        boost::property_tree::ptree(
        boost::lexical_cast<std::string>(kv.second))));
    }
    std::stringstream sstream;
    write_json(sstream, pt);
    std::string result = sstream.str();
    return result;
}

StoreApiStoreOrderOrderIdResource::StoreApiStoreOrderOrderIdResource(const std::string& context /* = "/v2" */)
{
	this->set_path(context + "/store/order/{orderId: .*}/");
	this->set_method_handler("DELETE",
		std::bind(&StoreApiStoreOrderOrderIdResource::handler_DELETE_internal, this,
			std::placeholders::_1));
	this->set_method_handler("GET",
		std::bind(&StoreApiStoreOrderOrderIdResource::handler_GET_internal, this,
			std::placeholders::_1));
}

StoreApiStoreOrderOrderIdResource::~StoreApiStoreOrderOrderIdResource()
{
}

std::pair<int, std::string> StoreApiStoreOrderOrderIdResource::handleStoreApiException(const StoreApiException& e)
{
    return std::make_pair<int, std::string>(e.getStatus(), e.what());
}

std::pair<int, std::string> StoreApiStoreOrderOrderIdResource::handleStdException(const std::exception& e)
{
    return std::make_pair<int, std::string>(500, e.what());
}

std::pair<int, std::string> StoreApiStoreOrderOrderIdResource::handleUnspecifiedException()
{
    return std::make_pair<int, std::string>(500, "Unknown exception occurred");
}

void StoreApiStoreOrderOrderIdResource::setResponseHeader(const std::shared_ptr<restbed::Session>& session, const std::string& header)
{
    session->set_header(header, "");
}

void StoreApiStoreOrderOrderIdResource::returnResponse(const std::shared_ptr<restbed::Session>& session, const int status, const std::string& result, const std::string& contentType)
{
    session->close(status, result, { {"Connection", "close"}, {"Content-Type", contentType} });
}

void StoreApiStoreOrderOrderIdResource::defaultSessionClose(const std::shared_ptr<restbed::Session>& session, const int status, const std::string& result)
{
    session->close(status, result, { {"Connection", "close"} });
}

void StoreApiStoreOrderOrderIdResource::handler_DELETE_internal(const std::shared_ptr<restbed::Session> session)
{
    const auto request = session->get_request();

    // Getting the path params
    const std::string orderId = getPathParam_orderId(request);



    int status_code = 500;
    std::string result = "";

    try {
         status_code =
             handler_DELETE(orderId);
    }
    catch(const StoreApiException& e) {
        std::tie(status_code, result) = handleStoreApiException(e);
    }
    catch(const std::exception& e) {
        std::tie(status_code, result) = handleStdException(e);
    }
    catch(...) {
        std::tie(status_code, result) = handleUnspecifiedException();
    }

    if (status_code == 400) {

        const constexpr auto contentType = "text/plain";
        returnResponse(session, 400, result.empty() ? "Invalid ID supplied" : result, contentType);
        return;
    }
    if (status_code == 404) {

        const constexpr auto contentType = "text/plain";
        returnResponse(session, 404, result.empty() ? "Order not found" : result, contentType);
        return;
    }
    defaultSessionClose(session, status_code, result);
}

// x-extension
void StoreApiStoreOrderOrderIdResource::handler_GET_internal(const std::shared_ptr<restbed::Session> session) {

    const auto request = session->get_request();

    // Getting the path params
    const int64_t orderId = getPathParam_orderId_x_extension(request);


    int status_code = 500;
    std::shared_ptr<Order> resultObject = std::make_shared<Order>();
    std::string result = "";

    try {
        std::tie(status_code, resultObject) =
            handler_GET(orderId);
    }
    catch(const StoreApiException& e) {
        std::tie(status_code, result) = handleStoreApiException(e);
    }
    catch(const std::exception& e) {
        std::tie(status_code, result) = handleStdException(e);
    }
    catch(...) {
        std::tie(status_code, result) = handleUnspecifiedException();
    }

    if (status_code == 200) {
        result = resultObject->toJsonString();

        const constexpr auto contentType = "application/json";
        returnResponse(session, 200, result.empty() ? "successful operation" : result, contentType);
        return;
    }
    if (status_code == 400) {

        const constexpr auto contentType = "text/plain";
        returnResponse(session, 400, result.empty() ? "Invalid ID supplied" : result, contentType);
        return;
    }
    if (status_code == 404) {

        const constexpr auto contentType = "text/plain";
        returnResponse(session, 404, result.empty() ? "Order not found" : result, contentType);
        return;
    }
    defaultSessionClose(session, status_code, result);
}

int StoreApiStoreOrderOrderIdResource::handler_DELETE(
        std::string const & orderId)
{
    throw StoreApiException(501, "Not implemented");
}

std::pair<int, std::shared_ptr<Order>> StoreApiStoreOrderOrderIdResource::handler_GET(
    int64_t const & orderId)
{
    throw StoreApiException(501, "Not implemented");
}

std::string StoreApiStoreOrderOrderIdResource::extractBodyContent(const std::shared_ptr<restbed::Session>& session) {
  const auto request = session->get_request();
  int content_length = request->get_header("Content-Length", 0);
  std::string bodyContent;
  session->fetch(content_length,
                 [&bodyContent](const std::shared_ptr<restbed::Session> session,
                                const restbed::Bytes &body) {
                   bodyContent = restbed::String::format(
                       "%.*s\n", (int)body.size(), body.data());
                 });
  return bodyContent;
}
StoreApiStoreInventoryResource::StoreApiStoreInventoryResource(const std::string& context /* = "/v2" */)
{
	this->set_path(context + "/store/inventory/");
	this->set_method_handler("GET",
		std::bind(&StoreApiStoreInventoryResource::handler_GET_internal, this,
			std::placeholders::_1));
}

StoreApiStoreInventoryResource::~StoreApiStoreInventoryResource()
{
}

std::pair<int, std::string> StoreApiStoreInventoryResource::handleStoreApiException(const StoreApiException& e)
{
    return std::make_pair<int, std::string>(e.getStatus(), e.what());
}

std::pair<int, std::string> StoreApiStoreInventoryResource::handleStdException(const std::exception& e)
{
    return std::make_pair<int, std::string>(500, e.what());
}

std::pair<int, std::string> StoreApiStoreInventoryResource::handleUnspecifiedException()
{
    return std::make_pair<int, std::string>(500, "Unknown exception occurred");
}

void StoreApiStoreInventoryResource::setResponseHeader(const std::shared_ptr<restbed::Session>& session, const std::string& header)
{
    session->set_header(header, "");
}

void StoreApiStoreInventoryResource::returnResponse(const std::shared_ptr<restbed::Session>& session, const int status, const std::string& result, const std::string& contentType)
{
    session->close(status, result, { {"Connection", "close"}, {"Content-Type", contentType} });
}

void StoreApiStoreInventoryResource::defaultSessionClose(const std::shared_ptr<restbed::Session>& session, const int status, const std::string& result)
{
    session->close(status, result, { {"Connection", "close"} });
}

void StoreApiStoreInventoryResource::handler_GET_internal(const std::shared_ptr<restbed::Session> session)
{
    const auto request = session->get_request();




    int status_code = 500;
    std::map<std::string, int32_t> resultObject = std::map<std::string, int32_t>();
    std::string result = "";

    try {
        std::tie(status_code, resultObject) =
             handler_GET();
    }
    catch(const StoreApiException& e) {
        std::tie(status_code, result) = handleStoreApiException(e);
    }
    catch(const std::exception& e) {
        std::tie(status_code, result) = handleStdException(e);
    }
    catch(...) {
        std::tie(status_code, result) = handleUnspecifiedException();
    }

    if (status_code == 200) {
        result = convertMapResponse(resultObject);

        const constexpr auto contentType = "application/json";
        returnResponse(session, 200, result.empty() ? "successful operation" : result, contentType);
        return;
    }
    defaultSessionClose(session, status_code, result);
}


std::pair<int, std::map<std::string, int32_t>> StoreApiStoreInventoryResource::handler_GET(
        )
{
    throw StoreApiException(501, "Not implemented");
}


std::string StoreApiStoreInventoryResource::extractBodyContent(const std::shared_ptr<restbed::Session>& session) {
  const auto request = session->get_request();
  int content_length = request->get_header("Content-Length", 0);
  std::string bodyContent;
  session->fetch(content_length,
                 [&bodyContent](const std::shared_ptr<restbed::Session> session,
                                const restbed::Bytes &body) {
                   bodyContent = restbed::String::format(
                       "%.*s\n", (int)body.size(), body.data());
                 });
  return bodyContent;
}
StoreApiStoreOrderResource::StoreApiStoreOrderResource(const std::string& context /* = "/v2" */)
{
	this->set_path(context + "/store/order/");
	this->set_method_handler("POST",
		std::bind(&StoreApiStoreOrderResource::handler_POST_internal, this,
			std::placeholders::_1));
}

StoreApiStoreOrderResource::~StoreApiStoreOrderResource()
{
}

std::pair<int, std::string> StoreApiStoreOrderResource::handleStoreApiException(const StoreApiException& e)
{
    return std::make_pair<int, std::string>(e.getStatus(), e.what());
}

std::pair<int, std::string> StoreApiStoreOrderResource::handleStdException(const std::exception& e)
{
    return std::make_pair<int, std::string>(500, e.what());
}

std::pair<int, std::string> StoreApiStoreOrderResource::handleUnspecifiedException()
{
    return std::make_pair<int, std::string>(500, "Unknown exception occurred");
}

void StoreApiStoreOrderResource::setResponseHeader(const std::shared_ptr<restbed::Session>& session, const std::string& header)
{
    session->set_header(header, "");
}

void StoreApiStoreOrderResource::returnResponse(const std::shared_ptr<restbed::Session>& session, const int status, const std::string& result, const std::string& contentType)
{
    session->close(status, result, { {"Connection", "close"}, {"Content-Type", contentType} });
}

void StoreApiStoreOrderResource::defaultSessionClose(const std::shared_ptr<restbed::Session>& session, const int status, const std::string& result)
{
    session->close(status, result, { {"Connection", "close"} });
}

void StoreApiStoreOrderResource::handler_POST_internal(const std::shared_ptr<restbed::Session> session)
{
    const auto request = session->get_request();
    std::string bodyContent = extractBodyContent(session);

    // Get body params or form params here from the body content string
    auto body = extractJsonModelBodyParam<Order>(bodyContent);




    int status_code = 500;
    std::shared_ptr<Order> resultObject = std::make_shared<Order>();
    std::string result = "";

    try {
        std::tie(status_code, resultObject) =
             handler_POST(body);
    }
    catch(const StoreApiException& e) {
        std::tie(status_code, result) = handleStoreApiException(e);
    }
    catch(const std::exception& e) {
        std::tie(status_code, result) = handleStdException(e);
    }
    catch(...) {
        std::tie(status_code, result) = handleUnspecifiedException();
    }

    if (status_code == 200) {
        result = resultObject->toJsonString();

        const constexpr auto contentType = "application/json";
        returnResponse(session, 200, result.empty() ? "successful operation" : result, contentType);
        return;
    }
    if (status_code == 400) {

        const constexpr auto contentType = "text/plain";
        returnResponse(session, 400, result.empty() ? "Invalid Order" : result, contentType);
        return;
    }
    defaultSessionClose(session, status_code, result);
}


std::pair<int, std::shared_ptr<Order>> StoreApiStoreOrderResource::handler_POST(
        std::shared_ptr<Order> const & body)
{
    throw StoreApiException(501, "Not implemented");
}


std::string StoreApiStoreOrderResource::extractBodyContent(const std::shared_ptr<restbed::Session>& session) {
  const auto request = session->get_request();
  int content_length = request->get_header("Content-Length", 0);
  std::string bodyContent;
  session->fetch(content_length,
                 [&bodyContent](const std::shared_ptr<restbed::Session> session,
                                const restbed::Bytes &body) {
                   bodyContent = restbed::String::format(
                       "%.*s\n", (int)body.size(), body.data());
                 });
  return bodyContent;
}

StoreApi::StoreApi(std::shared_ptr<restbed::Service> const& restbedService)
: m_service(restbedService)
{
}

StoreApi::~StoreApi() {}

void StoreApi::setStoreApiStoreOrderOrderIdResource(std::shared_ptr<StoreApiStoreOrderOrderIdResource> spStoreApiStoreOrderOrderIdResource) {
    m_spStoreApiStoreOrderOrderIdResource = spStoreApiStoreOrderOrderIdResource;
    m_service->publish(m_spStoreApiStoreOrderOrderIdResource);
}
void StoreApi::setStoreApiStoreInventoryResource(std::shared_ptr<StoreApiStoreInventoryResource> spStoreApiStoreInventoryResource) {
    m_spStoreApiStoreInventoryResource = spStoreApiStoreInventoryResource;
    m_service->publish(m_spStoreApiStoreInventoryResource);
}
void StoreApi::setStoreApiStoreOrderResource(std::shared_ptr<StoreApiStoreOrderResource> spStoreApiStoreOrderResource) {
    m_spStoreApiStoreOrderResource = spStoreApiStoreOrderResource;
    m_service->publish(m_spStoreApiStoreOrderResource);
}


void StoreApi::publishDefaultResources() {
    if (!m_spStoreApiStoreOrderOrderIdResource) {
        setStoreApiStoreOrderOrderIdResource(std::make_shared<StoreApiStoreOrderOrderIdResource>());
    }
    if (!m_spStoreApiStoreInventoryResource) {
        setStoreApiStoreInventoryResource(std::make_shared<StoreApiStoreInventoryResource>());
    }
    if (!m_spStoreApiStoreOrderResource) {
        setStoreApiStoreOrderResource(std::make_shared<StoreApiStoreOrderResource>());
    }
}

std::shared_ptr<restbed::Service> StoreApi::service() {
    return m_service;
}


}
}
}
}

