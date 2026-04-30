package com.a.a.a.g.a;

/* JADX INFO: compiled from: CommandMessage.java */
/* JADX INFO: loaded from: classes.dex */
public class e extends com.a.a.a.g.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f483d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f484e;

    public e() {
        super(com.a.a.a.g.i.COMMAND);
    }

    @Override // com.a.a.a.g.b
    protected void a() {
        this.f483d = -1;
        this.f484e = null;
    }

    public int c() {
        return this.f483d;
    }

    public void a(int i) {
        this.f483d = i;
    }

    public Runnable d() {
        return this.f484e;
    }

    public String toString() {
        return "Command[" + this.f483d + "]";
    }
}
