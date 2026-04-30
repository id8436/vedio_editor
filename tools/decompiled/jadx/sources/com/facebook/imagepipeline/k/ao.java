package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: JobScheduler.java */
/* JADX INFO: loaded from: classes2.dex */
/* synthetic */ class ao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f2627a = new int[ar.values().length];

    static {
        try {
            f2627a[ar.IDLE.ordinal()] = 1;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f2627a[ar.QUEUED.ordinal()] = 2;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f2627a[ar.RUNNING.ordinal()] = 3;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f2627a[ar.RUNNING_AND_PENDING.ordinal()] = 4;
        } catch (NoSuchFieldError e5) {
        }
    }
}
