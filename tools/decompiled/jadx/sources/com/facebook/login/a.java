package com.facebook.login;

/* JADX INFO: compiled from: DefaultAudience.java */
/* JADX INFO: loaded from: classes2.dex */
public enum a {
    NONE(null),
    ONLY_ME("only_me"),
    FRIENDS("friends"),
    EVERYONE("everyone");


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f2988e;

    a(String str) {
        this.f2988e = str;
    }

    public String a() {
        return this.f2988e;
    }
}
