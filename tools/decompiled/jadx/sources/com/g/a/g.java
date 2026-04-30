package com.g.a;

/* JADX INFO: compiled from: Keyframe.java */
/* JADX INFO: loaded from: classes2.dex */
class g extends f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f3069d;

    g(float f2, float f3) {
        this.f3065a = f2;
        this.f3069d = f3;
        this.f3066b = Float.TYPE;
        this.f3067c = true;
    }

    g(float f2) {
        this.f3065a = f2;
        this.f3066b = Float.TYPE;
    }

    public float f() {
        return this.f3069d;
    }

    @Override // com.g.a.f
    public Object b() {
        return Float.valueOf(this.f3069d);
    }

    @Override // com.g.a.f
    public void a(Object obj) {
        if (obj != null && obj.getClass() == Float.class) {
            this.f3069d = ((Float) obj).floatValue();
            this.f3067c = true;
        }
    }

    @Override // com.g.a.f
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public g clone() {
        g gVar = new g(c(), this.f3069d);
        gVar.a(d());
        return gVar;
    }
}
