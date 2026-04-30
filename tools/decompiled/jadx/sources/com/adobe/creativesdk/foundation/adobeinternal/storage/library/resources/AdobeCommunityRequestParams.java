package com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources;

import com.google.gdata.data.analytics.Engagement;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommunityRequestParams {
    private static final String PATH_KEY = "path";
    private final String VERSION_KEY = AdobeCommunityConstants.AdobeCommunityResourceVersionKey;
    private Map<String, String> paramMap = new HashMap();
    private String path;
    private String version;

    public String getPath() {
        return this.path;
    }

    public void setPath(String str) {
        this.path = str;
        insertParamValue("path", String.valueOf(str));
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String str) {
        this.version = str;
        insertParamValue(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, String.valueOf(str));
    }

    public String getParamaterValue(String str) {
        String str2 = this.paramMap.get(str);
        return str2 != null ? str2 : "";
    }

    public String constructParameterString() {
        String str = "";
        Iterator<Map.Entry<String, String>> it = this.paramMap.entrySet().iterator();
        while (true) {
            String str2 = str;
            if (it.hasNext()) {
                Map.Entry<String, String> next = it.next();
                str = str2 + ";" + next.getKey() + Engagement.Comparison.EQ + next.getValue();
            } else {
                return str2;
            }
        }
    }

    private void insertParamValue(String str, String str2) {
        this.paramMap.put(str, str2);
    }
}
