package com.twitter.sdk.android.core.internal.scribe;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: compiled from: SyndicationClientEvent.java */
/* JADX INFO: loaded from: classes.dex */
public class ak extends ab {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @SerializedName("language")
    public final String f4019f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @SerializedName("event_info")
    public final String f4020g;

    @SerializedName("external_ids")
    public final al h;

    public ak(e eVar, String str, long j, String str2, String str3, List<Object> list) {
        super("tfw_client_event", eVar, j, list);
        this.f4019f = str2;
        this.f4020g = str;
        this.h = new al(this, str3);
    }
}
