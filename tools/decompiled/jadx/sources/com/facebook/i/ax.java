package com.facebook.i;

import java.util.Map;

/* JADX INFO: compiled from: Utility.java */
/* JADX INFO: loaded from: classes2.dex */
public class ax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2325c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, Map<String, aw>> f2326d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private x f2327e;

    /* synthetic */ ax(boolean z, String str, boolean z2, Map map, x xVar, at atVar) {
        this(z, str, z2, map, xVar);
    }

    private ax(boolean z, String str, boolean z2, Map<String, Map<String, aw>> map, x xVar) {
        this.f2323a = z;
        this.f2324b = str;
        this.f2325c = z2;
        this.f2326d = map;
        this.f2327e = xVar;
    }

    public boolean a() {
        return this.f2323a;
    }

    public x b() {
        return this.f2327e;
    }
}
