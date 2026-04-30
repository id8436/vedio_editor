package com.b.a.d.c;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageVideoWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ParcelFileDescriptor f933b;

    public j(InputStream inputStream, ParcelFileDescriptor parcelFileDescriptor) {
        this.f932a = inputStream;
        this.f933b = parcelFileDescriptor;
    }

    public InputStream a() {
        return this.f932a;
    }

    public ParcelFileDescriptor b() {
        return this.f933b;
    }
}
