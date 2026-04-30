package com.google.android.exoplayer.util;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public interface ManifestParser<T> {
    T parse(InputStream inputStream, String str, String str2, Uri uri) throws IOException;
}
