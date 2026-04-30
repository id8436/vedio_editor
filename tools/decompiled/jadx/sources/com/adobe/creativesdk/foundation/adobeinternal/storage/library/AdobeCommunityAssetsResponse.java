package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommunityAssetsResponse {
    private List<AdobeCommunityAsset> _assets;
    private String _nextPageHref;

    public AdobeCommunityAssetsResponse() {
        reset();
    }

    public String getNextPageHref() {
        return this._nextPageHref;
    }

    public void setNextPageHref(String str) {
        this._nextPageHref = str;
    }

    public List<AdobeCommunityAsset> getAssets() {
        return this._assets;
    }

    public void addAsset(AdobeCommunityAsset adobeCommunityAsset) {
        this._assets.add(adobeCommunityAsset);
    }

    public void reset() {
        this._assets = new ArrayList();
        this._nextPageHref = null;
    }
}
