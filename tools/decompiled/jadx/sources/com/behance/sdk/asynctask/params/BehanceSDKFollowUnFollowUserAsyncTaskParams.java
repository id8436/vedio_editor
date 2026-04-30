package com.behance.sdk.asynctask.params;

import com.behance.sdk.dto.search.BehanceSDKUserDTO;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKFollowUnFollowUserAsyncTaskParams extends BehanceSDKAbstractTaskParams {
    private boolean followUser;
    private int pos;
    private BehanceSDKUserDTO userDTO;

    public boolean isFollowUser() {
        return this.followUser;
    }

    public void setFollowUser(boolean z) {
        this.followUser = z;
    }

    public BehanceSDKUserDTO getUserDTO() {
        return this.userDTO;
    }

    public void setUserDTO(BehanceSDKUserDTO behanceSDKUserDTO) {
        this.userDTO = behanceSDKUserDTO;
    }

    public int getPos() {
        return this.pos;
    }

    public void setPos(int i) {
        this.pos = i;
    }
}
