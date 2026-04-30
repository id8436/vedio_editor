.class public abstract Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;
.super Ljava/lang/Object;
.source "AdobeAnalyticsETSEvent.java"


# static fields
.field protected static final ADOBE_CSDK_PROJECT_NAME:Ljava/lang/String; = "csdkandroid-service"

.field public static final ADOBE_ETS_ENVIRONMENT_COMPONENT_360_WORKFLOW:Ljava/lang/String; = "360_workflow"

.field public static final ADOBE_ETS_ENVIRONMENT_COMPONENT_APP_LIBRARY_BROWSER:Ljava/lang/String; = "app_library_browser"

.field public static final ADOBE_ETS_ENVIRONMENT_COMPONENT_ASSET_BROWSER:Ljava/lang/String; = "asset_browser"

.field public static final ADOBE_ETS_ENVIRONMENT_COMPONENT_ASSET_HEADLESS:Ljava/lang/String; = "asset_headless"

.field public static final ADOBE_ETS_ENVIRONMENT_COMPONENT_AUTH:Ljava/lang/String; = "auth"

.field public static final ADOBE_ETS_ENVIRONMENT_COMPONENT_COLOR:Ljava/lang/String; = "color"

.field public static final ADOBE_ETS_ENVIRONMENT_COMPONENT_MARKET_ASSET_BROWSER:Ljava/lang/String; = "market_asset_browser"

.field public static final ADOBE_ETS_ENVIRONMENT_COMPONENT_SEND_TO_DESKTOP:Ljava/lang/String; = "send_to_desktop"

.field public static final ADOBE_ETS_ENVIRONMENT_COMPONENT_SHARE_MENU:Ljava/lang/String; = "share_menu"

.field public static final ADOBE_ETS_ENVIRONMENT_COMPONENT_STOCK_BROWSER:Ljava/lang/String; = "stock_browser"

.field public static final ADOBE_ETS_ENVIRONMENT_COMPONENT_STOCK_CONTRIBUTOR:Ljava/lang/String; = "stock_contributor"

.field public static final ADOBE_ETS_ENVIRONMENT_COMPONENT_TYPEKIT:Ljava/lang/String; = "typekit"

.field public static final ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_CC_FILE:Ljava/lang/String; = "cc_file"

.field public static final ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY:Ljava/lang/String; = "library"

.field public static final ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_ELEMENT:Ljava/lang/String; = "libray_element"

.field public static final ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_REPRESENTATON:Ljava/lang/String; = "libray_element_representation"

.field public static final ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LOCAL_FILE:Ljava/lang/String; = "local_file"

.field public static final ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_MOBILE_CREATION:Ljava/lang/String; = "mobile_creation"

.field public static final ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_PHOTO:Ljava/lang/String; = "photo"

.field public static final ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_PHOTO_ALBUM:Ljava/lang/String; = "lr_album"

.field public static final ADOBE_ETS_EVENT_ACCESS_TOKEN_EXPIRED:Ljava/lang/String; = "expire_access_token"

.field public static final ADOBE_ETS_EVENT_ACCESS_TOKEN_REFRESHED:Ljava/lang/String; = "refresh_access_token"

.field public static final ADOBE_ETS_EVENT_CANCEL_REASON_STALE:Ljava/lang/String; = "stale"

.field public static final ADOBE_ETS_EVENT_CANCEL_REASON_USER:Ljava/lang/String; = "user"

.field public static final ADOBE_ETS_EVENT_DATA:Ljava/lang/String; = "data"

.field public static final ADOBE_ETS_EVENT_DELETE_SHARED_DEVICE_TOKEN:Ljava/lang/String; = "delete_shared_device_token"

.field public static final ADOBE_ETS_EVENT_DEVICE_TOKEN_DELETED:Ljava/lang/String; = "delete_device_token"

.field public static final ADOBE_ETS_EVENT_ENVIRONMENT_TYPE:Ljava/lang/String; = "environment"

