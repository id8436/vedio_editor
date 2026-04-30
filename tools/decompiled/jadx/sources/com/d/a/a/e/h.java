package com.d.a.a.e;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: InternCache.java */
/* JADX INFO: loaded from: classes2.dex */
public final class h extends ConcurrentHashMap<String, String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f1477a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f1478b;

    private h() {
        super(180, 0.8f, 4);
        this.f1478b = new Object();
    }

    public String a(String str) {
        String str2 = get(str);
        if (str2 == null) {
            if (size() >= 180) {
                synchronized (this.f1478b) {
                    if (size() >= 180) {
                        clear();
                    }
                }
            }
            String strIntern = str.intern();
            put(strIntern, strIntern);
            return strIntern;
        }
        return str2;
    }
}
