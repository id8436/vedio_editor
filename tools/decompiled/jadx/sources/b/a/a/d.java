package b.a.a;

/* JADX INFO: compiled from: EventBus.java */
/* JADX INFO: loaded from: classes.dex */
class d extends ThreadLocal<f> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f68a;

    d(c cVar) {
        this.f68a = cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.lang.ThreadLocal
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f initialValue() {
        return new f();
    }
}
