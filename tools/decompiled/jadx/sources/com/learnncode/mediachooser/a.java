package com.learnncode.mediachooser;

/* JADX INFO: compiled from: BucketEntry.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f3636c;

    public a(int i, String str, String str2) {
        this.f3636c = null;
        this.f3635b = i;
        this.f3634a = a(str);
        this.f3636c = str2;
    }

    public int hashCode() {
        return this.f3635b;
    }

    public boolean equals(Object obj) {
        return (obj instanceof a) && this.f3635b == ((a) obj).f3635b;
    }

    public static String a(String str) {
        return str == null ? "" : str;
    }
}
