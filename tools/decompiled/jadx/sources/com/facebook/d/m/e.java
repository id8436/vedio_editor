package com.facebook.d.m;

/* JADX INFO: compiled from: TriState.java */
/* JADX INFO: loaded from: classes2.dex */
public enum e {
    YES,
    NO,
    UNSET;

    public static e a(boolean z) {
        return z ? YES : NO;
    }
}
