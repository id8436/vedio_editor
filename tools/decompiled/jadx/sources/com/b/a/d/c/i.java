package com.b.a.d.c;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageVideoModelLoader.java */
/* JADX INFO: loaded from: classes2.dex */
class i implements com.b.a.d.a.c<j> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.d.a.c<InputStream> f930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.a.c<ParcelFileDescriptor> f931b;

    public i(com.b.a.d.a.c<InputStream> cVar, com.b.a.d.a.c<ParcelFileDescriptor> cVar2) {
        this.f930a = cVar;
        this.f931b = cVar2;
    }

    @Override // com.b.a.d.a.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public j a(com.b.a.k kVar) throws Exception {
        InputStream inputStreamA;
        ParcelFileDescriptor parcelFileDescriptorA = null;
        if (this.f930a != null) {
            try {
                inputStreamA = this.f930a.a(kVar);
            } catch (Exception e2) {
                if (Log.isLoggable("IVML", 2)) {
                    Log.v("IVML", "Exception fetching input stream, trying ParcelFileDescriptor", e2);
                }
                if (this.f931b == null) {
                    throw e2;
                }
                inputStreamA = null;
            }
        } else {
            inputStreamA = null;
        }
        if (this.f931b != null) {
            try {
                parcelFileDescriptorA = this.f931b.a(kVar);
            } catch (Exception e3) {
                if (Log.isLoggable("IVML", 2)) {
                    Log.v("IVML", "Exception fetching ParcelFileDescriptor", e3);
                }
                if (inputStreamA == null) {
                    throw e3;
                }
            }
        }
        return new j(inputStreamA, parcelFileDescriptorA);
    }

    @Override // com.b.a.d.a.c
    public void a() {
        if (this.f930a != null) {
            this.f930a.a();
        }
        if (this.f931b != null) {
            this.f931b.a();
        }
    }

    @Override // com.b.a.d.a.c
    public String b() {
        return this.f930a != null ? this.f930a.b() : this.f931b.b();
    }

    @Override // com.b.a.d.a.c
    public void c() {
        if (this.f930a != null) {
            this.f930a.c();
        }
        if (this.f931b != null) {
            this.f931b.c();
        }
    }
}
