package com.behance.sdk.dto.parser;

import com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession;
import com.behance.sdk.dto.search.BehanceSDKFeaturedDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDetailsSectionDTO;
import com.behance.sdk.dto.search.BehanceSDKWebLinkDTO;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainQuery;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceUserDTOParser {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceUserDTOParser.class);

    public BehanceSDKUserDTO parse(JSONObject jSONObject) throws JSONException {
        String strOptString;
        if (jSONObject != null) {
            try {
                BehanceSDKUserDTO behanceSDKUserDTO = new BehanceSDKUserDTO();
                behanceSDKUserDTO.setId(jSONObject.optInt("id"));
                behanceSDKUserDTO.setFirstName(jSONObject.optString("first_name"));
                behanceSDKUserDTO.setLastName(jSONObject.optString("last_name"));
                behanceSDKUserDTO.setUserName(jSONObject.optString(AppsForYourDomainQuery.USERNAME));
                behanceSDKUserDTO.setProfileUrl(jSONObject.optString("url"));
                behanceSDKUserDTO.setDisplayName(jSONObject.optString("display_name"));
                behanceSDKUserDTO.setCity(jSONObject.optString(BehanceSDKUrlUtil.PARAM_KEY_CITY));
                behanceSDKUserDTO.setState(jSONObject.optString("state"));
                behanceSDKUserDTO.setCountry(jSONObject.optString(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY));
                behanceSDKUserDTO.setCompany(jSONObject.optString(BehanceSDKUrlUtil.PARAM_KEY_COMPANY));
                behanceSDKUserDTO.setOccupation(jSONObject.optString(BehanceSDKUrlUtil.PARAM_KEY_OCCUPATION));
                behanceSDKUserDTO.setCreatedOn(jSONObject.optLong("created_on"));
                behanceSDKUserDTO.setTwitterHandle(jSONObject.optString("twitter"));
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(AdobePhotoSession.LINKS);
                if (jSONArrayOptJSONArray != null) {
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject != null) {
                            BehanceSDKWebLinkDTO behanceSDKWebLinkDTO = new BehanceSDKWebLinkDTO();
                            behanceSDKWebLinkDTO.setTitle(jSONObjectOptJSONObject.optString("title"));
                            behanceSDKWebLinkDTO.setUrl(jSONObjectOptJSONObject.optString("url"));
                            behanceSDKUserDTO.addWebLink(behanceSDKWebLinkDTO);
                        }
                    }
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("sections");
                if (jSONObjectOptJSONObject2 != null) {
                    Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String strValueOf = String.valueOf(itKeys.next());
                        if (strValueOf != null && (strOptString = jSONObjectOptJSONObject2.optString(strValueOf)) != null) {
                            BehanceSDKUserDetailsSectionDTO behanceSDKUserDetailsSectionDTO = new BehanceSDKUserDetailsSectionDTO();
                            behanceSDKUserDetailsSectionDTO.setTitle(strValueOf);
                            behanceSDKUserDetailsSectionDTO.setDescription(strOptString);
                            behanceSDKUserDTO.addDetailsSection(behanceSDKUserDetailsSectionDTO);
                        }
                    }
                }
                if (jSONObject.optInt("is_following", 0) == 1) {
                    behanceSDKUserDTO.setCurrentUserFollowing(true);
                } else {
                    behanceSDKUserDTO.setCurrentUserFollowing(false);
                }
                JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("stats");
                if (jSONObjectOptJSONObject3 != null) {
                    behanceSDKUserDTO.setFollowingCount(jSONObjectOptJSONObject3.optInt("following"));
                    behanceSDKUserDTO.setFollowersCount(jSONObjectOptJSONObject3.optInt("followers"));
                    behanceSDKUserDTO.setAppreciationsCount(jSONObjectOptJSONObject3.optInt("appreciations"));
                    behanceSDKUserDTO.setCommentsCount(jSONObjectOptJSONObject3.optInt("comments"));
                    behanceSDKUserDTO.setViewsCount(jSONObjectOptJSONObject3.optInt("views"));
                }
                JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("images");
                if (jSONObjectOptJSONObject4 != null) {
                    behanceSDKUserDTO.addImage(50, jSONObjectOptJSONObject4.optString("50"));
                    behanceSDKUserDTO.addImage(115, jSONObjectOptJSONObject4.optString("115"));
                    behanceSDKUserDTO.addImage(138, jSONObjectOptJSONObject4.optString("138"));
                    behanceSDKUserDTO.addImage(276, jSONObjectOptJSONObject4.optString("276"));
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("fields");
                if (jSONArrayOptJSONArray2 != null) {
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                        behanceSDKUserDTO.addField(jSONArrayOptJSONArray2.optString(i2));
                    }
                }
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("features");
                if (jSONArrayOptJSONArray3 == null) {
                    return behanceSDKUserDTO;
                }
                for (int i3 = 0; i3 < jSONArrayOptJSONArray3.length(); i3++) {
                    JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray3.getJSONObject(i3).optJSONObject("site");
                    if (jSONObjectOptJSONObject5 != null) {
                        BehanceSDKFeaturedDTO behanceSDKFeaturedDTO = new BehanceSDKFeaturedDTO();
                        behanceSDKFeaturedDTO.setSiteDomain(jSONObjectOptJSONObject5.optString("domain"));
                        behanceSDKFeaturedDTO.setSiteIcon(jSONObjectOptJSONObject5.optString("icon"));
                        behanceSDKFeaturedDTO.setSiteId(jSONObjectOptJSONObject5.optString("id"));
                        behanceSDKFeaturedDTO.setSiteKey(jSONObjectOptJSONObject5.optString("key"));
                        behanceSDKFeaturedDTO.setSiteName(jSONObjectOptJSONObject5.optString("name"));
                        behanceSDKFeaturedDTO.setSiteUrl(jSONObjectOptJSONObject5.optString("url"));
                        JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject5.optJSONObject("ribbon");
                        if (jSONObjectOptJSONObject6 != null) {
                            behanceSDKFeaturedDTO.setSiteRibbonImage(jSONObjectOptJSONObject6.optString("image"));
                            behanceSDKFeaturedDTO.setSiteRibbonBiggerImage(jSONObjectOptJSONObject6.optString("image_2x"));
                        }
                        behanceSDKUserDTO.addFeaturedDetail(behanceSDKFeaturedDTO);
                    }
                }
                return behanceSDKUserDTO;
            } catch (JSONException e2) {
                logger.error(e2, "Problem parsing User JSON", new Object[0]);
                throw e2;
            }
        }
        return null;
    }
}
