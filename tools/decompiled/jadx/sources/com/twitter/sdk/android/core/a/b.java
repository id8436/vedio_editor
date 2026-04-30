package com.twitter.sdk.android.core.a;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: compiled from: ApiErrors.java */
/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SerializedName("errors")
    public final List<a> f3821a;

    private b() {
        this(null);
    }

    public b(List<a> list) {
        this.f3821a = i.a(list);
    }
}
