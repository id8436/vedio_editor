package com.adobe.customextractor.DataSource;

/* JADX INFO: loaded from: classes2.dex */
public interface TransferListener {
    void onBytesTransferred(int i);

    void onTransferEnd();

    void onTransferStart();
}
