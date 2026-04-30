package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.dto.BehanceSDKAlbumDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetAlbumsTaskListener {
    void onGetAlbumsTaskFailure(Exception exc);

    void onGetAlbumsTaskSuccess(List<BehanceSDKAlbumDTO> list);
}
