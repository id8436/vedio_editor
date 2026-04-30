package e;

/* JADX INFO: compiled from: AsyncTimeout.java */
/* JADX INFO: loaded from: classes3.dex */
final class d extends Thread {
    d() {
        super("Okio Watchdog");
        setDaemon(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x001a, code lost:
    
        r0.a();
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r3 = this;
        L0:
            java.lang.Class<e.a> r1 = e.a.class
            monitor-enter(r1)     // Catch: java.lang.InterruptedException -> Le
            e.a r0 = e.a.e()     // Catch: java.lang.Throwable -> Lb
            if (r0 != 0) goto L10
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb
            goto L0
        Lb:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb
            throw r0     // Catch: java.lang.InterruptedException -> Le
        Le:
            r0 = move-exception
            goto L0
        L10:
            e.a r2 = e.a.f4700b     // Catch: java.lang.Throwable -> Lb
            if (r0 != r2) goto L19
            r0 = 0
            e.a.f4700b = r0     // Catch: java.lang.Throwable -> Lb
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb
            return
        L19:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb
            r0.a()     // Catch: java.lang.InterruptedException -> Le
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.d.run():void");
    }
}
