package com.facebook.imagepipeline.k;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: LocalAssetFetchProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class as extends ay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AssetManager f2634a;

    public as(Executor executor, com.facebook.imagepipeline.memory.aj ajVar, AssetManager assetManager) {
        super(executor, ajVar);
        this.f2634a = assetManager;
    }

    @Override // com.facebook.imagepipeline.k.ay
    protected com.facebook.imagepipeline.h.d a(com.facebook.imagepipeline.l.a aVar) throws IOException {
        return b(this.f2634a.open(c(aVar), 2), b(aVar));
    }

    private int b(com.facebook.imagepipeline.l.a aVar) throws Throwable {
        AssetFileDescriptor assetFileDescriptorOpenFd;
        Throwable th;
        int length;
        try {
            assetFileDescriptorOpenFd = this.f2634a.openFd(c(aVar));
        } catch (IOException e2) {
            assetFileDescriptorOpenFd = null;
        } catch (Throwable th2) {
            assetFileDescriptorOpenFd = null;
            th = th2;
        }
        try {
            length = (int) assetFileDescriptorOpenFd.getLength();
            if (assetFileDescriptorOpenFd != null) {
                try {
                    assetFileDescriptorOpenFd.close();
                } catch (IOException e3) {
                }
            }
        } catch (IOException e4) {
            length = -1;
            if (assetFileDescriptorOpenFd != null) {
                try {
                    assetFileDescriptorOpenFd.close();
                } catch (IOException e5) {
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (assetFileDescriptorOpenFd != null) {
                try {
                    assetFileDescriptorOpenFd.close();
                } catch (IOException e6) {
                }
            }
            throw th;
        }
        return length;
    }

    @Override // com.facebook.imagepipeline.k.ay
    protected String a() {
        return "LocalAssetFetchProducer";
    }

    private static String c(com.facebook.imagepipeline.l.a aVar) {
        return aVar.b().getPath().substring(1);
    }
}
