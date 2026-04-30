package com.a.a.a.g.a;

/* JADX INFO: compiled from: JobConsumerIdleMessage.java */
/* JADX INFO: loaded from: classes.dex */
public class g extends com.a.a.a.g.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f486d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f487e;

    public g() {
        super(com.a.a.a.g.i.JOB_CONSUMER_IDLE);
    }

    @Override // com.a.a.a.g.b
    protected void a() {
        this.f486d = null;
    }

    public long c() {
        return this.f487e;
    }

    public Object d() {
        return this.f486d;
    }

    public void a(Object obj) {
        this.f486d = obj;
    }

    public void a(long j) {
        this.f487e = j;
    }
}
