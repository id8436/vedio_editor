package com.twitter.sdk.android.core.a;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: compiled from: TweetEntities.java */
/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final p f3837a = new p(null, null, null, null, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SerializedName("urls")
    public final List<Object> f3838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SerializedName("user_mentions")
    public final List<Object> f3839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @SerializedName("media")
    public final List<Object> f3840d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @SerializedName("hashtags")
    public final List<Object> f3841e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @SerializedName("symbols")
    public final List<Object> f3842f;

    private p() {
        this(null, null, null, null, null);
    }

    public p(List<Object> list, List<Object> list2, List<Object> list3, List<Object> list4, List<Object> list5) {
        this.f3838b = i.a(list);
        this.f3839c = i.a(list2);
        this.f3840d = i.a(list3);
        this.f3841e = i.a(list4);
        this.f3842f = i.a(list5);
    }
}
