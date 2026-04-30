package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: loaded from: classes.dex */
public final class Comment extends GenericJson {

    @Key
    private String etag;

    @Key
    private String id;

    @Key
    private String kind;

    @Key
    private CommentSnippet snippet;

    public String getEtag() {
        return this.etag;
    }

    public Comment setEtag(String str) {
        this.etag = str;
        return this;
    }

    public String getId() {
        return this.id;
    }

    public Comment setId(String str) {
        this.id = str;
        return this;
    }

    public String getKind() {
        return this.kind;
    }

    public Comment setKind(String str) {
        this.kind = str;
        return this;
    }

    public CommentSnippet getSnippet() {
        return this.snippet;
    }

    public Comment setSnippet(CommentSnippet commentSnippet) {
        this.snippet = commentSnippet;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public Comment set(String str, Object obj) {
        return (Comment) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public Comment clone() {
        return (Comment) super.clone();
    }
}
