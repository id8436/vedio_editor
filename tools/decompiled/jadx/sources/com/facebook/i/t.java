package com.facebook.i;

/* JADX INFO: compiled from: CallbackManagerImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public enum t {
    Login(0),
    Share(1),
    Message(2),
    Like(3),
    GameRequest(4),
    AppGroupCreate(5),
    AppGroupJoin(6),
    AppInvite(7);

    private final int i;

    t(int i) {
        this.i = i;
    }

    public int a() {
        return com.facebook.w.l() + this.i;
    }
}
