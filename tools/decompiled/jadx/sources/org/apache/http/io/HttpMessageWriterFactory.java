package org.apache.http.io;

import org.apache.http.HttpMessage;

/* JADX INFO: loaded from: classes3.dex */
public interface HttpMessageWriterFactory<T extends HttpMessage> {
    HttpMessageWriter create(SessionOutputBuffer sessionOutputBuffer);
}
