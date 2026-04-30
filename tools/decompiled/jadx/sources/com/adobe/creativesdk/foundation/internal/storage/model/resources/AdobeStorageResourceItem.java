package com.adobe.creativesdk.foundation.internal.storage.model.resources;

import android.text.TextUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.ParsingDataException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.util.Iterator;
import org.apache.commons.io.Charsets;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeStorageResourceItem extends AdobeStorageResource {
    private byte[] data;
    private Number length;
    private String md5;
    private JSONObject optionalMetadata;
    private String path;
    private String version;

    public AdobeStorageResourceItem() {
        this.data = null;
    }

    public AdobeStorageResourceItem(AdobeStorageResourceItem adobeStorageResourceItem) {
        super(adobeStorageResourceItem);
        this.data = null;
        this.data = adobeStorageResourceItem.getData();
        this.path = adobeStorageResourceItem.getPath();
        this.version = adobeStorageResourceItem.getVersion();
        this.md5 = adobeStorageResourceItem.getMd5();
        this.optionalMetadata = adobeStorageResourceItem.getOptionalMetadata();
        this.length = adobeStorageResourceItem.getLength();
    }

    public static AdobeStorageResourceItem resourceFromHref(URI uri) {
        AdobeStorageResourceItem adobeStorageResourceItem = new AdobeStorageResourceItem();
        adobeStorageResourceItem.href = uri;
        adobeStorageResourceItem.name = AdobeStorageLastPathComponentUtil.getLastPathComponent(uri.getPath());
        return adobeStorageResourceItem;
    }

    public static AdobeStorageResourceItem resourceFromHref(String str) {
        AdobeStorageResourceItem adobeStorageResourceItem = new AdobeStorageResourceItem();
        try {
            adobeStorageResourceItem.href = new URI(AdobeStorageUtils.encodeURL(str));
        } catch (URISyntaxException e2) {
            e2.printStackTrace();
        }
        adobeStorageResourceItem.name = AdobeStorageLastPathComponentUtil.getLastPathComponent(str);
        return adobeStorageResourceItem;
    }

    public static String escapeAssetName(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLEncoder.encode(str, "UTF-8").replace("+", "%20");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static boolean validAssetName(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return (str.matches(".*[\\\\:\\*\\?\"\\/<>\\|\\x00-\\x1F]+.*") || str.matches(".*[\\ \\.]$")) ? false : true;
    }

    public static AdobeStorageResourceItem resourceFromAssetName(String str, String str2) {
        AdobeStorageResourceItem adobeStorageResourceItem = new AdobeStorageResourceItem();
        adobeStorageResourceItem.name = str;
        try {
            adobeStorageResourceItem.href = new URI("assets/".concat(str2).concat(URIUtil.SLASH).concat(str));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return adobeStorageResourceItem;
    }

    public static byte[] contentsAtPath(String str) {
        File file = new File(str);
        byte[] bArr = new byte[(int) file.length()];
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            bufferedInputStream.read(bArr, 0, bArr.length);
            bufferedInputStream.close();
            return bArr;
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
            return null;
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        } catch (OutOfMemoryError e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static AdobeStorageResourceItem resourceWithContentsOfFile(String str, String str2, AdobeAssetException adobeAssetException) {
        AdobeStorageResourceItem adobeStorageResourceItemResourceFromPath = resourceFromPath(str, str2);
        adobeStorageResourceItemResourceFromPath.data = contentsAtPath(str);
        if (adobeStorageResourceItemResourceFromPath.data != null) {
            return adobeStorageResourceItemResourceFromPath;
        }
        return null;
    }

    public static AdobeStorageResourceItem resourceFromPath(String str, String str2) {
        AdobeStorageResourceItem adobeStorageResourceItem = new AdobeStorageResourceItem();
        adobeStorageResourceItem.type = str2;
        adobeStorageResourceItem.path = str;
        return adobeStorageResourceItem;
    }

    public static AdobeStorageResourceItem resourceWithJSONData(JSONObject jSONObject, AdobeAssetException adobeAssetException) {
        return resourceWithJSONData(jSONObject, null, adobeAssetException);
    }

    public static AdobeStorageResourceItem resourceWithJSONData(JSONObject jSONObject, String str, AdobeAssetException adobeAssetException) {
        AdobeStorageResourceItem adobeStorageResourceItem = new AdobeStorageResourceItem();
        adobeStorageResourceItem.type = str;
        if (jSONObject != null) {
            adobeStorageResourceItem.data = jSONObject.toString().getBytes(Charsets.UTF_8);
        } else {
            adobeStorageResourceItem.data = null;
        }
        if (adobeStorageResourceItem.data != null) {
            return adobeStorageResourceItem;
        }
        return null;
    }

    boolean isCollection() {
        return false;
    }

    public void updateFromCollectionDictionary(JSONObject jSONObject) throws ParsingDataException {
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (next.equals("name")) {
                this.name = (String) jSONObject.opt(next);
            } else if (next.equals("type")) {
                this.type = (String) jSONObject.opt(next);
            } else if (next.equals("etag")) {
                this.etag = (String) jSONObject.opt(next);
            } else if (next.equals(AdobeCommunityConstants.AdobeCommunityResourceSizeKey)) {
                this.length = (Number) jSONObject.opt(next);
            } else if (next.equals(AdobeCommunityConstants.AdobeCommunityResourceMD5Key)) {
                this.md5 = (String) jSONObject.opt(next);
            } else if (next.equals("id")) {
                this.internalID = (String) jSONObject.opt(next);
            } else if (next.equals("created")) {
                this.created = (String) jSONObject.opt(next);
            } else if (next.equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) {
                this.modified = (String) jSONObject.opt(next);
            } else if (next.equals("ordinal")) {
                this.ordinal = jSONObject.optInt(next);
            } else if (next.equals(AdobeCommunityConstants.AdobeCommunityResourceLinkKey)) {
                this.links = (JSONObject) jSONObject.opt(next);
            } else {
                try {
                    jSONObject2.put(next, jSONObject.opt(next));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
        if (jSONObject2.opt(BehanceSDKUrlUtil.PARAM_KEY_PAGE_NUMBER) != null) {
            try {
                jSONObject2.put(BehanceSDKUrlUtil.PARAM_KEY_PAGE_NUMBER, 1);
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
        }
        if (jSONObject2.opt("height") == null) {
            try {
                jSONObject2.put("height", 0);
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }
        if (jSONObject2.opt("width") == null) {
            try {
                jSONObject2.put("width", 0);
            } catch (JSONException e5) {
                e5.printStackTrace();
            }
        }
        this.optionalMetadata = jSONObject2;
        if (this.name == null) {
            throw new ParsingDataException(AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Item doesn't have a name."));
        }
        if (this.type == null) {
            throw new ParsingDataException(AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Item doesn't have a type."));
        }
        if (this.modified == null) {
            throw new ParsingDataException(AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Item doesn't have a modified time."));
        }
    }

    public byte[] getData() {
        return this.data;
    }

    public void setData(byte[] bArr) {
        if (bArr != null) {
            this.data = bArr;
        }
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public String getMd5() {
        return this.md5;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }

    public JSONObject getOptionalMetadata() {
        return this.optionalMetadata;
    }

    public void setOptionalMetadata(JSONObject jSONObject) {
        this.optionalMetadata = jSONObject;
    }

    public Number getLength() {
        return this.length;
    }

    public void setLength(Number number) {
        this.length = number;
    }

    public JSONObject getLinks() {
        return this.links;
    }

    public String getRenditionLink() {
        JSONObject jSONObject = this.links != null ? (JSONObject) this.links.opt(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition) : null;
        if (jSONObject != null) {
            return jSONObject.optString("href");
        }
        return null;
    }

    public boolean isRenditionLinkTemplated() {
        JSONObject jSONObject = this.links != null ? (JSONObject) this.links.opt(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition) : null;
        if (jSONObject != null) {
            return jSONObject.optBoolean("templated");
        }
        return false;
    }

    public String getMetadataLink() {
        JSONObject jSONObject = this.links != null ? (JSONObject) this.links.opt("metadata") : null;
        if (jSONObject != null) {
            return jSONObject.optString("href");
        }
        return null;
    }

    public boolean isMetaDataLinkTemplated() {
        JSONObject jSONObject = this.links != null ? (JSONObject) this.links.opt(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition) : null;
        if (jSONObject != null) {
            return jSONObject.optBoolean("templated");
        }
        return false;
    }
}
