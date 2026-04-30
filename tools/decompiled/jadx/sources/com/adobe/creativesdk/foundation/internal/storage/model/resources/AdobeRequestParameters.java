package com.adobe.creativesdk.foundation.internal.storage.model.resources;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.data.analytics.Engagement;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeRequestParameters {
    private String acceptType;
    private int page;
    private int size;
    private String version;
    private final String PAGE_KEY = BehanceSDKUrlUtil.PARAM_KEY_PAGE_NUMBER;
    private final String SIZE_KEY = AdobeCommunityConstants.AdobeCommunityResourceSizeKey;
    private final String VERSION_KEY = AdobeCommunityConstants.AdobeCommunityResourceVersionKey;
    private Map<String, String> paramMap = new HashMap();

    public int getPage() {
        return this.page;
    }

    public void setPage(int i) {
        this.page = i;
        insertParamValue(BehanceSDKUrlUtil.PARAM_KEY_PAGE_NUMBER, String.valueOf(i));
    }

    public int getSize() {
        return this.size;
    }

    public void setSize(int i) {
        this.size = i;
        if (i > 0) {
            insertParamValue(AdobeCommunityConstants.AdobeCommunityResourceSizeKey, String.valueOf(i));
        }
    }

    public String getAcceptType() {
        return this.acceptType;
    }

    public void setAcceptType(String str) {
        this.acceptType = str;
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
