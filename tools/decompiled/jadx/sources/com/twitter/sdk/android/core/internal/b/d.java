package com.twitter.sdk.android.core.internal.b;

import android.annotation.SuppressLint;

/* JADX INFO: compiled from: PreferenceStoreStrategy.java */
/* JADX INFO: loaded from: classes3.dex */
public class d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f3926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e<T> f3927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f3928c;

    public d(b bVar, e<T> eVar, String str) {
        this.f3926a = bVar;
        this.f3927b = eVar;
        this.f3928c = str;
    }

    @SuppressLint({"CommitPrefEdits"})
    public void a(T t) {
        this.f3926a.a(this.f3926a.b().putString(this.f3928c, this.f3927b.a(t)));
    }

    public T a() {
        return this.f3927b.b(this.f3926a.a().getString(this.f3928c, null));
    }

    @SuppressLint({"CommitPrefEdits"})
    public void b() {
        this.f3926a.b().remove(this.f3928c).commit();
    }
}
