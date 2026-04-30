package com.b.a.d.d.a;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import java.io.IOException;

/* JADX INFO: compiled from: VideoBitmapDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class aa implements a<ParcelFileDescriptor> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ab f961a = new ab();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ab f962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f963c;

    public aa() {
        this(f961a, -1);
    }

    aa(ab abVar, int i) {
        this.f962b = abVar;
        this.f963c = i;
    }

    public Bitmap a(ParcelFileDescriptor parcelFileDescriptor, com.b.a.d.b.a.e eVar, int i, int i2, com.b.a.d.a aVar) throws IOException {
        Bitmap frameAtTime;
        MediaMetadataRetriever mediaMetadataRetrieverA = this.f962b.a();
        mediaMetadataRetrieverA.setDataSource(parcelFileDescriptor.getFileDescriptor());
        if (this.f963c >= 0) {
            frameAtTime = mediaMetadataRetrieverA.getFrameAtTime(this.f963c);
        } else {
            frameAtTime = mediaMetadataRetrieverA.getFrameAtTime();
        }
        mediaMetadataRetrieverA.release();
        parcelFileDescriptor.close();
        return frameAtTime;
    }

    @Override // com.b.a.d.d.a.a
    public String a() {
        return "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
    }
}
