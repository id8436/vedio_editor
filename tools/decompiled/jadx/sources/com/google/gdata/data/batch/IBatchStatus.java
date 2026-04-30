package com.google.gdata.data.batch;

import com.google.gdata.util.ContentType;

/* JADX INFO: loaded from: classes3.dex */
public interface IBatchStatus {
    int getCode();

    String getContent();

    ContentType getContentType();

    String getReason();
}
