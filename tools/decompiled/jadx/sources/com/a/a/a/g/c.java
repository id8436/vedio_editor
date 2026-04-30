package com.a.a.a.g;

import java.util.Arrays;

/* JADX INFO: compiled from: MessageFactory.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b[] f500a = new b[i.values().length];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int[] f501b = new int[this.f500a.length];

    public c() {
        Arrays.fill(this.f501b, 0);
    }

    public <T extends b> T a(Class<T> cls) {
        i iVar = i.m.get(cls);
        synchronized (iVar) {
            T t = (T) this.f500a[iVar.ordinal()];
            if (t != null) {
                this.f500a[iVar.ordinal()] = t.f498b;
                this.f501b[iVar.ordinal()] = r2[r3] - 1;
                t.f498b = null;
                return t;
            }
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e2) {
                com.a.a.a.f.b.a(e2, "Cannot create an instance of " + cls + ". Make sure it has a public empty constructor.", new Object[0]);
                return null;
            } catch (InstantiationException e3) {
                com.a.a.a.f.b.a(e3, "Cannot create an instance of " + cls + ". Make sure it has a empty constructor.", new Object[0]);
                return null;
            }
        }
    }

    public void a(b bVar) {
        i iVar = bVar.f497a;
        bVar.b();
        synchronized (iVar) {
            if (this.f501b[iVar.ordinal()] < 20) {
                bVar.f498b = this.f500a[iVar.ordinal()];
                this.f500a[iVar.ordinal()] = bVar;
                int[] iArr = this.f501b;
                int iOrdinal = iVar.ordinal();
                iArr[iOrdinal] = iArr[iOrdinal] + 1;
            }
        }
    }
}
