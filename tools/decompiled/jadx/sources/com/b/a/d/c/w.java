package com.b.a.d.c;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: StringLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class w<T> implements s<String, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s<Uri, T> f954a;

    public w(s<Uri, T> sVar) {
        this.f954a = sVar;
    }

    @Override // com.b.a.d.c.s
    public com.b.a.d.a.c<T> a(String str, int i, int i2) {
        Uri uriA;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(URIUtil.SLASH)) {
            uriA = a(str);
        } else {
            uriA = Uri.parse(str);
            if (uriA.getScheme() == null) {
                uriA = a(str);
            }
        }
        return this.f954a.a(uriA, i, i2);
    }

    private static Uri a(String str) {
        return Uri.fromFile(new File(str));
    }
}
