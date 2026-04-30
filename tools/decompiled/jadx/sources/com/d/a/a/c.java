package com.d.a.a;

import org.apache.commons.lang3.CharEncoding;

/* JADX INFO: compiled from: JsonEncoding.java */
/* JADX INFO: loaded from: classes2.dex */
public enum c {
    UTF8("UTF-8", false, 8),
    UTF16_BE(CharEncoding.UTF_16BE, true, 16),
    UTF16_LE(CharEncoding.UTF_16LE, false, 16),
    UTF32_BE("UTF-32BE", true, 32),
    UTF32_LE("UTF-32LE", false, 32);


    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final String f1394f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected final boolean f1395g;
    protected final int h;

    c(String str, boolean z, int i2) {
        this.f1394f = str;
        this.f1395g = z;
        this.h = i2;
    }

    public String a() {
        return this.f1394f;
    }

    public boolean b() {
        return this.f1395g;
    }

    public int c() {
        return this.h;
    }
}
