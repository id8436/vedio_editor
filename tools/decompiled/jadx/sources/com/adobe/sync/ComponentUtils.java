package com.adobe.sync;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ComponentUtils {
    private static SimpleDateFormat formatter = new SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss Z", Locale.US);

    public class ComponentKeys {
        public String assetUrl;
        public String createdDate;

        public ComponentKeys(String str, String str2) {
            this.assetUrl = str;
            this.createdDate = str2;
        }
    }

    public static ComponentKeys getComponentKeys(AdobeDCXComponent adobeDCXComponent, AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        String str;
        String str2;
        AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent = adobeDCXCompositeBranch.findParentOfComponent(adobeDCXComponent);
        if (!(adobeDCXManifestNodeFindParentOfComponent instanceof AdobeDCXManifestNode)) {
            return null;
        }
        String absolutePath = adobeDCXManifestNodeFindParentOfComponent.getAbsolutePath();
        if (!absolutePath.startsWith("/media") || adobeDCXComponent.getRelationship().equals(DCXProjectKeys.kSyncPoints_ComponentRel)) {
            str = null;
            str2 = null;
        } else {
            JSONObject jSONObject = (JSONObject) adobeDCXCompositeBranch.getChildWithAbsolutePath(absolutePath).get(DCXProjectKeys.kDCX_AppProperties);
            str2 = (String) jSONObject.opt(DCXProjectKeys.kDCXKey_MediaRef_assetURL);
            str = (String) jSONObject.opt(DCXProjectKeys.kDCXKey_MediaRef_creationDate);
            if (str == null) {
                long jLongValue = 0;
                Object objOpt = jSONObject.opt(DCXProjectKeys.kDCXKey_Object_lastModifiedTime);
                if (objOpt != null) {
                    if (objOpt instanceof Double) {
                        jLongValue = ((Double) objOpt).longValue() * 1000;
                    } else {
                        jLongValue = ((Long) objOpt).longValue();
                    }
                }
                str = formatter.format(new Date(jLongValue));
            }
        }
        if (str2 == null || str == null) {
            return null;
        }
        return new ComponentKeys(str2, str);
    }

    public static String getExtensionFromFilePath(String str) {
        String strSubstring;
        String queryParameter = null;
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        if (scheme != null && (scheme.equals("assets-library") || scheme.equals("ipod-library"))) {
            queryParameter = uri.getQueryParameter("ext");
        }
        if (queryParameter == null && (strSubstring = str.substring(str.lastIndexOf(46))) != null) {
            return MimeTypeMap.getFileExtensionFromUrl(strSubstring.toLowerCase());
        }
        return queryParameter;
    }
}
