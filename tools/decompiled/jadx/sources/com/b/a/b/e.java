package com.b.a.b;

import android.support.v4.view.ViewCompat;
import android.util.Log;
import com.google.common.primitives.UnsignedBytes;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: compiled from: GifHeaderParser.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ByteBuffer f735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d f736c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f734a = new byte[256];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f737d = 0;

    public e a(byte[] bArr) {
        c();
        if (bArr != null) {
            this.f735b = ByteBuffer.wrap(bArr);
            this.f735b.rewind();
            this.f735b.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f735b = null;
            this.f736c.f728b = 2;
        }
        return this;
    }

    public void a() {
        this.f735b = null;
        this.f736c = null;
    }

    private void c() {
        this.f735b = null;
        Arrays.fill(this.f734a, (byte) 0);
        this.f736c = new d();
        this.f737d = 0;
    }

    public d b() {
        if (this.f735b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (o()) {
            return this.f736c;
        }
        h();
        if (!o()) {
            d();
            if (this.f736c.f729c < 0) {
                this.f736c.f728b = 1;
            }
        }
        return this.f736c;
    }

    private void d() {
        boolean z = false;
        while (!z && !o()) {
            switch (m()) {
                case 33:
                    switch (m()) {
                        case 1:
                            k();
                            break;
                        case 249:
                            this.f736c.f730d = new c();
                            e();
                            break;
                        case 254:
                            k();
                            break;
                        case 255:
                            l();
                            String str = "";
                            for (int i = 0; i < 11; i++) {
                                str = str + ((char) this.f734a[i]);
                            }
                            if (str.equals("NETSCAPE2.0")) {
                                g();
                            } else {
                                k();
                            }
                            break;
                        default:
                            k();
                            break;
                    }
                    break;
                case 44:
                    if (this.f736c.f730d == null) {
                        this.f736c.f730d = new c();
                    }
                    f();
                    break;
                case 59:
                    z = true;
                    break;
                default:
                    this.f736c.f728b = 1;
                    break;
            }
        }
    }

    private void e() {
        m();
        int iM = m();
        this.f736c.f730d.f726g = (iM & 28) >> 2;
        if (this.f736c.f730d.f726g == 0) {
            this.f736c.f730d.f726g = 1;
        }
        this.f736c.f730d.f725f = (iM & 1) != 0;
        int iN = n();
        if (iN < 3) {
            iN = 10;
        }
        this.f736c.f730d.i = iN * 10;
        this.f736c.f730d.h = m();
        m();
    }

    private void f() {
        this.f736c.f730d.f720a = n();
        this.f736c.f730d.f721b = n();
        this.f736c.f730d.f722c = n();
        this.f736c.f730d.f723d = n();
        int iM = m();
        boolean z = (iM & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (iM & 7) + 1);
        this.f736c.f730d.f724e = (iM & 64) != 0;
        if (z) {
            this.f736c.f730d.k = a(iPow);
        } else {
            this.f736c.f730d.k = null;
        }
        this.f736c.f730d.j = this.f735b.position();
        j();
        if (!o()) {
            this.f736c.f729c++;
            this.f736c.f731e.add(this.f736c.f730d);
        }
    }

    private void g() {
        do {
            l();
            if (this.f734a[0] == 1) {
                this.f736c.m = (this.f734a[1] & UnsignedBytes.MAX_VALUE) | ((this.f734a[2] & UnsignedBytes.MAX_VALUE) << 8);
            }
            if (this.f737d <= 0) {
                return;
            }
        } while (!o());
    }

    private void h() {
        String str = "";
        for (int i = 0; i < 6; i++) {
            str = str + ((char) m());
        }
        if (!str.startsWith("GIF")) {
            this.f736c.f728b = 1;
            return;
        }
        i();
        if (this.f736c.h && !o()) {
            this.f736c.f727a = a(this.f736c.i);
            this.f736c.l = this.f736c.f727a[this.f736c.j];
        }
    }

    private void i() {
        this.f736c.f732f = n();
        this.f736c.f733g = n();
        int iM = m();
        this.f736c.h = (iM & 128) != 0;
        this.f736c.i = 2 << (iM & 7);
        this.f736c.j = m();
        this.f736c.k = m();
    }

    private int[] a(int i) {
        int[] iArr;
        BufferUnderflowException e2;
        int i2 = 0;
        byte[] bArr = new byte[i * 3];
        try {
            this.f735b.get(bArr);
            iArr = new int[256];
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                try {
                    int i5 = bArr[i3] & UnsignedBytes.MAX_VALUE;
                    int i6 = i4 + 1;
                    int i7 = bArr[i4] & UnsignedBytes.MAX_VALUE;
                    i3 = i6 + 1;
                    int i8 = i2 + 1;
                    iArr[i2] = (i5 << 16) | ViewCompat.MEASURED_STATE_MASK | (i7 << 8) | (bArr[i6] & UnsignedBytes.MAX_VALUE);
                    i2 = i8;
                } catch (BufferUnderflowException e3) {
                    e2 = e3;
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        Log.d("GifHeaderParser", "Format Error Reading Color Table", e2);
                    }
                    this.f736c.f728b = 1;
                    return iArr;
                }
            }
        } catch (BufferUnderflowException e4) {
            iArr = null;
            e2 = e4;
        }
        return iArr;
    }

    private void j() {
        m();
        k();
    }

    private void k() {
        int iM;
        do {
            iM = m();
            this.f735b.position(this.f735b.position() + iM);
        } while (iM > 0);
    }

    private int l() {
        int i = 0;
        this.f737d = m();
        if (this.f737d > 0) {
            int i2 = 0;
            while (i < this.f737d) {
                try {
                    i2 = this.f737d - i;
                    this.f735b.get(this.f734a, i, i2);
                    i += i2;
                } catch (Exception e2) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        Log.d("GifHeaderParser", "Error Reading Block n: " + i + " count: " + i2 + " blockSize: " + this.f737d, e2);
                    }
                    this.f736c.f728b = 1;
                }
            }
        }
        return i;
    }

    private int m() {
        try {
            return this.f735b.get() & UnsignedBytes.MAX_VALUE;
        } catch (Exception e2) {
            this.f736c.f728b = 1;
            return 0;
        }
    }

    private int n() {
        return this.f735b.getShort();
    }

    private boolean o() {
        return this.f736c.f728b != 0;
    }
}
