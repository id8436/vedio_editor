package com.c.a.a;

import java.util.regex.Pattern;

/* JADX INFO: compiled from: Literal.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Pattern f1300b;

    public c(String str, int i) {
        super(i);
        this.f1299a = str;
        this.f1300b = Pattern.compile(Pattern.quote(a()));
    }

    public String a() {
        return this.f1299a;
    }

    public String toString() {
        return this.f1299a;
    }
}
