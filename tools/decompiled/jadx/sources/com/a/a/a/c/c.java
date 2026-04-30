package com.a.a.a.c;

import android.content.Context;
import android.support.annotation.NonNull;
import com.a.a.a.h.d;
import com.a.a.a.p;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: Configuration.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Pattern f447a = Pattern.compile("^([A-Za-z]|[0-9]|_|-)+$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f448b = new a();

    public c(@NonNull Context context) {
        this.f448b.f445f = context.getApplicationContext();
    }

    @NonNull
    public c a(@NonNull String str) {
        if (str == null || !this.f447a.matcher(str).matches()) {
            throw new IllegalArgumentException("id cannot be null or empty and can only include alphanumeric characters, - or _ .");
        }
        this.f448b.f440a = str;
        return this;
    }

    @NonNull
    public a a() {
        if (this.f448b.f446g == null) {
            this.f448b.f446g = new p();
        }
        if (this.f448b.i == null) {
            this.f448b.i = new d(this.f448b.f445f);
        }
        if (this.f448b.k == null) {
            this.f448b.k = new com.a.a.a.k.a();
        }
        return this.f448b;
    }
}
