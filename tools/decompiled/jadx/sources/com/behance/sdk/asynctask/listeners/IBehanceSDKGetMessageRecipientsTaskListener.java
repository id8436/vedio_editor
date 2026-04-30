package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetMessageRecipientsTaskListener {
    void onGetMessageRecipientSuggestionsTaskCancel();

    void onGetMessageRecipientSuggestionsTaskFailure(Exception exc);

    void onGetMessageRecipientSuggestionsTaskSuccess(List<BehanceSDKUserDTO> list);
}
