package com.twitter.sdk.android.core.internal.scribe;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: compiled from: SyndicatedSdkImpressionEvent.java */
/* JADX INFO: loaded from: classes.dex */
public class ai extends ab {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @SerializedName("external_ids")
    public final aj f4015f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @SerializedName("device_id_created_at")
    public final long f4016g;

    @SerializedName("language")
    public final String h;

    public ai(e eVar, long j, String str, String str2, List<Object> list) {
        super("syndicated_sdk_impression", eVar, j, list);
        this.h = str;
        this.f4015f = new aj(this, str2);
        this.f4016g = 0L;
    }
}
