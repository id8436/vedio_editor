package com.b.a;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.widget.ImageView;
import com.b.a.d.d.a.y;
import java.io.InputStream;

/* JADX INFO: compiled from: BitmapRequestBuilder.java */
/* JADX INFO: loaded from: classes2.dex */
public class a<ModelType, TranscodeType> extends e<ModelType, com.b.a.d.c.j, Bitmap, TranscodeType> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.b.a.d.b.a.e f679g;
    private com.b.a.d.d.a.f h;
    private com.b.a.d.a i;
    private com.b.a.d.e<InputStream, Bitmap> j;
    private com.b.a.d.e<ParcelFileDescriptor, Bitmap> k;

    a(com.b.a.g.f<ModelType, com.b.a.d.c.j, Bitmap, TranscodeType> fVar, Class<TranscodeType> cls, e<ModelType, ?, ?, ?> eVar) {
        super(fVar, cls, eVar);
        this.h = com.b.a.d.d.a.f.f969a;
        this.f679g = eVar.f1110c.a();
        this.i = eVar.f1110c.g();
        this.j = new y(this.f679g, this.i);
        this.k = new com.b.a.d.d.a.k(this.f679g, this.i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.b.a.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> b(com.b.a.d.e<com.b.a.d.c.j, Bitmap> eVar) {
        super.b((com.b.a.d.e) eVar);
        return this;
    }

    public a<ModelType, TranscodeType> a(com.b.a.d.d.a.d... dVarArr) {
        super.b((com.b.a.d.g[]) dVarArr);
        return this;
    }

    public a<ModelType, TranscodeType> a() {
        return a(this.f1110c.c());
    }

    public a<ModelType, TranscodeType> b() {
        return a(this.f1110c.d());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.b.a.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> b(com.b.a.d.g<Bitmap>... gVarArr) {
        super.b((com.b.a.d.g[]) gVarArr);
        return this;
    }

    @Override // com.b.a.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> b(com.b.a.h.a.f<TranscodeType> fVar) {
        super.b((com.b.a.h.a.f) fVar);
        return this;
    }

    @Override // com.b.a.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> b(boolean z) {
        super.b(z);
        return this;
    }

    @Override // com.b.a.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> b(com.b.a.d.b.e eVar) {
        super.b(eVar);
        return this;
    }

    @Override // com.b.a.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> b(int i, int i2) {
        super.b(i, i2);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.b.a.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> b(com.b.a.d.b<com.b.a.d.c.j> bVar) {
        super.b((com.b.a.d.b) bVar);
        return this;
    }

    @Override // com.b.a.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> b(com.b.a.d.c cVar) {
        super.b(cVar);
        return this;
    }

    @Override // com.b.a.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> b(ModelType modeltype) {
        super.b(modeltype);
        return this;
    }

    @Override // com.b.a.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> f() {
        return (a) super.f();
    }

    @Override // com.b.a.e
    public com.b.a.h.b.k<TranscodeType> a(ImageView imageView) {
        return super.a(imageView);
    }

    @Override // com.b.a.e
    void d() {
        b();
    }

    @Override // com.b.a.e
    void e() {
        a();
    }
}
