package com.facebook.imagepipeline.j;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.MemoryFile;
import com.facebook.d.d.k;
import com.facebook.d.d.p;
import com.facebook.imagepipeline.memory.ah;
import com.facebook.imagepipeline.memory.ak;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: GingerbreadPurgeableDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f2595b;

    @Override // com.facebook.imagepipeline.j.b
    public /* bridge */ /* synthetic */ com.facebook.d.h.a a(Bitmap bitmap) {
        return super.a(bitmap);
    }

    @Override // com.facebook.imagepipeline.j.b, com.facebook.imagepipeline.j.e
    public /* bridge */ /* synthetic */ com.facebook.d.h.a a(com.facebook.imagepipeline.h.d dVar, Bitmap.Config config) {
        return super.a(dVar, config);
    }

    @Override // com.facebook.imagepipeline.j.b, com.facebook.imagepipeline.j.e
    public /* bridge */ /* synthetic */ com.facebook.d.h.a a(com.facebook.imagepipeline.h.d dVar, Bitmap.Config config, int i) {
        return super.a(dVar, config, i);
    }

    @Override // com.facebook.imagepipeline.j.b
    protected Bitmap a(com.facebook.d.h.a<ah> aVar, BitmapFactory.Options options) {
        return a(aVar, aVar.a().a(), null, options);
    }

    @Override // com.facebook.imagepipeline.j.b
    protected Bitmap a(com.facebook.d.h.a<ah> aVar, int i, BitmapFactory.Options options) {
        return a(aVar, i, a(aVar, i) ? null : f2593a, options);
    }

    private static MemoryFile a(com.facebook.d.h.a<ah> aVar, int i, @Nullable byte[] bArr) throws Throwable {
        OutputStream outputStream;
        ak akVar;
        com.facebook.d.k.a aVar2 = null;
        MemoryFile memoryFile = new MemoryFile(null, (bArr == null ? 0 : bArr.length) + i);
        memoryFile.allowPurging(false);
        try {
            ak akVar2 = new ak(aVar.a());
            try {
                com.facebook.d.k.a aVar3 = new com.facebook.d.k.a(akVar2, i);
                try {
                    outputStream = memoryFile.getOutputStream();
                } catch (Throwable th) {
                    th = th;
                    outputStream = null;
                    aVar2 = aVar3;
                    akVar = akVar2;
                }
                try {
                    com.facebook.d.d.a.a(aVar3, outputStream);
                    if (bArr != null) {
                        memoryFile.writeBytes(bArr, 0, i, bArr.length);
                    }
                    com.facebook.d.h.a.c(aVar);
                    com.facebook.d.d.b.a(akVar2);
                    com.facebook.d.d.b.a(aVar3);
                    com.facebook.d.d.b.a(outputStream, true);
                    return memoryFile;
                } catch (Throwable th2) {
                    th = th2;
                    aVar2 = aVar3;
                    akVar = akVar2;
                    com.facebook.d.h.a.c(aVar);
                    com.facebook.d.d.b.a(akVar);
                    com.facebook.d.d.b.a(aVar2);
                    com.facebook.d.d.b.a(outputStream, true);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                outputStream = null;
                akVar = akVar2;
            }
        } catch (Throwable th4) {
            th = th4;
            outputStream = null;
            akVar = null;
        }
    }

    private synchronized Method a() {
        if (f2595b == null) {
            try {
                f2595b = MemoryFile.class.getDeclaredMethod("getFileDescriptor", new Class[0]);
            } catch (Exception e2) {
                throw p.b(e2);
            }
        }
        return f2595b;
    }

    private FileDescriptor a(MemoryFile memoryFile) {
        try {
            return (FileDescriptor) a().invoke(memoryFile, new Object[0]);
        } catch (Exception e2) {
            throw p.b(e2);
        }
    }

    protected Bitmap a(com.facebook.d.h.a<ah> aVar, int i, byte[] bArr, BitmapFactory.Options options) {
        MemoryFile memoryFileA = null;
        try {
            try {
                memoryFileA = a(aVar, i, bArr);
                return (Bitmap) k.a(com.facebook.d.n.d.f1997d.a(a(memoryFileA), null, options), "BitmapFactory returned null");
            } catch (IOException e2) {
                throw p.b(e2);
            }
        } finally {
            if (memoryFileA != null) {
                memoryFileA.close();
            }
        }
    }
}
