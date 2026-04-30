package com.facebook.c.b;

import android.content.Context;
import java.io.File;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: DiskCacheConfig.java */
/* JADX INFO: loaded from: classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.facebook.d.d.m<File> f1890c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f1891d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f1892e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f1893f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private aa f1894g;
    private com.facebook.c.a.a h;
    private com.facebook.c.a.d i;
    private com.facebook.d.a.b j;
    private boolean k;

    @Nullable
    private final Context l;

    private n(@Nullable Context context) {
        this.f1888a = 1;
        this.f1889b = "image_cache";
        this.f1891d = 41943040L;
        this.f1892e = 10485760L;
        this.f1893f = 2097152L;
        this.f1894g = new j();
        this.l = context;
    }

    public l a() {
        com.facebook.d.d.k.b((this.f1890c == null && this.l == null) ? false : true, "Either a non-null context or a base directory path or supplier must be provided.");
        if (this.f1890c == null && this.l != null) {
            this.f1890c = new o(this);
        }
        return new l(this);
    }
}
