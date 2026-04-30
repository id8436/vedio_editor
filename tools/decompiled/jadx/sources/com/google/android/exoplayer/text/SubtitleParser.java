package com.google.android.exoplayer.text;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public interface SubtitleParser {
    boolean canParse(String str);

    Subtitle parse(InputStream inputStream, String str, long j) throws IOException;
}
