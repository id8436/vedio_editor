package com.d.a.a;

import java.io.Closeable;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: compiled from: JsonParser.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class k implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f1503a;

    public abstract o a() throws IOException;

    public abstract byte[] a(a aVar) throws IOException;

    public abstract k b() throws IOException;

    public abstract o c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    public abstract String d() throws IOException;

    public abstract i e();

    public abstract i f();

    public abstract String g() throws IOException;

    public abstract char[] h() throws IOException;

    public abstract int i() throws IOException;

    public abstract int j() throws IOException;

    public abstract int m() throws IOException;

    public abstract long n() throws IOException;

    public abstract BigInteger o() throws IOException;

    public abstract float p() throws IOException;

    public abstract double q() throws IOException;

    public abstract BigDecimal r() throws IOException;

    protected k() {
    }

    protected k(int i) {
        this.f1503a = i;
    }

    public boolean a(l lVar) {
        return lVar.a(this.f1503a);
    }

    public byte k() throws IOException {
        int iM = m();
        if (iM < -128 || iM > 255) {
            throw a("Numeric value (" + g() + ") out of range of Java byte");
        }
        return (byte) iM;
    }

    public short l() throws IOException {
        int iM = m();
        if (iM < -32768 || iM > 32767) {
            throw a("Numeric value (" + g() + ") out of range of Java short");
        }
        return (short) iM;
    }

    public boolean s() throws IOException {
        o oVarC = c();
        if (oVarC == o.VALUE_TRUE) {
            return true;
        }
        if (oVarC == o.VALUE_FALSE) {
            return false;
        }
        throw new j(this, String.format("Current token (%s) not of boolean type", oVarC));
    }

    public byte[] t() throws IOException {
        return a(b.a());
    }

    protected j a(String str) {
        return new j(this, str);
    }
}
