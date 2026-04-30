package com.adobe.creativesdk.foundation.internal.storage.model.resources;

import android.os.Parcel;
import android.os.Parcelable;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstantsPrivate;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.ParsingDataException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationRoleType;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.c.a.a.e;
import com.google.gdata.data.analytics.Engagement;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeStorageResourceCollection extends AdobeStorageResource implements Parcelable {
    private static final String AdobeStorageResourceCollectionType = "application/vnd.adobe.directory+json";
    public static final Parcelable.Creator<AdobeStorageResourceCollection> CREATOR = new Parcelable.Creator<AdobeStorageResourceCollection>() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdobeStorageResourceCollection createFromParcel(Parcel parcel) {
            AdobeStorageResourceCollection adobeStorageResourceCollection = new AdobeStorageResourceCollection();
            adobeStorageResourceCollection.internalID = parcel.readString();
            if (adobeStorageResourceCollection.internalID.equals("-")) {
                adobeStorageResourceCollection.internalID = null;
            }
            adobeStorageResourceCollection.href = (URI) parcel.readSerializable();
            adobeStorageResourceCollection.etag = parcel.readString();
            if (adobeStorageResourceCollection.etag.equals("-")) {
                adobeStorageResourceCollection.etag = null;
            }
            adobeStorageResourceCollection.name = parcel.readString();
            adobeStorageResourceCollection.created = parcel.readString();
            if (adobeStorageResourceCollection.created.equals("-")) {
                adobeStorageResourceCollection.created = null;
            }
            adobeStorageResourceCollection.modified = parcel.readString();
            if (adobeStorageResourceCollection.modified.equals("-")) {
                adobeStorageResourceCollection.modified = null;
            }
            adobeStorageResourceCollection.type = parcel.readString();
            if (adobeStorageResourceCollection.type.equals("-")) {
                adobeStorageResourceCollection.type = null;
            }
            adobeStorageResourceCollection.collaboration = (AdobeCollaborationType) parcel.readSerializable();
            adobeStorageResourceCollection.collaboration_role = (AdobeCollaborationRoleType) parcel.readSerializable();
            adobeStorageResourceCollection.total_children = parcel.readInt();
            return adobeStorageResourceCollection;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdobeStorageResourceCollection[] newArray(int i) {
            return new AdobeStorageResourceCollection[i];
        }
    };
    private ArrayList<AdobeStorageResource> children;
    String filterByType;
    private int limit;
    private String nextStartIndex;
    private AdobeStorageOrderRelation order;
    private AdobeStorageOrderByProperty orderBy;
    private String percentEncodedQuery;
    private String startIndex;
    private int total_children;

    public AdobeStorageResourceCollection() {
        this.type = AdobeStorageResourceCollectionType;
        this.isCollection = true;
    }

    public AdobeStorageResourceCollection(AdobeStorageResourceCollection adobeStorageResourceCollection) {
        super(adobeStorageResourceCollection);
        this.type = AdobeStorageResourceCollectionType;
        this.isCollection = true;
        this.percentEncodedQuery = adobeStorageResourceCollection.getPercentEncodedQuery();
        this.startIndex = adobeStorageResourceCollection.getStartIndex();
        this.nextStartIndex = adobeStorageResourceCollection.getNextStartIndex();
        this.children = null;
        if (adobeStorageResourceCollection.getChildren() != null) {
            this.children = new ArrayList<>(adobeStorageResourceCollection.getChildren());
        }
        this.limit = adobeStorageResourceCollection.getLimit();
        this.total_children = adobeStorageResourceCollection.getNumChildren();
        this.order = adobeStorageResourceCollection.getOrder();
        this.orderBy = adobeStorageResourceCollection.getOrderBy();
        this.filterByType = adobeStorageResourceCollection.getFilterByType();
    }

    public static AdobeStorageResourceCollection collectionFromHref(URI uri) {
        if (uri == null) {
            return null;
        }
        AdobeStorageResourceCollection adobeStorageResourceCollection = new AdobeStorageResourceCollection();
        String lastPathComponent = AdobeStorageLastPathComponentUtil.getLastPathComponent(uri.getPath());
        adobeStorageResourceCollection.href = uri;
        adobeStorageResourceCollection.name = lastPathComponent;
        return adobeStorageResourceCollection;
    }

    public static AdobeStorageResourceCollection collectionFromHref(URI uri, String str) {
        if (uri == null) {
            return null;
        }
        AdobeStorageResourceCollection adobeStorageResourceCollection = new AdobeStorageResourceCollection();
        String lastPathComponent = AdobeStorageLastPathComponentUtil.getLastPathComponent(uri.getPath());
        adobeStorageResourceCollection.href = uri;
        adobeStorageResourceCollection.name = lastPathComponent;
        adobeStorageResourceCollection.modified = str;
        return adobeStorageResourceCollection;
    }

    public static AdobeStorageResourceCollection collectionFromHref(String str) {
        if (str == null) {
            return null;
        }
        AdobeStorageResourceCollection adobeStorageResourceCollection = new AdobeStorageResourceCollection();
        String lastPathComponent = AdobeStorageLastPathComponentUtil.getLastPathComponent(str);
        try {
            adobeStorageResourceCollection.href = new URI(URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
        }
        adobeStorageResourceCollection.name = lastPathComponent;
        return adobeStorageResourceCollection;
    }

    public void resetPageIndex() {
        this.startIndex = null;
        this.nextStartIndex = null;
        this.percentEncodedQuery = null;
    }

    public boolean isComplete() {
        return this.nextStartIndex == null;
    }

    boolean isCollection() {
        return true;
    }

    void updateFromDictionary(JSONObject jSONObject, boolean z) throws ParsingDataException {
        int length;
        URI uri;
        this.internalID = jSONObject.optString("id");
        this.name = jSONObject.optString("name");
        this.etag = jSONObject.optString("etag");
        this.modified = jSONObject.optString(AdobeDCXConstants.AdobeDCXAssetStateModified);
        this.ordinal = jSONObject.optInt("ordinal");
        this.type = jSONObject.optString("type");
        if (jSONObject.has("total_children")) {
            length = jSONObject.optInt("total_children");
        } else {
            length = jSONObject.optJSONArray("children") != null ? jSONObject.optJSONArray("children").length() : 0;
        }
        this.total_children = length;
        this.links = (JSONObject) jSONObject.opt(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
        if (this.name == null) {
            throw new ParsingDataException(AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Collection doesn't have a name."));
        }
        if (this.etag == null) {
            throw new ParsingDataException(AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Collection doesn't have an etag."));
        }
        if (this.modified == null) {
            throw new ParsingDataException(AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Collection doesn't have a modified time."));
        }
        String strOptString = jSONObject.optString("collaboration", null);
        this.collaboration_role = AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_OWNER;
        if (strOptString == null) {
            this.collaboration = AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE;
        } else if (strOptString.equalsIgnoreCase("outgoing")) {
            this.collaboration = AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDBYUSER;
        } else if (strOptString.equalsIgnoreCase("incoming")) {
            this.collaboration = AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER;
            String strOptString2 = jSONObject.optString("collaboration_role", null);
            if (strOptString2 == null) {
                this.collaboration_role = AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_EDITOR;
            } else if (strOptString2.equalsIgnoreCase("VIEWER")) {
                this.collaboration_role = AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_VIEWER;
            }
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray != null) {
            ArrayList<AdobeStorageResource> arrayList = new ArrayList<>();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                try {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    String strEscapeAssetName = AdobeStorageResourceItem.escapeAssetName(jSONObjectOptJSONObject.optString("name"));
                    JSONObject jSONObject2 = (JSONObject) jSONObjectOptJSONObject.opt(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
                    JSONObject jSONObject3 = jSONObject2 != null ? (JSONObject) jSONObject2.opt(AdobeDCXConstantsPrivate.AdobeDCXPathLink) : null;
                    String strOptString3 = jSONObject3 != null ? jSONObject3.optString("href") : null;
                    boolean zOptBoolean = jSONObject3 != null ? jSONObject3.optBoolean("templated") : false;
                    if (strOptString3 != null) {
                        try {
                            uri = new URI(zOptBoolean ? e.a(strOptString3).d() : strOptString3);
                        } catch (Exception e2) {
                            uri = new URI(this.href.getRawPath().concat(strEscapeAssetName));
                        }
                    } else {
                        uri = new URI(this.href.getRawPath().concat(strEscapeAssetName));
                    }
                    if (jSONObjectOptJSONObject.optString("type").equals(AdobeStorageResourceCollectionType)) {
                        AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = collectionFromHref(new URI(uri.getRawPath().concat(URIUtil.SLASH)));
                        adobeStorageResourceCollectionCollectionFromHref.setCloud(getCloud());
                        adobeStorageResourceCollectionCollectionFromHref.updateFromDictionary(jSONObjectOptJSONObject, false);
                        arrayList.add(adobeStorageResourceCollectionCollectionFromHref);
                    } else {
                        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(uri);
                        adobeStorageResourceItemResourceFromHref.setCloud(getCloud());
                        adobeStorageResourceItemResourceFromHref.updateFromCollectionDictionary(jSONObjectOptJSONObject);
                        arrayList.add(adobeStorageResourceItemResourceFromHref);
                    }
                } catch (URISyntaxException e3) {
                    e3.printStackTrace();
                }
            }
            if (z && this.children != null) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    this.children.add(arrayList.get(i2));
                }
                return;
            }
            this.children = arrayList;
            return;
        }
        this.children = null;
    }

    public void updateFromData(String str, boolean z) throws ParsingDataException {
        JSONObject jSONObjectJSONObjectWithData = AdobeStorageUtils.JSONObjectWithData(str);
        if (jSONObjectJSONObjectWithData != null) {
            updateFromDictionary(jSONObjectJSONObjectWithData, z);
            return;
        }
        throw new ParsingDataException(AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Parsed collection data is not of type dictionary."));
    }

    public String getStartIndex() {
        return this.startIndex;
    }

    public void setStartIndex(String str) {
        if (str != null && !str.equals(this.startIndex)) {
            this.startIndex = str;
            this.percentEncodedQuery = null;
        }
    }

    public int getLimit() {
        return this.limit;
    }

    public void setLimit(int i) {
        if (i != this.limit) {
            this.limit = i;
            this.percentEncodedQuery = null;
        }
    }

    public int getNumChildren() {
        return this.total_children;
    }

    public AdobeStorageOrderRelation getOrder() {
        return this.order;
    }

    public void setOrder(AdobeStorageOrderRelation adobeStorageOrderRelation) {
        if (adobeStorageOrderRelation != this.order) {
            this.order = adobeStorageOrderRelation;
            resetPageIndex();
        }
    }

    public AdobeStorageOrderByProperty getOrderBy() {
        return this.orderBy;
    }

    public void setOrderBy(AdobeStorageOrderByProperty adobeStorageOrderByProperty) {
        if (adobeStorageOrderByProperty != this.orderBy) {
            this.orderBy = adobeStorageOrderByProperty;
            resetPageIndex();
        }
    }

    public String getFilterByType() {
        return this.filterByType;
    }

    public void setFilterByType(String str) {
        if (!str.equals(this.filterByType)) {
            this.filterByType = str;
            resetPageIndex();
        }
    }

    public String getNextStartIndex() {
        return this.nextStartIndex;
    }

    public void setNextStartIndex(String str) {
        this.nextStartIndex = str;
    }

    public ArrayList<AdobeStorageResource> getChildren() {
        return this.children;
    }

    public void setChildren(ArrayList<AdobeStorageResource> arrayList) {
        this.children = arrayList;
    }

    public static String getAdobestorageresourcecollectiontype() {
        return AdobeStorageResourceCollectionType;
    }

    public void setPercentEncodedQuery(String str) {
        this.percentEncodedQuery = str;
    }

    public String getPercentEncodedQuery() {
        if (this.percentEncodedQuery == null) {
            HashMap map = new HashMap();
            if (this.startIndex != null) {
                map.put("start", this.startIndex);
            }
            if (this.limit > 0) {
                map.put("limit", Integer.toString(this.limit));
            }
            if (this.order == AdobeStorageOrderRelation.ADOBE_STORAGE_ORDER_DESCENDING) {
                map.put("order", "desc");
            } else {
                map.put("order", "asc");
            }
            String str = null;
            if (this.orderBy != null) {
                switch (this.orderBy) {
                    case ADOBE_STORAGE_ORDER_BY_NAME:
                        str = "name";
                        break;
                    case ADOBE_STORAGE_ORDER_BY_MODIFIED:
                        str = AdobeDCXConstants.AdobeDCXAssetStateModified;
                        break;
                    case ADOBE_STORAGE_ORDER_BY_ORDINAL:
                        str = "ordinal";
                        break;
                }
            }
            if (str != null) {
                map.put("orderby", str);
            } else {
                map.put("orderby", "name");
            }
            if (this.filterByType != null) {
                map.put("type", this.filterByType);
            }
            this.percentEncodedQuery = mapToQueryString(map);
        }
        return this.percentEncodedQuery;
    }

    private static String mapToQueryString(HashMap<String, String> map) {
        String strEncode;
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            String key = entry.getKey();
            String value = entry.getValue();
            if (key == null) {
                strEncode = "";
            } else {
                try {
                    strEncode = URLEncoder.encode(key, "UTF-8");
                } catch (UnsupportedEncodingException e2) {
                    throw new RuntimeException("Problem encoding the collection params into query string", e2);
                }
            }
            sb.append(strEncode);
            sb.append(Engagement.Comparison.EQ);
            sb.append(value != null ? URLEncoder.encode(value, "UTF-8") : "");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.internalID != null) {
            parcel.writeString(this.internalID);
        } else {
            parcel.writeString("-");
        }
        parcel.writeSerializable(this.href);
        if (this.etag != null) {
            parcel.writeString(this.etag);
        } else {
            parcel.writeString("-");
        }
        parcel.writeString(this.name);
        if (this.created != null) {
            parcel.writeString(this.created);
        } else {
            parcel.writeString("-");
        }
        if (this.modified != null) {
            parcel.writeString(this.modified);
        } else {
            parcel.writeString("-");
        }
        if (this.type != null) {
            parcel.writeString(this.type);
        } else {
            parcel.writeString("-");
        }
        parcel.writeSerializable(this.collaboration);
        parcel.writeSerializable(this.collaboration_role);
        parcel.writeInt(this.total_children);
    }
}
