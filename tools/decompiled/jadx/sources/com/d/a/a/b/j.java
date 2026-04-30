package com.d.a.a.b;

import com.d.a.a.r;
import java.io.Serializable;

/* JADX INFO: compiled from: SerializedString.java */
/* JADX INFO: loaded from: classes2.dex */
public class j implements r, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final String f1374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected byte[] f1375b;

    public j(String str) {
        if (str == null) {
            throw new IllegalStateException("Null String illegal for SerializedString");
        }
        this.f1374a = str;
    }

    @Override // com.d.a.a.r
    public final String a() {
        return this.f1374a;
    }

    @Override // com.d.a.a.r
    public final byte[] b() {
        byte[] bArr = this.f1375b;
        if (bArr == null) {
            byte[] bArrA = e.a().a(this.f1374a);
            this.f1375b = bArrA;
            return bArrA;
        }
        return bArr;
    }

    public final String toString() {
        return this.f1374a;
    }

    public final int hashCode() {
        return this.f1374a.hashCode();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        return this.f1374a.equals(((j) obj).f1374a);
    }
}
