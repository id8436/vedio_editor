package com.facebook;

/* JADX INFO: compiled from: AccessTokenSource.java */
/* JADX INFO: loaded from: classes2.dex */
public enum j {
    NONE(false),
    FACEBOOK_APPLICATION_WEB(true),
    FACEBOOK_APPLICATION_NATIVE(true),
    FACEBOOK_APPLICATION_SERVICE(true),
    WEB_VIEW(false),
    TEST_USER(true),
    CLIENT_TOKEN(true);

    private final boolean h;

    j(boolean z) {
        this.h = z;
    }

    boolean a() {
        return this.h;
    }
}