.field public static final ADOBE_ETS_EVENT_HEADERS:Ljava/lang/String; = "requestHeaders"

.field public static final ADOBE_ETS_EVENT_HTTP_NETWORK_NONE:Ljava/lang/String; = "none"

.field public static final ADOBE_ETS_EVENT_HTTP_NETWORK_WIFI:Ljava/lang/String; = "wifi"

.field public static final ADOBE_ETS_EVENT_HTTP_NETWORK_WWAN:Ljava/lang/String; = "wwan"

.field public static final ADOBE_ETS_EVENT_INGEST_TYPE:Ljava/lang/String; = "ingesttype"

.field public static final ADOBE_ETS_EVENT_PROJECT:Ljava/lang/String; = "project"

.field public static final ADOBE_ETS_EVENT_PROPERTY_BYTE_COUNT_SENT:Ljava/lang/String; = "analytics.byte_count.sent"

.field public static final ADOBE_ETS_EVENT_PROPERTY_BYTE_COUNT_UNCOMPRESSED:Ljava/lang/String; = "analytics.byte_count.uncompressed"

.field public static final ADOBE_ETS_EVENT_PROPERTY_CANCEL_REASON:Ljava/lang/String; = "op.cancelReason"

.field public static final ADOBE_ETS_EVENT_PROPERTY_DEACTIVATION_COUNTER:Ljava/lang/String; = "op.event.deactivation_counter"

.field public static final ADOBE_ETS_EVENT_PROPERTY_EXPECTED_ERROR:Ljava/lang/String; = "op.expectedError"

.field public static final ADOBE_ETS_EVENT_PROPERTY_HTTP_CLOUD:Ljava/lang/String; = "http.cloud"

.field public static final ADOBE_ETS_EVENT_PROPERTY_HTTP_CONTENT_LENGTH:Ljava/lang/String; = "http.content.length"

.field public static final ADOBE_ETS_EVENT_PROPERTY_HTTP_CONTENT_MD_5:Ljava/lang/String; = "http.content.md5"

.field public static final ADOBE_ETS_EVENT_PROPERTY_HTTP_CONTENT_TYPE:Ljava/lang/String; = "http.content.type"

.field public static final ADOBE_ETS_EVENT_PROPERTY_HTTP_DURATION_QUEUE:Ljava/lang/String; = "http.duration.queue"

.field public static final ADOBE_ETS_EVENT_PROPERTY_HTTP_DURATION_REQUEST:Ljava/lang/String; = "http.duration.request"

.field public static final ADOBE_ETS_EVENT_PROPERTY_HTTP_NETWORK:Ljava/lang/String; = "http.network"

.field public static final ADOBE_ETS_EVENT_PROPERTY_HTTP_PRIORITY:Ljava/lang/String; = "http.priority"

.field public static final ADOBE_ETS_EVENT_PROPERTY_HTTP_REQUEST_ID:Ljava/lang/String; = "http.request_id"

.field public static final ADOBE_ETS_EVENT_PROPERTY_HTTP_RETRY_OF:Ljava/lang/String; = "http.retry_of"

.field public static final ADOBE_ETS_EVENT_PROPERTY_HTTP_STATUS:Ljava/lang/String; = "http.status"

.field public static final ADOBE_ETS_EVENT_PROPERTY_HTTP_VERB:Ljava/lang/String; = "http.verb"

.field public static final ADOBE_ETS_EVENT_PROPERTY_NUM_EVENTS:Ljava/lang/String; = "analytics.num_events.completed"

.field public static final ADOBE_ETS_EVENT_PROPERTY_NUM_EVENTS_DISCARDED:Ljava/lang/String; = "analytics.num_events.discarded"

.field public static final ADOBE_ETS_EVENT_PROPERTY_NUM_EVENTS_PENDING:Ljava/lang/String; = "analytics.num_events.pending"

