package com.d.a.a;

import java.io.Serializable;

/* JADX INFO: compiled from: JsonLocation.java */
/* JADX INFO: loaded from: classes2.dex */
public class i implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f1496a = new i("N/A", -1, -1, -1, -1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long f1497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final long f1498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f1499d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f1500e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final transient Object f1501f;

    public i(Object obj, long j, int i, int i2) {
        this(obj, -1L, j, i, i2);
    }

    public i(Object obj, long j, long j2, int i, int i2) {
        this.f1501f = obj;
        this.f1497b = j;
        this.f1498c = j2;
        this.f1499d = i;
        this.f1500e = i2;
    }

    public Object a() {
        return this.f1501f;
    }

    public int b() {
        return this.f1499d;
    }

    public int c() {
        return this.f1500e;
    }

    public long d() {
        return this.f1497b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(80);
        sb.append("[Source: ");
        if (this.f1501f == null) {
            sb.append("UNKNOWN");
        } else {
            sb.append(this.f1501f.toString());
        }
        sb.append("; line: ");
        sb.append(this.f1499d);
        sb.append(", column: ");
        sb.append(this.f1500e);
        sb.append(']');
        return sb.toString();
    }

    public int hashCode() {
        return ((((this.f1501f == null ? 1 : this.f1501f.hashCode()) ^ this.f1499d) + this.f1500e) ^ ((int) this.f1498c)) + ((int) this.f1497b);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f1501f == null) {
            if (iVar.f1501f != null) {
                return false;
            }
        } else if (!this.f1501f.equals(iVar.f1501f)) {
            return false;
        }
        return this.f1499d == iVar.f1499d && this.f1500e == iVar.f1500e && this.f1498c == iVar.f1498c && d() == iVar.d();
    }
}
