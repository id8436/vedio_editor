package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: loaded from: classes.dex */
public final class Sponsor extends GenericJson {

    @Key
    private String etag;

    @Key
    private String id;

    @Key
    private String kind;

    @Key
    private SponsorSnippet snippet;

    public String getEtag() {
        return this.etag;
    }

    public Sponsor setEtag(String str) {
        this.etag = str;
        return this;
    }

    public String getId() {
        return this.id;
    }

    public Sponsor setId(String str) {
        this.id = str;
        return this;
    }

    public String getKind() {
        return this.kind;
    }

    public Sponsor setKind(String str) {
        this.kind = str;
        return this;
    }

    public SponsorSnippet getSnippet() {
        return this.snippet;
    }

    public Sponsor setSnippet(SponsorSnippet sponsorSnippet) {
        this.snippet = sponsorSnippet;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public Sponsor set(String str, Object obj) {
        return (Sponsor) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public Sponsor clone() {
        return (Sponsor) super.clone();
    }
}
