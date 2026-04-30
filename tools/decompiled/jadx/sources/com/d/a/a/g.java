package com.d.a.a;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: compiled from: JsonGenerator.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class g implements Closeable, Flushable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected q f1488a;

    public abstract void a(char c2) throws IOException;

    public abstract void a(double d2) throws IOException;

    public abstract void a(float f2) throws IOException;

    public abstract void a(long j) throws IOException;

    public abstract void a(a aVar, byte[] bArr, int i, int i2) throws IOException;

    public abstract void a(String str) throws IOException;

    public abstract void a(BigDecimal bigDecimal) throws IOException;

    public abstract void a(BigInteger bigInteger) throws IOException;

    public abstract void a(boolean z) throws IOException;

    public abstract void a(char[] cArr, int i, int i2) throws IOException;

    public abstract g b();

    public abstract void b(String str) throws IOException;

    public abstract void c() throws IOException;

    public abstract void c(int i) throws IOException;

    public abstract void c(String str) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    public abstract void d() throws IOException;

    public abstract void d(String str) throws IOException;

    public abstract void e() throws IOException;

    public abstract void f() throws IOException;

    public abstract void flush() throws IOException;

    public abstract void g() throws IOException;

    protected g() {
    }

    public g a(q qVar) {
        this.f1488a = qVar;
        return this;
    }

    public q a() {
        return this.f1488a;
    }

    public g a(int i) {
        return this;
    }

    public g a(com.d.a.a.b.b bVar) {
        return this;
    }

    public g a(r rVar) {
        throw new UnsupportedOperationException();
    }

    public void b(int i) throws IOException {
        c();
    }

    public void b(r rVar) throws IOException {
        c(rVar.a());
    }

    public void a(byte[] bArr) throws IOException {
        a(b.a(), bArr, 0, bArr.length);
    }

    public void a(String str, String str2) throws IOException {
        a(str);
        b(str2);
    }

    protected void e(String str) throws f {
        throw new f(str, this);
    }

    protected final void h() {
        com.d.a.a.e.j.a();
    }
}
