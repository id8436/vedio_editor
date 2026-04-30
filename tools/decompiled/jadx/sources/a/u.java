package a;

/* JADX INFO: compiled from: UnobservedErrorNotifier.java */
/* JADX INFO: loaded from: classes.dex */
class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private l<?> f50a;

    public u(l<?> lVar) {
        this.f50a = lVar;
    }

    protected void finalize() throws Throwable {
        s sVarA;
        try {
            l<?> lVar = this.f50a;
            if (lVar != null && (sVarA = l.a()) != null) {
                sVarA.a(lVar, new v(lVar.f()));
            }
        } finally {
            super.finalize();
        }
    }

    public void a() {
        this.f50a = null;
    }
}
