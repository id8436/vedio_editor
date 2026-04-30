package com.behance.sdk;

import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetCreativeFieldsListener {
    void onLoadCreativeFieldsFailure(Exception exc);

    void onLoadCreativeFieldsSuccess(List<BehanceSDKCreativeFieldDTO> list);
}
