package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: loaded from: classes.dex */
public final class FanFundingEvent extends GenericJson {

    @Key
    private String etag;

    @Key
    private String id;

    @Key
    private String kind;

    @Key
    private FanFundingEventSnippet snippet;

    public String getEtag() {
        return this.etag;
    }

    public FanFundingEvent setEtag(String str) {
        this.etag = str;
        return this;
    }

    public String getId() {
        return this.id;
    }

    public FanFundingEvent setId(String str) {
        this.id = str;
        return this;
    }

    public String getKind() {
        return this.kind;
    }

    public FanFundingEvent setKind(String str) {
        this.kind = str;
        return this;
    }

    public FanFundingEventSnippet getSnippet() {
        return this.snippet;
    }

    public FanFundingEvent setSnippet(FanFundingEventSnippet fanFundingEventSnippet) {
        this.snippet = fanFundingEventSnippet;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public FanFundingEvent set(String str, Object obj) {
        return (FanFundingEvent) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public FanFundingEvent clone() {
        return (FanFundingEvent) super.clone();
    }
}
