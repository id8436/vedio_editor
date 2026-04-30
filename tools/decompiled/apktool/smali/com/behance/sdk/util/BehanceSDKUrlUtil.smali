.class public Lcom/behance/sdk/util/BehanceSDKUrlUtil;
.super Ljava/lang/Object;
.source "BehanceSDKUrlUtil.java"


# static fields
.field public static final ADD_PROJECT_MODULE_URL:Ljava/lang/String; = "{server_root_url}/v2/project/editor/{project_id}/modules?{key_client_id_param}={clientId}"

.field public static final APPRECIATE_PROJECT_API_URL:Ljava/lang/String; = "{server_root_url}/v2/projects/{project_id}/appreciate?{key_client_id_param}={clientId}"

.field public static final DELETE_PROJECT_COMMENT_API_URL:Ljava/lang/String; = "{server_root_url}/v2/projects/{project_id}/comments/{comment_id}?{key_client_id_param}={clientId}"

.field public static final EDIT_USER_PROFILE_API_URL:Ljava/lang/String; = "{server_root_url}/v2/profile/editor?{key_client_id_param}={clientId}"

.field public static final EDIT_USER_PROFILE_AVATAR_API_URL:Ljava/lang/String; = "{server_root_url}/v2/profile/avatar?{key_client_id_param}={clientId}"

.field public static final FOLLOW_USER_API_URL:Ljava/lang/String; = "{server_root_url}/v2/users/{user_id}/follow?{key_client_id_param}={clientId}"

.field public static final GET_BEHANCE_USER_PROFILE_WITH_IMS_TOKEN_API_URL:Ljava/lang/String; = "{server_root_url}/v2/users/{user_id}?api_key={clientId}&user_token={usertoken}"

.field public static final GET_CITIES_API_URL:Ljava/lang/String; = "{server_root_url}/v2/locations/cities?{key_client_id_param}={clientId}"

.field public static final GET_COUNTRIES_API_URL:Ljava/lang/String; = "{server_root_url}/v2/locations/countries?{key_client_id_param}={clientId}"

.field public static final GET_CREATIVE_FIELDS_API_URL:Ljava/lang/String; = "{server_root_url}/v2/fields?{key_client_id_param}={clientId}"

.field public static final GET_CURATED_GALLERIES_PROJECTS_API_URL:Ljava/lang/String; = "{server_root_url}/v2/projects?{key_client_id_param}={clientId}"

.field public static final GET_MESSAGE_ACTIVE_RECIPIENTS_SUGGESTIONS_API_URL:Ljava/lang/String; = "{server_root_url}/v2/inbox/senders/exact?{key_client_id_param}={clientId}"

.field public static final GET_MESSAGE_RECIPIENTS_SUGGESTIONS_FROM_CONTACTS_API_URL:Ljava/lang/String; = "{server_root_url}/v2/inbox/senders/contacts?{key_client_id_param}={clientId}"

.field public static final GET_PROJECTS_API_URL:Ljava/lang/String; = "{server_root_url}/v2/projects?{key_client_id_param}={clientId}"

.field public static final GET_PROJECT_API_URL:Ljava/lang/String; = "{server_root_url}/v2/projects/{project_id}/html?{key_client_id_param}={clientId}"

.field public static final GET_PROJECT_COMMENTS_API_URL:Ljava/lang/String; = "{server_root_url}/v2/projects/{project_id}/comments?{key_client_id_param}={clientId}"

.field public static final GET_STATES_API_URL:Ljava/lang/String; = "{server_root_url}/v2/locations/regions?country_code={countryId}&{key_client_id_param}={clientId}"

.field public static final GET_TEAMS_API_URL:Ljava/lang/String; = "{server_root_url}/v2/teams?{key_client_id_param}={clientId}"

.field public static final GET_TEXT_EDITOR_CONFIG_API_URL:Ljava/lang/String; = "{server_root_url}/v2/assets/standalone?{key_client_id_param}={clientId}"

.field public static final GET_USER_BASIC_DETAILS_API_URL:Ljava/lang/String; = "{server_root_url}/v2/users/{user_id}?{key_client_id_param}={clientId}"

.field public static final GET_USER_PROJECTS_API_URL:Ljava/lang/String; = "{server_root_url}/v2/users/{user_id}/projects?{key_client_id_param}={clientId}"

.field public static final GET_USER_SETTINGS_ON_SERVER_API_URL:Ljava/lang/String; = "{server_root_url}/v2/settings/browsing?{key_client_id_param}={clientId}"

.field public static final KEY_CLIENT_ID:Ljava/lang/String; = "clientId"

.field public static final KEY_CLIENT_ID_PARAM:Ljava/lang/String; = "key_client_id_param"

.field public static final KEY_COMMENT_ID:Ljava/lang/String; = "comment_id"

