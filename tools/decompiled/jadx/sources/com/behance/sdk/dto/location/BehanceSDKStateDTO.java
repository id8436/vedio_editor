package com.behance.sdk.dto.location;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKStateDTO extends BehanceSDKLocationDTO implements Serializable, Comparable<BehanceSDKStateDTO> {
    public static final String ALL_STATES_ID = "ALL_STATES_ID";
    public static final String ALL_STATES_NAME = "All States";
    private static final long serialVersionUID = 3513138659097266778L;

    @Override // java.lang.Comparable
    public int compareTo(BehanceSDKStateDTO behanceSDKStateDTO) {
        if (behanceSDKStateDTO == null || getDisplayName() == null || behanceSDKStateDTO.getDisplayName() == null) {
            return 0;
        }
        return getDisplayName().compareTo(behanceSDKStateDTO.getDisplayName());
    }

    public String toString() {
        return getDisplayName();
    }
}
