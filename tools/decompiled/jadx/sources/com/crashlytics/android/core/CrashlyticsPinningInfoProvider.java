package com.crashlytics.android.core;

import c.a.a.a.a.e.o;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
class CrashlyticsPinningInfoProvider implements o {
    private final PinningInfoProvider pinningInfo;

    public CrashlyticsPinningInfoProvider(PinningInfoProvider pinningInfoProvider) {
        this.pinningInfo = pinningInfoProvider;
    }

    @Override // c.a.a.a.a.e.o
    public InputStream getKeyStoreStream() {
        return this.pinningInfo.getKeyStoreStream();
    }

    @Override // c.a.a.a.a.e.o
    public String getKeyStorePassword() {
        return this.pinningInfo.getKeyStorePassword();
    }

    @Override // c.a.a.a.a.e.o
    public String[] getPins() {
        return this.pinningInfo.getPins();
    }

    @Override // c.a.a.a.a.e.o
    public long getPinCreationTimeInMillis() {
        return -1L;
    }
}
