package com.b.a.d.c;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: ResourceLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class u<T> implements s<Integer, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s<Uri, T> f952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources f953b;

    public u(Context context, s<Uri, T> sVar) {
        this(context.getResources(), sVar);
    }

    public u(Resources resources, s<Uri, T> sVar) {
        this.f953b = resources;
        this.f952a = sVar;
    }

    @Override // com.b.a.d.c.s
    public com.b.a.d.a.c<T> a(Integer num, int i, int i2) {
        Uri uri;
        try {
            uri = Uri.parse("android.resource://" + this.f953b.getResourcePackageName(num.intValue()) + IOUtils.DIR_SEPARATOR_UNIX + this.f953b.getResourceTypeName(num.intValue()) + IOUtils.DIR_SEPARATOR_UNIX + this.f953b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e2) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num, e2);
            }
            uri = null;
        }
        if (uri != null) {
            return this.f952a.a(uri, i, i2);
        }
        return null;
    }
}
