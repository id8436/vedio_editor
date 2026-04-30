package com.adobe.creativesdk.behance;

import com.behance.sdk.IBehanceSDKUpdateProfileListener;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeBehanceUpdateProfileListener extends IBehanceSDKUpdateProfileListener {
    @Override // com.behance.sdk.IBehanceSDKUpdateProfileListener
    void onProfileUpdateFailure(List<Exception> list);

    @Override // com.behance.sdk.IBehanceSDKUpdateProfileListener
    void onProfileUpdateSuccess();
}
