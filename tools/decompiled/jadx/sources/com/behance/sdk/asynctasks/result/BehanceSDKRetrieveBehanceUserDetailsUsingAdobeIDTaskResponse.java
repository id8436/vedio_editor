package com.behance.sdk.asynctasks.result;

import com.behance.sdk.dto.search.BehanceSDKUserDTO;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse {
    private Exception exception;
    private BehanceSDKUserDTO userDTO;

    public Exception getException() {
        return this.exception;
    }

    public void setException(Exception exc) {
        this.exception = exc;
    }

    public BehanceSDKUserDTO getUserDTO() {
        return this.userDTO;
    }

    public void setUserDTO(BehanceSDKUserDTO behanceSDKUserDTO) {
        this.userDTO = behanceSDKUserDTO;
    }
}
