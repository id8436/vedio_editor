package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: loaded from: classes.dex */
public final class VideoAbuseReportSecondaryReason extends GenericJson {

    @Key
    private String id;

    @Key
    private String label;

    public String getId() {
        return this.id;
    }

    public VideoAbuseReportSecondaryReason setId(String str) {
        this.id = str;
        return this;
    }

    public String getLabel() {
        return this.label;
    }

    public VideoAbuseReportSecondaryReason setLabel(String str) {
        this.label = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public VideoAbuseReportSecondaryReason set(String str, Object obj) {
        return (VideoAbuseReportSecondaryReason) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public VideoAbuseReportSecondaryReason clone() {
        return (VideoAbuseReportSecondaryReason) super.clone();
    }
}
