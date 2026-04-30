package com.facebook.imagepipeline.memory;

import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: NativePooledByteBufferFactory.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public class u implements aj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final am f2942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s f2943b;

    public u(s sVar, am amVar) {
        this.f2943b = sVar;
        this.f2942a = amVar;
    }

    @Override // com.facebook.imagepipeline.memory.aj
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public t b(InputStream inputStream) throws IOException {
        v vVar = new v(this.f2943b);
        try {
            return a(inputStream, vVar);
        } finally {
            vVar.close();
        }
    }

    @Override // com.facebook.imagepipeline.memory.aj
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public t b(byte[] bArr) {
        v vVar = new v(this.f2943b, bArr.length);
        try {
            try {
                vVar.write(bArr, 0, bArr.length);
                return vVar.c();
            } catch (IOException e2) {
                throw com.facebook.d.d.p.b(e2);
            }
        } finally {
            vVar.close();
        }
    }

    @Override // com.facebook.imagepipeline.memory.aj
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public t b(InputStream inputStream, int i) throws IOException {
        v vVar = new v(this.f2943b, i);
        try {
            return a(inputStream, vVar);
        } finally {
            vVar.close();
        }
    }

    t a(InputStream inputStream, v vVar) throws IOException {
        this.f2942a.a(inputStream, vVar);
        return vVar.c();
    }

    @Override // com.facebook.imagepipeline.memory.aj
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public v b() {
        return new v(this.f2943b);
    }

    @Override // com.facebook.imagepipeline.memory.aj
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public v b(int i) {
        return new v(this.f2943b, i);
    }
}
