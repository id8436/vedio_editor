package com.crashlytics.android.core;

import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
interface Report {
    Map<String, String> getCustomHeaders();

    File getFile();

    String getFileName();

    String getIdentifier();

    boolean remove();
}
