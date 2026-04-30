package com.d.a.a.c;

import com.d.a.a.j;
import com.d.a.a.k;
import java.util.HashSet;

/* JADX INFO: compiled from: DupDetector.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Object f1403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f1404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f1405c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected HashSet<String> f1406d;

    private b(Object obj) {
        this.f1403a = obj;
    }

    public static b a(k kVar) {
        return new b(kVar);
    }

    public static b a(com.d.a.a.g gVar) {
        return new b(gVar);
    }

    public b a() {
        return new b(this.f1403a);
    }

    public void b() {
        this.f1404b = null;
        this.f1405c = null;
        this.f1406d = null;
    }

    public Object c() {
        return this.f1403a;
    }

    public boolean a(String str) throws j {
        if (this.f1404b == null) {
            this.f1404b = str;
            return false;
        }
        if (str.equals(this.f1404b)) {
            return true;
        }
        if (this.f1405c == null) {
            this.f1405c = str;
            return false;
        }
        if (str.equals(this.f1405c)) {
            return true;
        }
        if (this.f1406d == null) {
            this.f1406d = new HashSet<>(16);
            this.f1406d.add(this.f1404b);
            this.f1406d.add(this.f1405c);
        }
        return !this.f1406d.add(str);
    }
}