.field public static final ADOBE_ETS_EVENT_PROPERTY_NUM_EVENTS_REJECTED:Ljava/lang/String; = "analytics.num_events.rejected"

.field public static final ADOBE_ETS_EVENT_PROPERTY_NUM_EVENTS_REPORTED:Ljava/lang/String; = "analytics.num_events.reported"

.field public static final ADOBE_ETS_EVENT_PROPERTY_OFFLINE_COUNTER:Ljava/lang/String; = "op.event.offline_counter"

.field public static final ADOBE_ETS_EVENT_REFRESH_TOKEN_DELETED:Ljava/lang/String; = "delete_refresh_token"

.field public static final ADOBE_ETS_EVENT_TIME:Ljava/lang/String; = "time"

.field public static final ADOBE_ETS_EVENT_TOKEN_DELETED:Ljava/lang/String; = "token_deleted"

.field public static final ADOBE_ETS_EVENT_TOKEN_TYPE:Ljava/lang/String; = "app.token"

.field public static final ADOBE_ETS_EVENT_TYPE_ANALYTICS_OVERFLOW:Ljava/lang/String; = "analytics.overflow"

.field public static final ADOBE_ETS_EVENT_TYPE_ANALYTICS_SUBMISSION:Ljava/lang/String; = "analytics.submit"

.field public static final ADOBE_ETS_FILTER_ALL:Ljava/lang/String; = "all"

.field public static final ADOBE_ETS_FILTER_ILLUSTRATOR:Ljava/lang/String; = "illustration"

.field public static final ADOBE_ETS_FILTER_PHOTOS:Ljava/lang/String; = "photos"

.field public static final ADOBE_ETS_FILTER_VECTORS:Ljava/lang/String; = "vectors"

.field public static final ADOBE_ETS_FILTER_VIDEO:Ljava/lang/String; = "video"

.field public static final ADOBE_ETS_ORIENTATION_ALL:Ljava/lang/String; = "all"

.field public static final ADOBE_ETS_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ADOBE_ETS_ORIENTATION_PANORAMIC:Ljava/lang/String; = "panoramic"

.field public static final ADOBE_ETS_ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final ADOBE_ETS_ORIENTATION_SQUARE:Ljava/lang/String; = "square"

.field public static final ADOBE_ETS_SORT_ORDER_CREATED:Ljava/lang/String; = "creation_date"

.field public static final ADOBE_ETS_SORT_ORDER_DOWNLOADED:Ljava/lang/String; = "downloaded"

.field public static final ADOBE_ETS_SORT_ORDER_FEATURED:Ljava/lang/String; = "featured"

.field public static final ADOBE_ETS_SORT_ORDER_MOST_RECENT:Ljava/lang/String; = "most_recent"

.field public static final ADOBE_ETS_SORT_ORDER_NUMBER_VIEWS:Ljava/lang/String; = "number_views"

.field public static final ADOBE_ETS_SORT_ORDER_RELEVANCE:Ljava/lang/String; = "relevence"

.field public static final ADOBE_ETS_SORT_ORDER_UNDISCOVERED:Ljava/lang/String; = "undiscovered"

.field public static final ADOBE_ETS_VALUE_CATEGORY:Ljava/lang/String; = "CSDK"

.field public static final ADOBE_ETS_VALUE_CREATIVE_SDK:Ljava/lang/String; = "AdobeCreativeSDK"

.field public static final ADOBE_ETS_VALUE_ERROR_CODE_CANCEL:Ljava/lang/String; = "cancelled"

.field public static final ADOBE_ETS_VALUE_ERROR_CODE_FAIL:Ljava/lang/String; = "failure"

.field public static final ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS:Ljava/lang/String; = "success"

.field public static final ADOBE_ETS_VALUE_PLATFORM_ANDROID:Ljava/lang/String; = "Android"

.field public static final ADOBE_ETS_VALUE_UNKNOWN:Ljava/lang/String; = ""

