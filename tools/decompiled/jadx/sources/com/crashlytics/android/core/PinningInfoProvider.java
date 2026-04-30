package com.crashlytics.android.core;

import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public interface PinningInfoProvider {
    String getKeyStorePassword();

    InputStream getKeyStoreStream();

    String[] getPins();
}
