package com.adobe.creativesdk.behance;

import com.behance.sdk.IBehanceSDKGetCreativeFieldsListener;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeBehanceGetCreativeFieldsListener extends IBehanceSDKGetCreativeFieldsListener {
    @Override // com.behance.sdk.IBehanceSDKGetCreativeFieldsListener
    void onLoadCreativeFieldsFailure(Exception exc);

    @Override // com.behance.sdk.IBehanceSDKGetCreativeFieldsListener
    void onLoadCreativeFieldsSuccess(List<BehanceSDKCreativeFieldDTO> list);
}
