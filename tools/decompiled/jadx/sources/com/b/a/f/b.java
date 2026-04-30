package com.b.a.f;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: ManifestParser.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1145a;

    public b(Context context) {
        this.f1145a = context;
    }

    public List<a> a() {
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = this.f1145a.getPackageManager().getApplicationInfo(this.f1145a.getPackageName(), 128);
            if (applicationInfo.metaData != null) {
                for (String str : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                        arrayList.add(a(str));
                    }
                }
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e2) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e2);
        }
    }

    private static a a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                Object objNewInstance = cls.newInstance();
                if (!(objNewInstance instanceof a)) {
                    throw new RuntimeException("Expected instanceof GlideModule, but found: " + objNewInstance);
                }
                return (a) objNewInstance;
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, e2);
            } catch (InstantiationException e3) {
                throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, e3);
            }
        } catch (ClassNotFoundException e4) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e4);
        }
    }
}
