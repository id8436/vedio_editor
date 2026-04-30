package com.google.gdata.util.common.io;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface LineProcessor<T> {
    T getResult();

    boolean processLine(String str) throws IOException;
}
