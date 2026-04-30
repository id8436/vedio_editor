package org.mortbay.io;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface Connection {
    void handle() throws IOException;

    boolean isIdle();
}
