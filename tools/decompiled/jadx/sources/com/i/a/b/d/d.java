package com.i.a.b.d;

import java.util.Locale;

/* JADX INFO: compiled from: ImageDownloader.java */
/* JADX INFO: loaded from: classes3.dex */
public enum d {
    HTTP("http"),
    HTTPS("https"),
    FILE("file"),
    CONTENT("content"),
    ASSETS("assets"),
    DRAWABLE("drawable"),
    UNKNOWN("");

    private String h;
    private String i;

    d(String str) {
        this.h = str;
        this.i = str + "://";
    }

    public static d a(String str) {
        if (str != null) {
            for (d dVar : values()) {
                if (dVar.d(str)) {
                    return dVar;
                }
            }
        }
        return UNKNOWN;
    }

    private boolean d(String str) {
        return str.toLowerCase(Locale.US).startsWith(this.i);
    }

    public String b(String str) {
        return this.i + str;
    }

    public String c(String str) {
        if (!d(str)) {
            throw new IllegalArgumentException(String.format("URI [%1$s] doesn't have expected scheme [%2$s]", str, this.h));
        }
        return str.substring(this.i.length());
    }
}
