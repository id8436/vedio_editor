package com.b.a.d.c;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: ImageVideoWrapperEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class k implements com.b.a.d.b<j> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.d.b<InputStream> f934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.b<ParcelFileDescriptor> f935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f936c;

    public k(com.b.a.d.b<InputStream> bVar, com.b.a.d.b<ParcelFileDescriptor> bVar2) {
        this.f934a = bVar;
        this.f935b = bVar2;
    }

    @Override // com.b.a.d.b
    public boolean a(j jVar, OutputStream outputStream) {
        return jVar.a() != null ? this.f934a.a(jVar.a(), outputStream) : this.f935b.a(jVar.b(), outputStream);
    }

    @Override // com.b.a.d.b
    public String a() {
        if (this.f936c == null) {
            this.f936c = this.f934a.a() + this.f935b.a();
        }
        return this.f936c;
    }
}