.field public static final KEY_COUNTRY_ID:Ljava/lang/String; = "countryId"

.field public static final KEY_PROJECT_ID:Ljava/lang/String; = "project_id"

.field public static final KEY_SERVER_ROOT_URL:Ljava/lang/String; = "server_root_url"

.field public static final KEY_SITE_ID:Ljava/lang/String; = "site_id"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final KEY_USER_TOKEN:Ljava/lang/String; = "usertoken"

.field public static final KEY_X_IMS_CLIENT_ID:Ljava/lang/String; = "X-IMS-ClientId"

.field public static final PARAM_FREE_TEXT_QUERY:Ljava/lang/String; = "q"

.field public static final PARAM_KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final PARAM_KEY_CITY:Ljava/lang/String; = "city"

.field public static final PARAM_KEY_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final PARAM_KEY_COMPANY:Ljava/lang/String; = "company"

.field public static final PARAM_KEY_COUNTRY:Ljava/lang/String; = "country"

.field public static final PARAM_KEY_FIELD:Ljava/lang/String; = "field"

.field public static final PARAM_KEY_FIRST_NAME:Ljava/lang/String; = "first_name"

.field public static final PARAM_KEY_LAST_NAME:Ljava/lang/String; = "last_name"

.field public static final PARAM_KEY_LOCATION_FILTER_CITY:Ljava/lang/String; = "query"

.field public static final PARAM_KEY_LOCATION_FILTER_COUNTRY:Ljava/lang/String; = "country_code"

.field public static final PARAM_KEY_LOCATION_FILTER_STATE:Ljava/lang/String; = "region"

.field public static final PARAM_KEY_OCCUPATION:Ljava/lang/String; = "occupation"

.field public static final PARAM_KEY_PAGE_NUMBER:Ljava/lang/String; = "page"

.field public static final PARAM_KEY_PAGE_SIZE:Ljava/lang/String; = "per_page"

.field public static final PARAM_KEY_SEARCH_FREE_TEXT_QUERY:Ljava/lang/String; = "search"

.field public static final PARAM_KEY_SORT:Ljava/lang/String; = "sort"

.field public static final PARAM_KEY_STATE:Ljava/lang/String; = "state"

.field public static final PARAM_KEY_TAG_CATEGORY:Ljava/lang/String; = "category"

.field public static final PARAM_KEY_TIME:Ljava/lang/String; = "time"

.field public static final PARAM_KEY_USER_TOKEN:Ljava/lang/String; = "user_token"

.field public static final PARAM_KEY_WEBSITE:Ljava/lang/String; = "website"

.field public static final PARAM_NETWORK_FIELD:Ljava/lang/String; = "network"

.field public static final PARAM_SERVED_FIELD:Ljava/lang/String; = "served"

.field public static final POST_PROJECT_COMMENTS_API_URL:Ljava/lang/String; = "{server_root_url}/v2/projects/{project_id}/comments?{key_client_id_param}={clientId}"

.field public static final PROJECT_CREATE_URL:Ljava/lang/String; = "{server_root_url}/v2/project/editor?{key_client_id_param}={clientId}"

.field public static final PROJECT_DELETE_URL:Ljava/lang/String; = "{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}"

.field public static final PUBLISH_PROJECT_URL:Ljava/lang/String; = "{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}"

.field public static final SEARCH_TAGS_API_URL:Ljava/lang/String; = "{server_root_url}/v2/tags?{key_client_id_param}={clientId}"

.field public static final TRANSFROM_EMBED:Ljava/lang/String; = "https://www.behance.net/v2/project/embeds/transforms?{key_client_id_param}={clientId}"

.field public static final UNPUBLISH_PROJECT_API_URL:Ljava/lang/String; = "{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}"

.field public static final VIEW_PROJECT_API_URL:Ljava/lang/String; = "{server_root_url}/v2/projects/{project_id}/view?{key_client_id_param}={clientId}"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/behance/sdk/util/BehanceSDKUrlUtil;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    :try_start_0
    const-string/jumbo v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 199
    :goto_0
    return-object p0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    sget-object v1, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->logger:Lcom/behance/sdk/logger/ILogger;

    invoke-interface {v1, v0}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getAdobeApiServerRootUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentStageUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    if-ne v0, v1, :cond_0

    .line 205
    const-string/jumbo v0, "https://cc-api-behance-stage.adobe.io"

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://cc-api-behance.adobe.io"

    goto :goto_0
.end method

.method public static getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 174
    const-string/jumbo v0, "{server_root_url}"

    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getAdobeApiServerRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string/jumbo v1, "{key_client_id_param}"

    const-string/jumbo v2, "api_key"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz p1, :cond_0

    .line 178
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 181
    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    return-object v0
.end method
