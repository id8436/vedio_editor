package com.behance.sdk.asynctasks;

import com.behance.sdk.dto.BehanceSDKAlbumDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetAlbumsTaskResult {
    private List<BehanceSDKAlbumDTO> albumsList;
    private Exception exception;
    private boolean exceptionOccurred;

    public Exception getException() {
        return this.exception;
    }

    public void setException(Exception exc) {
        this.exception = exc;
    }

    public boolean isExceptionOccurred() {
        return this.exceptionOccurred;
    }

    public void setExceptionOccurred(boolean z) {
        this.exceptionOccurred = z;
    }

    public List<BehanceSDKAlbumDTO> getAlbumsList() {
        return this.albumsList;
    }

    public void setAlbumsList(List<BehanceSDKAlbumDTO> list) {
        this.albumsList = list;
    }
}
