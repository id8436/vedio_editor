package com.d.a.a.b;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;

/* JADX INFO: compiled from: InputDecorator.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class d implements Serializable {
    public abstract InputStream a(c cVar, InputStream inputStream) throws IOException;

    public abstract InputStream a(c cVar, byte[] bArr, int i, int i2) throws IOException;

    public abstract Reader a(c cVar, Reader reader) throws IOException;
}