.field public static final ADOBE_ETS_VALUE_VIEW_TYPE_GRID:Ljava/lang/String; = "grid"

.field public static final ADOBE_ETS_VALUE_VIEW_TYPE_LIST:Ljava/lang/String; = "list"

.field private static _coreParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static fallbackUserID:Ljava/lang/String;


# instance fields
.field protected data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->_coreParams:Ljava/util/Map;

    .line 157
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->fallbackUserID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    .line 163
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyStart:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/Util;->getDateTimeForETS()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->trackOriginatingSourceDetails()V

    .line 166
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->trackEventGlobalDetails()V

    .line 167
    return-void
.end method

.method public static setCoreParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->_coreParams:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    return-void
.end method

.method public static setCoreParams(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 326
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->_coreParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 328
    :cond_0
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->fallbackUserID:Ljava/lang/String;

    .line 171
    return-void
.end method

.method private trackEventGlobalDetails()V
    .locals 4

    .prologue
    .line 250
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    .line 251
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    .line 253
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyUser:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 254
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    if-eqz v0, :cond_8

    .line 256
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyUser:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyGuid:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    if-eqz v1, :cond_4

    .line 266
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyDevice:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getIDPFlow()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyIMSFlow:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_2
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getServiceLevel()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 278
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$User;->AdobeEventPropertyUserServiceLevel:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$User;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$User;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_3
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getServiceCodes()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 283
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$User;->AdobeEventPropertyUserServiceCode:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$User;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$User;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyLanguage:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCategory:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CSDK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyFrameworkName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AdobeCreativeSDK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyFrameworkVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNetworkUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_5

    .line 300
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyUserAgent:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_5
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/Util;->getIpAddressAnalytic()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 305
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyIPAddress:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_6
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->getNetworkStatus()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Network;->AdobeEventPropertyNetworkStatus:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Network;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Network;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->_coreParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 313
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->_coreParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 314
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 254
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 257
    :cond_8
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->fallbackUserID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->fallbackUserID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyUser:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->fallbackUserID:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyError:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Language Locale Error"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyErrorDescription:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/MissingResourceException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 318
    :cond_9
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    const-string/jumbo v1, "project"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 319
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    const-string/jumbo v1, "project"

    const-string/jumbo v2, "csdkandroid-service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_a
    return-void
.end method

.method private trackEventGlobalNetworkDetails()V
    .locals 3

    .prologue
    .line 240
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyOffline:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyOffline:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private trackOriginatingSourceDetails()V
    .locals 7

    .prologue
    .line 204
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 205
    const-string/jumbo v1, ""

    .line 206
    const-string/jumbo v0, ""

    .line 207
    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 210
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v2

    .line 221
    :goto_1
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->AdobeEventPropertyClientId:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->AdobeEventPropertyAppName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->AdobeEventPropertyAppVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->AdobeEventPropertyPlatform:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->AdobeEventPropertyDeviceType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/Util;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->AdobeEventPropertyOSVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->getValue()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    if-eqz v3, :cond_2

    .line 230
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->AdobeEventPropertyAppStoreId:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "org.chromium.arc.device_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->AdobeEventPropertySubPlatform:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Source;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ChromeBook"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_2
    return-void

    .line 213
    :catch_0
    move-exception v2

    .line 214
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 220
    :cond_3
    const-string/jumbo v2, ""

    goto/16 :goto_1

    .line 227
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_2
.end method


# virtual methods
.method public addEventParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public endAndTrackEvent()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyEnd:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/Util;->getDateTimeForETS()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->trackEventGlobalNetworkDetails()V

    .line 178
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->addNewEvent(Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;)V

    .line 180
    return-void
.end method

.method public endAndTrackEventWithErrorCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->trackErrorCode(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->endAndTrackEvent()V

    .line 189
    return-void
.end method

.method public trackErrorCode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyError:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public trackService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyServiceName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyServiceAPIVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyServiceAPIName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method
