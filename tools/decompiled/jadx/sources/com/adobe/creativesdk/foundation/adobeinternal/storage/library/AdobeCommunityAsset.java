package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import android.util.Log;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityPublicationRecordConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.Size;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.creativesdk.foundation.storage.AdobeCommunityAssetImageDimension;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.data.ILink;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommunityAsset {
    static Set<AdobeCommunityAssetFilterOptions> mFilterOptionsSet;
    private String _assetID;
    private AdobeCommunityCategory _category;
    private long _commentsCount;
    private AdobeCommunity _community;
    private AdobeCommunityUser _creator;
    private Date _dateCreated;
    private Date _dateFeatured;
    private Date _datePublished;
    private long _detailsCount;
    private Size _dimensions;
    private String _fileExtension;
    private long _fileSize;
    private String _href;
    private String _label;
    private boolean _licensed;
    private long _likesCount;
    private String _name;
    private String _nativeMimeType;
    private String _renditionHref;
    private List<String> _supportedMimeTypes;
    private List<String> _tags;
    static DateFormat sDefaultDateFormatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.US);
    static DateFormat sAlternativeDateFormatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
    static TimeZone sGMTTimeZone = new SimpleTimeZone(0, "GMT");

    public String getAssetID() {
        return this._assetID;
    }

    public AdobeCommunity getCommunity() {
        return this._community;
    }

    public String getName() {
        return this._name;
    }

    public void setName(String str) {
        this._name = str;
    }

    public void updateName(final String str, final IAdobeGenericCompletionCallback<Boolean> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCommunityErrorCode> iAdobeGenericErrorCallback) {
        if (this._href != null && !this._href.isEmpty() && str != null && !str.isEmpty()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("title", str);
                ((AdobeCommunitySession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeCommunity)).updateMetadataForAsset(this._href, jSONObject, new IAdobeGenericCompletionCallback<Boolean>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunityAsset.1
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(Boolean bool) {
                        if (bool.booleanValue()) {
                            AdobeCommunityAsset.this._name = str;
                        }
                        if (iAdobeGenericCompletionCallback != null && bool.booleanValue()) {
                            iAdobeGenericCompletionCallback.onCompletion(bool);
                        } else if (iAdobeGenericErrorCallback != null && !bool.booleanValue()) {
                            iAdobeGenericErrorCallback.onError(AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse);
                        }
                    }
                }, new IAdobeGenericErrorCallback<AdobeCommunityErrorCode>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunityAsset.2
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeCommunityErrorCode adobeCommunityErrorCode) {
                        if (iAdobeGenericErrorCallback != null) {
                            iAdobeGenericErrorCallback.onError(adobeCommunityErrorCode);
                        }
                    }
                });
                return;
            } catch (JSONException e2) {
                if (iAdobeGenericErrorCallback != null) {
                    iAdobeGenericErrorCallback.onError(AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse);
                    return;
                }
                return;
            }
        }
        if (str == null || str.isEmpty()) {
            iAdobeGenericErrorCallback.onError(AdobeCommunityErrorCode.AdobeCommunityErrorNameCantBeEmptyOrNull);
        } else {
            iAdobeGenericErrorCallback.onError(AdobeCommunityErrorCode.AdobeCommunityErrorAssetNotAttachedToCloud);
        }
    }

    public void unpublish(final IAdobeGenericCompletionCallback<Boolean> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCommunityErrorCode> iAdobeGenericErrorCallback) {
        if (this._href != null && !this._href.isEmpty()) {
            ((AdobeCommunitySession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeCommunity)).unpublishAsset(this._href, new IAdobeGenericCompletionCallback<Boolean>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunityAsset.3
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(Boolean bool) {
                    if (bool.booleanValue()) {
                        AdobeCommunityAsset.this._href = null;
                    }
                    if (bool.booleanValue() && iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(bool);
                    } else if (!bool.booleanValue() && iAdobeGenericErrorCallback != null) {
                        iAdobeGenericErrorCallback.onError(AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCommunityErrorCode>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunityAsset.4
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCommunityErrorCode adobeCommunityErrorCode) {
                    if (iAdobeGenericErrorCallback != null) {
                        iAdobeGenericErrorCallback.onError(adobeCommunityErrorCode);
                    }
                }
            });
        } else {
            iAdobeGenericErrorCallback.onError(AdobeCommunityErrorCode.AdobeCommunityErrorAssetNotAttachedToCloud);
        }
    }

    public AdobeCommunityCategory getCategory() {
        return this._category;
    }

    public AdobeCommunityUser getCreator() {
        return this._creator;
    }

    public Date getDateCreated() {
        if (this._dateCreated != null) {
            return (Date) this._dateCreated.clone();
        }
        return null;
    }

    public Date getDatePublished() {
        if (this._datePublished != null) {
            return (Date) this._datePublished.clone();
        }
        return null;
    }

    public Date getDateFeatured() {
        if (this._dateFeatured != null) {
            return (Date) this._dateFeatured.clone();
        }
        return null;
    }

    public Size getDimensions() {
        if (this._dimensions != null) {
            return new Size(this._dimensions.width, this._dimensions.height);
        }
        return null;
    }

    public long getFileSize() {
        return this._fileSize;
    }

    public String getLabel() {
        return this._label;
    }

    public String getNativeMimeType() {
        return this._nativeMimeType;
    }

    public List<String> getSupportedMimeTypes() {
        if (this._supportedMimeTypes == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this._supportedMimeTypes.size());
        Collections.copy(arrayList, this._supportedMimeTypes);
        return arrayList;
    }

    public List<String> getTags() {
        if (this._tags == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this._tags.size());
        Collections.copy(arrayList, this._tags);
        return arrayList;
    }

    public boolean isLicensed() {
        return this._licensed;
    }

    public long getLikesCount() {
        return this._likesCount;
    }

    public long getCommentsCount() {
        return this._commentsCount;
    }

    public long getDetailsCount() {
        return this._detailsCount;
    }

    protected AdobeCommunityAsset(String str, String str2, String str3, String str4, AdobeCommunity adobeCommunity, String str5, AdobeCommunityCategory adobeCommunityCategory, AdobeCommunityUser adobeCommunityUser, Date date, Date date2, Date date3, Size size, long j, String str6, String str7, List<String> list, List<String> list2, boolean z, long j2, long j3, long j4) {
        this._href = str;
        this._renditionHref = str2;
        this._fileExtension = str3;
        this._assetID = str4;
        this._community = adobeCommunity;
        this._name = str5;
        this._category = adobeCommunityCategory;
        this._creator = adobeCommunityUser;
        this._dateCreated = date;
        this._datePublished = date2;
        this._dateFeatured = date3;
        this._dimensions = size;
        this._fileSize = j;
        this._label = str6;
        this._nativeMimeType = str7;
        this._supportedMimeTypes = list;
        this._tags = list2;
        this._licensed = z;
        this._likesCount = j2;
        this._commentsCount = j3;
        this._detailsCount = j4;
    }

    protected AdobeCommunityAsset(JSONObject jSONObject, AdobeCommunity adobeCommunity) {
        this._community = adobeCommunity;
        try {
            this._href = jSONObject.getJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey).getJSONObject("self").getString("href");
            this._renditionHref = jSONObject.getJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey).getJSONObject(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition).getString("href");
            this._assetID = jSONObject.getString("id");
            this._name = jSONObject.optString("title");
            this._dateCreated = convertStringToDate(jSONObject.optString("created"));
            this._datePublished = convertStringToDate(jSONObject.optString(BehanceSDKPublishConstants.KEY_PUBLISHED));
            this._dateFeatured = convertStringToDate(jSONObject.optString(AdobeAnalyticsETSEvent.ADOBE_ETS_SORT_ORDER_FEATURED));
            this._dimensions = new Size(jSONObject.optInt("width", 1), jSONObject.optInt("height", 1));
            this._fileSize = jSONObject.optLong(AdobeCommunityConstants.AdobeCommunityResourceSizeKey, 0L);
            this._label = jSONObject.optString("label");
            this._nativeMimeType = jSONObject.optString("type");
            this._tags = convertArrayToStringList(jSONObject, "tags");
            this._licensed = jSONObject.optBoolean("purchased", false);
            if (jSONObject.optJSONObject("stats") != null) {
                this._likesCount = r0.optInt("like_count", 0);
                this._commentsCount = r0.optInt("comment_count", 0);
                this._detailsCount = r0.optInt("detail_count", 0);
            }
            this._fileExtension = jSONObject.optString("extension");
            if (this._fileExtension.isEmpty() && !this._nativeMimeType.isEmpty()) {
                this._fileExtension = AdobeAssetFileExtensions.getExtensionForMimeType(this._nativeMimeType);
            }
            this._supportedMimeTypes = null;
            this._creator = null;
        } catch (JSONException e2) {
        }
    }

    public String getRenditionURL(AdobeCommunityAssetImageDimension adobeCommunityAssetImageDimension, int i, float f2, AdobeCommunityAssetImageType adobeCommunityAssetImageType) {
        if (this._renditionHref == null) {
            return null;
        }
        String str = "png";
        if (adobeCommunityAssetImageType != AdobeCommunityAssetImageType.AdobeCommunityAssetImageTypePNG) {
            str = "jpg";
        }
        String strReplace = this._renditionHref.replace("{format}", str).replace("{size}", Integer.toString(Math.min(Math.round(i * f2), 1024)));
        String str2 = "width";
        if (adobeCommunityAssetImageDimension != AdobeCommunityAssetImageDimension.AdobeCommunityAssetImageDimensionWidth) {
            str2 = "height";
        }
        return strReplace.replace("{dimension}", str2);
    }

    public static void getAssetsForCommunity(final AdobeCommunity adobeCommunity, String str, String str2, AdobeCommunityAssetSortType adobeCommunityAssetSortType, List<String> list, List<AdobeCommunityCategory> list2, List<AdobeCommunityCategory> list3, final IAdobeGenericCompletionCallback<AdobeCommunityAssetsResponse> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCommunityErrorCode> iAdobeGenericErrorCallback) {
        ((AdobeCommunitySession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeCommunity)).getAssetsForCommunityID(adobeCommunity.getCommunityID(), str, 20, str2, mFilterOptionsSet, adobeCommunityAssetSortType, list, list2, list3, new IAdobeGenericCompletionCallback<JSONObject>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunityAsset.5
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(JSONObject jSONObject) {
                JSONObject jSONObjectOptJSONObject;
                try {
                    JSONArray jSONArray = jSONObject.getJSONObject(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationEmbeddedKey).getJSONArray("assets");
                    int length = jSONArray.length();
                    AdobeCommunityAssetsResponse adobeCommunityAssetsResponse = new AdobeCommunityAssetsResponse();
                    for (int i = 0; i < length; i++) {
                        adobeCommunityAssetsResponse.addAsset(new AdobeCommunityAsset(jSONArray.getJSONObject(i), adobeCommunity));
                        Log.d("Asset Rendition URL", adobeCommunityAssetsResponse.getAssets().get(i).getRenditionURL(AdobeCommunityAssetImageDimension.AdobeCommunityAssetImageDimensionWidth, 48, 2.0f, AdobeCommunityAssetImageType.AdobeCommunityAssetImageTypePNG));
                    }
                    JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
                    if (jSONObjectOptJSONObject2 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(ILink.Rel.NEXT)) != null) {
                        String strOptString = jSONObjectOptJSONObject.optString("href");
                        if (!strOptString.isEmpty()) {
                            adobeCommunityAssetsResponse.setNextPageHref(strOptString);
                        }
                    }
                    iAdobeGenericCompletionCallback.onCompletion(adobeCommunityAssetsResponse);
                } catch (JSONException e2) {
                    iAdobeGenericErrorCallback.onError(AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse);
                }
            }
        }, new IAdobeGenericErrorCallback<AdobeCommunityErrorCode>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunityAsset.6
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCommunityErrorCode adobeCommunityErrorCode) {
                iAdobeGenericErrorCallback.onError(adobeCommunityErrorCode);
            }
        });
    }

    private static Date convertStringToDate(String str) {
        if (str != null && !str.isEmpty()) {
            char cCharAt = str.charAt(str.length() - 1);
            if (cCharAt == 'Z' || cCharAt == 'z') {
                str = str.substring(0, str.length() - 1);
            }
            try {
                return sDefaultDateFormatter.parse(str);
            } catch (ParseException e2) {
                try {
                    return sAlternativeDateFormatter.parse(str);
                } catch (ParseException e3) {
                }
            }
        }
        return null;
    }

    static {
        sDefaultDateFormatter.setTimeZone(sGMTTimeZone);
        sAlternativeDateFormatter.setTimeZone(sGMTTimeZone);
        mFilterOptionsSet = new HashSet();
        mFilterOptionsSet.add(AdobeCommunityAssetFilterOptions.AdobeCommunityAssetFilterOptionDefaults);
    }

    private static List<String> convertArrayToStringList(JSONObject jSONObject, String str) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                arrayList.add(jSONArrayOptJSONArray.optString(i, ""));
            }
            return arrayList;
        }
        return null;
    }
}
