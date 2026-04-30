package com.facebook.imagepipeline.k;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: LocalResourceFetchProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class bc extends ay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f2656a;

    public bc(Executor executor, com.facebook.imagepipeline.memory.aj ajVar, Resources resources) {
        super(executor, ajVar);
        this.f2656a = resources;
    }

    @Override // com.facebook.imagepipeline.k.ay
    protected com.facebook.imagepipeline.h.d a(com.facebook.imagepipeline.l.a aVar) throws IOException {
        return b(this.f2656a.openRawResource(c(aVar)), b(aVar));
    }

    private int b(com.facebook.imagepipeline.l.a aVar) throws Throwable {
        AssetFileDescriptor assetFileDescriptorOpenRawResourceFd;
        Throwable th;
        int length;
        try {
            assetFileDescriptorOpenRawResourceFd = this.f2656a.openRawResourceFd(c(aVar));
        } catch (Resources.NotFoundException e2) {
            assetFileDescriptorOpenRawResourceFd = null;
        } catch (Throwable th2) {
            assetFileDescriptorOpenRawResourceFd = null;
            th = th2;
        }
        try {
            length = (int) assetFileDescriptorOpenRawResourceFd.getLength();
            if (assetFileDescriptorOpenRawResourceFd != null) {
                try {
                    assetFileDescriptorOpenRawResourceFd.close();
                } catch (IOException e3) {
                }
            }
        } catch (Resources.NotFoundException e4) {
            length = -1;
            if (assetFileDescriptorOpenRawResourceFd != null) {
                try {
                    assetFileDescriptorOpenRawResourceFd.close();
                } catch (IOException e5) {
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (assetFileDescriptorOpenRawResourceFd != null) {
                try {
                    assetFileDescriptorOpenRawResourceFd.close();
                } catch (IOException e6) {
                }
            }
            throw th;
        }
        return length;
    }

    @Override // com.facebook.imagepipeline.k.ay
    protected String a() {
        return "LocalResourceFetchProducer";
    }

    private static int c(com.facebook.imagepipeline.l.a aVar) {
        return Integer.parseInt(aVar.b().getPath().substring(1));
    }
}
