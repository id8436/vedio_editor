package a;

/* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
/* JADX INFO: compiled from: Task.java */
/* JADX INFO: loaded from: classes.dex */
class q<TContinuationResult> implements j<TContinuationResult, Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ p f45a;

    q(p pVar) {
        this.f45a = pVar;
    }

    @Override // a.j
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Void a(l<TContinuationResult> lVar) {
        if ((this.f45a.f41a != null && this.f45a.f41a.a()) || lVar.c()) {
            this.f45a.f42b.c();
        } else if (lVar.d()) {
            this.f45a.f42b.b(lVar.f());
        } else {
            this.f45a.f42b.b(lVar.e());
        }
        return null;
    }
}
