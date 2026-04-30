package com.google.gdata.data;

import com.google.gdata.util.ContentType;

/* JADX INFO: loaded from: classes3.dex */
public interface IOutOfLineContent extends IContent {
    String getEtag();

    ContentType getMimeType();

    String getUri();
}
