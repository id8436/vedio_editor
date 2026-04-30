package com.b.a.d.c;

import android.net.Uri;

/* JADX INFO: compiled from: AssetUriParser.java */
/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f912a = "file:///android_asset/".length();

    public static boolean a(Uri uri) {
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    public static String b(Uri uri) {
        return uri.toString().substring(f912a);
    }
}
