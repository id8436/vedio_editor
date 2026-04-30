package com.b.a.j;

import android.util.Log;
import java.util.Queue;

/* JADX INFO: compiled from: ByteArrayPool.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f1219b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue<byte[]> f1220a = h.a(0);

    public static a a() {
        return f1219b;
    }

    private a() {
    }

    public byte[] b() {
        byte[] bArrPoll;
        synchronized (this.f1220a) {
            bArrPoll = this.f1220a.poll();
        }
        if (bArrPoll == null) {
            bArrPoll = new byte[65536];
            if (Log.isLoggable("ByteArrayPool", 3)) {
                Log.d("ByteArrayPool", "Created temp bytes");
            }
        }
        return bArrPoll;
    }

    public boolean a(byte[] bArr) {
        boolean z = false;
        if (bArr.length == 65536) {
            synchronized (this.f1220a) {
                if (this.f1220a.size() < 32) {
                    z = true;
                    this.f1220a.offer(bArr);
                }
            }
        }
        return z;
    }
}
