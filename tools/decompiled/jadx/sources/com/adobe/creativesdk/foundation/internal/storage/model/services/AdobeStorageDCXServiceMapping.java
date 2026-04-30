package com.adobe.creativesdk.foundation.internal.storage.model.services;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstantsPrivate;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeRequestParameters;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.commons.io.FilenameUtils;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeStorageDCXServiceMapping {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !AdobeStorageDCXServiceMapping.class.desiredAssertionStatus();
    }

    public static String getSyncGroupNameForComposite(AdobeDCXComposite adobeDCXComposite) {
        boolean z = false;
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Composite must not be nil.");
        }
        if (adobeDCXComposite.getHref() == null) {
            return null;
        }
        for (String str : adobeDCXComposite.getHref().toString().split(URIUtil.SLASH)) {
            if (str != null) {
                if (z) {
                    return str;
                }
                if (!str.equals("assets")) {
                    break;
                }
                z = true;
            }
        }
        return null;
    }

    public static AdobeStorageResourceItem resourceForComposite(AdobeDCXComposite adobeDCXComposite) {
        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = null;
        if (adobeDCXComposite.getHref() != null) {
            adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(adobeDCXComposite.getHref());
            adobeStorageResourceItemResourceFromHref.type = "application/vnd.adobe.directory+json";
            AdobeDCXManifest manifest = adobeDCXComposite.getManifest();
            if (manifest != null) {
                adobeStorageResourceItemResourceFromHref.name = manifest.getCompositeId();
            } else {
                adobeStorageResourceItemResourceFromHref.name = FilenameUtils.getName(adobeDCXComposite.getHref().toString());
            }
            adobeStorageResourceItemResourceFromHref.ordinal = adobeDCXComposite.getOrdinal();
            adobeStorageResourceItemResourceFromHref.collaboration = adobeDCXComposite.getCollaborationType();
            adobeStorageResourceItemResourceFromHref.collaboration_role = adobeDCXComposite.getCollaborationRoleType();
        }
        return adobeStorageResourceItemResourceFromHref;
    }

    public static AdobeStorageResourceItem resourceForManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) {
        String strStringByAppendingLastPathComponent;
        if (adobeDCXComposite.hasLinks()) {
            JSONObject jSONObjectOptJSONObject = adobeDCXComposite.getLinks().optJSONObject(AdobeDCXConstantsPrivate.AdobeDCXManifestLink);
            strStringByAppendingLastPathComponent = AdobeStorageUtils.getFormattedLink(jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("href", null) : null, new AdobeRequestParameters());
        } else {
            strStringByAppendingLastPathComponent = null;
        }
        if (strStringByAppendingLastPathComponent == null) {
            strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(adobeDCXComposite.getHref().toString(), "manifest");
        }
        AdobeStorageResourceItem adobeStorageResourceItem = new AdobeStorageResourceItem();
        adobeStorageResourceItem.type = "application/vnd.adobe.dcx-manifest+json";
        try {
            adobeStorageResourceItem.href = new URI(strStringByAppendingLastPathComponent);
        } catch (URISyntaxException e2) {
            e2.printStackTrace();
        }
        adobeStorageResourceItem.etag = adobeDCXManifest != null ? adobeDCXManifest.getEtag() : null;
        return adobeStorageResourceItem;
    }

    public static AdobeStorageResourceItem resourceForComponent(AdobeDCXComponent adobeDCXComponent, String str, JSONObject jSONObject, String str2, boolean z) {
        String strStringByAppendingLastPathComponent;
        String formattedLink = null;
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("component for which resource is requested should not be null");
        }
        if (adobeDCXComponent == null) {
            return null;
        }
        if (adobeDCXComponent.getComponentId() != null && (str != null || jSONObject != null)) {
            if (jSONObject != null) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AdobeDCXConstantsPrivate.AdobeDCXComponentLink);
                strStringByAppendingLastPathComponent = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("href", null) : null;
                if (strStringByAppendingLastPathComponent != null) {
                    strStringByAppendingLastPathComponent = strStringByAppendingLastPathComponent.replace(AdobeDCXConstantsPrivate.AdobeDCXLinkComponentId, adobeDCXComponent.getComponentId());
                }
            } else {
                strStringByAppendingLastPathComponent = null;
            }
            if (strStringByAppendingLastPathComponent == null) {
                strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str, adobeDCXComponent.getComponentId());
            }
            if (z) {
                AdobeRequestParameters adobeRequestParameters = new AdobeRequestParameters();
                String version = adobeDCXComponent.getVersion();
                adobeRequestParameters.setVersion(version != null ? version : "(null)");
                formattedLink = AdobeStorageUtils.getFormattedLink(strStringByAppendingLastPathComponent, adobeRequestParameters);
                if (formattedLink != null && !formattedLink.contains(AdobeCommunityConstants.AdobeCommunityResourceVersionKey)) {
                    formattedLink = version != null ? formattedLink + String.format(";version=%s", version) : formattedLink + ";version=(null)";
                }
            } else {
                formattedLink = strStringByAppendingLastPathComponent;
            }
        }
        AdobeStorageResourceItem adobeStorageResourceItem = new AdobeStorageResourceItem();
        adobeStorageResourceItem.name = adobeDCXComponent.getComponentId();
        adobeStorageResourceItem.type = adobeDCXComponent.getType();
        if (formattedLink != null) {
            try {
                adobeStorageResourceItem.href = new URI(formattedLink);
            } catch (URISyntaxException e2) {
                e2.printStackTrace();
            }
        }
        adobeStorageResourceItem.etag = adobeDCXComponent.getEtag();
        adobeStorageResourceItem.setMd5(adobeDCXComponent.getMd5());
        adobeStorageResourceItem.setLength(Long.valueOf(adobeDCXComponent.getLength()));
        adobeStorageResourceItem.setVersion(adobeDCXComponent.getVersion());
        adobeStorageResourceItem.setPath(str2);
        return adobeStorageResourceItem;
    }

    public static AdobeStorageResourceItem resourceForComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, boolean z) {
        if ($assertionsDisabled || adobeDCXComponent != null) {
            return resourceForComponent(adobeDCXComponent, adobeDCXComposite.getHref().toString(), adobeDCXComposite.getLinks(), str, z);
        }
        throw new AssertionError("component for which resource is requested should not be null");
    }
}
