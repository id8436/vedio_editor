package com.twitter.sdk.android.core.internal.scribe;

import java.io.File;
import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: EventsStorage.java */
/* JADX INFO: loaded from: classes3.dex */
public interface o {
    int a();

    List<File> a(int i);

    void a(String str) throws IOException;

    void a(List<File> list);

    void a(byte[] bArr) throws IOException;

    boolean a(int i, int i2);

    boolean b();

    List<File> c();
}
