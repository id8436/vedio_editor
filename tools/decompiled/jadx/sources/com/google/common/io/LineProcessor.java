package com.google.common.io;

import com.google.common.annotations.Beta;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public interface LineProcessor<T> {
    T getResult();

    boolean processLine(String str) throws IOException;
}
