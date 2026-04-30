package c.a.a.a;

import c.a.a.a.a.b.ak;
import c.a.a.a.a.c.z;

/* JADX INFO: compiled from: InitializationTask.java */
/* JADX INFO: loaded from: classes.dex */
class p<Result> extends c.a.a.a.a.c.p<Void, Void, Result> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final q<Result> f391a;

    public p(q<Result> qVar) {
        this.f391a = qVar;
    }

    @Override // c.a.a.a.a.c.a
    protected void a() {
        super.a();
        ak akVarA = a("onPreExecute");
        try {
            try {
                boolean zOnPreExecute = this.f391a.onPreExecute();
                akVarA.b();
                if (!zOnPreExecute) {
                    a(true);
                }
            } catch (z e2) {
                throw e2;
            } catch (Exception e3) {
                f.h().e("Fabric", "Failure onPreExecute()", e3);
                akVarA.b();
                a(true);
            }
        } catch (Throwable th) {
            akVarA.b();
            a(true);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c.a.a.a.a.c.a
    public Result a(Void... voidArr) {
        ak akVarA = a("doInBackground");
        Result resultDoInBackground = null;
        if (!d()) {
            resultDoInBackground = this.f391a.doInBackground();
        }
        akVarA.b();
        return resultDoInBackground;
    }

    @Override // c.a.a.a.a.c.a
    protected void a(Result result) {
        this.f391a.onPostExecute(result);
        this.f391a.initializationCallback.a(result);
    }

    @Override // c.a.a.a.a.c.a
    protected void b(Result result) {
        this.f391a.onCancelled(result);
        this.f391a.initializationCallback.a(new o(this.f391a.getIdentifier() + " Initialization was cancelled"));
    }

    @Override // c.a.a.a.a.c.p, c.a.a.a.a.c.u
    public c.a.a.a.a.c.o getPriority() {
        return c.a.a.a.a.c.o.HIGH;
    }

    private ak a(String str) {
        ak akVar = new ak(this.f391a.getIdentifier() + "." + str, "KitInitialization");
        akVar.a();
        return akVar;
    }
}
