package com.behance.sdk;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKUpdateProfileListener {
    void onProfileUpdateFailure(List<Exception> list);

    void onProfileUpdateSuccess();
}
