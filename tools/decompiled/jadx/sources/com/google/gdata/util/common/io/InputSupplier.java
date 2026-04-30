package com.google.gdata.util.common.io;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface InputSupplier<T> {
    T getInput() throws IOException;
}
