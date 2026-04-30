package com.facebook.g;

import com.facebook.d.d.k;
import com.facebook.d.d.p;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ImageFormatChecker.java */
/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static e f2255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private List<d> f2257c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f2258d = new a();

    private e() {
        b();
    }

    public void a(@Nullable List<d> list) {
        this.f2257c = list;
        b();
    }

    public c a(InputStream inputStream) throws IOException {
        k.a(inputStream);
        byte[] bArr = new byte[this.f2256b];
        int iA = a(this.f2256b, inputStream, bArr);
        if (this.f2257c != null) {
            Iterator<d> it = this.f2257c.iterator();
            while (it.hasNext()) {
                c cVarA = it.next().a(bArr, iA);
                if (cVarA != null && cVarA != c.f2252a) {
                    return cVarA;
                }
            }
        }
        c cVarA2 = this.f2258d.a(bArr, iA);
        if (cVarA2 == null) {
            return c.f2252a;
        }
        return cVarA2;
    }

    private void b() {
        this.f2256b = this.f2258d.a();
        if (this.f2257c != null) {
            Iterator<d> it = this.f2257c.iterator();
            while (it.hasNext()) {
                this.f2256b = Math.max(this.f2256b, it.next().a());
            }
        }
    }

    private static int a(int i, InputStream inputStream, byte[] bArr) throws IOException {
        k.a(inputStream);
        k.a(bArr);
        k.a(bArr.length >= i);
        if (inputStream.markSupported()) {
            try {
                inputStream.mark(i);
                return com.facebook.d.d.a.a(inputStream, bArr, 0, i);
            } finally {
                inputStream.reset();
            }
        }
        return com.facebook.d.d.a.a(inputStream, bArr, 0, i);
    }

    public static synchronized e a() {
        if (f2255a == null) {
            f2255a = new e();
        }
        return f2255a;
    }

    public static c b(InputStream inputStream) throws IOException {
        return a().a(inputStream);
    }

    public static c c(InputStream inputStream) {
        try {
            return b(inputStream);
        } catch (IOException e2) {
            throw p.b(e2);
        }
    }
}
