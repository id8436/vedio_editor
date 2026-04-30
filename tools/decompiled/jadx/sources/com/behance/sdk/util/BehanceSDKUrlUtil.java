package com.behance.sdk.util;

import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.google.gdata.data.analytics.Engagement;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKUrlUtil {
    public static final String ADD_PROJECT_MODULE_URL = "{server_root_url}/v2/project/editor/{project_id}/modules?{key_client_id_param}={clientId}";
    public static final String APPRECIATE_PROJECT_API_URL = "{server_root_url}/v2/projects/{project_id}/appreciate?{key_client_id_param}={clientId}";
    public static final String DELETE_PROJECT_COMMENT_API_URL = "{server_root_url}/v2/projects/{project_id}/comments/{comment_id}?{key_client_id_param}={clientId}";
    public static final String EDIT_USER_PROFILE_API_URL = "{server_root_url}/v2/profile/editor?{key_client_id_param}={clientId}";
    public static final String EDIT_USER_PROFILE_AVATAR_API_URL = "{server_root_url}/v2/profile/avatar?{key_client_id_param}={clientId}";
    public static final String FOLLOW_USER_API_URL = "{server_root_url}/v2/users/{user_id}/follow?{key_client_id_param}={clientId}";
    public static final String GET_BEHANCE_USER_PROFILE_WITH_IMS_TOKEN_API_URL = "{server_root_url}/v2/users/{user_id}?api_key={clientId}&user_token={usertoken}";
    public static final String GET_CITIES_API_URL = "{server_root_url}/v2/locations/cities?{key_client_id_param}={clientId}";
    public static final String GET_COUNTRIES_API_URL = "{server_root_url}/v2/locations/countries?{key_client_id_param}={clientId}";
    public static final String GET_CREATIVE_FIELDS_API_URL = "{server_root_url}/v2/fields?{key_client_id_param}={clientId}";
    public static final String GET_CURATED_GALLERIES_PROJECTS_API_URL = "{server_root_url}/v2/projects?{key_client_id_param}={clientId}";
    public static final String GET_MESSAGE_ACTIVE_RECIPIENTS_SUGGESTIONS_API_URL = "{server_root_url}/v2/inbox/senders/exact?{key_client_id_param}={clientId}";
    public static final String GET_MESSAGE_RECIPIENTS_SUGGESTIONS_FROM_CONTACTS_API_URL = "{server_root_url}/v2/inbox/senders/contacts?{key_client_id_param}={clientId}";
    public static final String GET_PROJECTS_API_URL = "{server_root_url}/v2/projects?{key_client_id_param}={clientId}";
    public static final String GET_PROJECT_API_URL = "{server_root_url}/v2/projects/{project_id}/html?{key_client_id_param}={clientId}";
    public static final String GET_PROJECT_COMMENTS_API_URL = "{server_root_url}/v2/projects/{project_id}/comments?{key_client_id_param}={clientId}";
    public static final String GET_STATES_API_URL = "{server_root_url}/v2/locations/regions?country_code={countryId}&{key_client_id_param}={clientId}";
    public static final String GET_TEAMS_API_URL = "{server_root_url}/v2/teams?{key_client_id_param}={clientId}";
    public static final String GET_TEXT_EDITOR_CONFIG_API_URL = "{server_root_url}/v2/assets/standalone?{key_client_id_param}={clientId}";
    public static final String GET_USER_BASIC_DETAILS_API_URL = "{server_root_url}/v2/users/{user_id}?{key_client_id_param}={clientId}";
    public static final String GET_USER_PROJECTS_API_URL = "{server_root_url}/v2/users/{user_id}/projects?{key_client_id_param}={clientId}";
    public static final String GET_USER_SETTINGS_ON_SERVER_API_URL = "{server_root_url}/v2/settings/browsing?{key_client_id_param}={clientId}";
    public static final String KEY_CLIENT_ID = "clientId";
    public static final String KEY_CLIENT_ID_PARAM = "key_client_id_param";
    public static final String KEY_COMMENT_ID = "comment_id";
    public static final String KEY_COUNTRY_ID = "countryId";
    public static final String KEY_PROJECT_ID = "project_id";
    public static final String KEY_SERVER_ROOT_URL = "server_root_url";
    public static final String KEY_SITE_ID = "site_id";
    public static final String KEY_USER_ID = "user_id";
    public static final String KEY_USER_TOKEN = "usertoken";
    public static final String KEY_X_IMS_CLIENT_ID = "X-IMS-ClientId";
    public static final String PARAM_FREE_TEXT_QUERY = "q";
    public static final String PARAM_KEY_ACCESS_TOKEN = "access_token";
    public static final String PARAM_KEY_CITY = "city";
    public static final String PARAM_KEY_CLIENT_ID = "client_id";
    public static final String PARAM_KEY_COMPANY = "company";
    public static final String PARAM_KEY_COUNTRY = "country";
    public static final String PARAM_KEY_FIELD = "field";
    public static final String PARAM_KEY_FIRST_NAME = "first_name";
    public static final String PARAM_KEY_LAST_NAME = "last_name";
    public static final String PARAM_KEY_LOCATION_FILTER_CITY = "query";
    public static final String PARAM_KEY_LOCATION_FILTER_COUNTRY = "country_code";
    public static final String PARAM_KEY_LOCATION_FILTER_STATE = "region";
    public static final String PARAM_KEY_OCCUPATION = "occupation";
    public static final String PARAM_KEY_PAGE_NUMBER = "page";
    public static final String PARAM_KEY_PAGE_SIZE = "per_page";
    public static final String PARAM_KEY_SEARCH_FREE_TEXT_QUERY = "search";
    public static final String PARAM_KEY_SORT = "sort";
    public static final String PARAM_KEY_STATE = "state";
    public static final String PARAM_KEY_TAG_CATEGORY = "category";
    public static final String PARAM_KEY_TIME = "time";
    public static final String PARAM_KEY_USER_TOKEN = "user_token";
    public static final String PARAM_KEY_WEBSITE = "website";
    public static final String PARAM_NETWORK_FIELD = "network";
    public static final String PARAM_SERVED_FIELD = "served";
    public static final String POST_PROJECT_COMMENTS_API_URL = "{server_root_url}/v2/projects/{project_id}/comments?{key_client_id_param}={clientId}";
    public static final String PROJECT_CREATE_URL = "{server_root_url}/v2/project/editor?{key_client_id_param}={clientId}";
    public static final String PROJECT_DELETE_URL = "{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}";
    public static final String PUBLISH_PROJECT_URL = "{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}";
    public static final String SEARCH_TAGS_API_URL = "{server_root_url}/v2/tags?{key_client_id_param}={clientId}";
    public static final String TRANSFROM_EMBED = "https://www.behance.net/v2/project/embeds/transforms?{key_client_id_param}={clientId}";
    public static final String UNPUBLISH_PROJECT_API_URL = "{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}";
    public static final String VIEW_PROJECT_API_URL = "{server_root_url}/v2/projects/{project_id}/view?{key_client_id_param}={clientId}";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKUrlUtil.class);

    public static String getUrlFromTemplate(String str, Map<String, String> map) {
        String str2;
        String strReplace = str.replace("{server_root_url}", getAdobeApiServerRootUrl()).replace("{key_client_id_param}", BehanceSDKConstants.ADOBE_API_CLIENT_ID_PARAM);
        if (map != null) {
            Iterator<String> it = map.keySet().iterator();
            while (true) {
                str2 = strReplace;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                strReplace = str2.replace("{" + next + "}", map.get(next));
            }
        } else {
            str2 = strReplace;
        }
        return str2 + "&locale=" + Locale.getDefault().toString();
    }

    public static String appendQueryStringParam(String str, String str2, Object obj) {
        try {
            if (str.contains("?")) {
                str = str + "&" + str2 + Engagement.Comparison.EQ + URLEncoder.encode(String.valueOf(obj), "UTF-8");
            } else {
                str = str + "?" + str2 + Engagement.Comparison.EQ + URLEncoder.encode(String.valueOf(obj), "UTF-8");
            }
        } catch (UnsupportedEncodingException e2) {
            logger.error(e2);
        }
        return str;
    }

    private static String getAdobeApiServerRootUrl() {
        return BehanceSDK.getInstance().getEnvironment() == AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentStageUS ? BehanceSDKConstants.ADOBE_API_STAGE_SERVER_ROOT_URL : BehanceSDKConstants.ADOBE_API_SERVER_ROOT_URL;
    }
}
