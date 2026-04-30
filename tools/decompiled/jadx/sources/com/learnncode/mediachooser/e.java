package com.learnncode.mediachooser;

import android.net.Uri;

/* JADX INFO: compiled from: MediaModel.java */
/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f3722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Uri f3723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f3724d;

    public e(String str, boolean z) {
        this.f3721a = null;
        this.f3722b = false;
        this.f3723c = null;
        this.f3724d = null;
        this.f3721a = str;
        this.f3722b = z;
    }

    public e(String str, boolean z, Uri uri) {
        this.f3721a = null;
        this.f3722b = false;
        this.f3723c = null;
        this.f3724d = null;
        this.f3721a = str;
        this.f3723c = uri;
        this.f3722b = z;
    }

    public e(String str, boolean z, Uri uri, String str2) {
        this.f3721a = null;
        this.f3722b = false;
        this.f3723c = null;
        this.f3724d = null;
        this.f3721a = str;
        this.f3723c = uri;
        this.f3722b = z;
        this.f3724d = str2;
    }
}
