package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import java.util.ArrayList;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommunity {
    static final String MARKET_COMMUNITY_ID = "market";
    private final String _communityID;

    public AdobeCommunity(String str) {
        this._communityID = str;
    }

    public String getCommunityID() {
        return this._communityID;
    }

    public static AdobeCommunity getMarketCommunityId() {
        return new AdobeCommunity(MARKET_COMMUNITY_ID);
    }

    public Future getCommunityCategories(IAdobeGenericCompletionCallback<ArrayList<AdobeCommunityCategory>> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<String> iAdobeGenericErrorCallback) {
        return null;
    }
}
