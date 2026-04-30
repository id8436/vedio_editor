package com.behance.sdk.datamanager.listeners.interfaces;

import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IFiltersDataManagerListener {
    void onCreativeFieldsLoadingFailure(Exception exc);

    void onCreativeFieldsLoadingSuccess(List<BehanceSDKCreativeFieldDTO> list);
}
