package com.behance.sdk.dto.location;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCityDTO extends BehanceSDKLocationDTO implements Serializable, Comparable<BehanceSDKCityDTO> {
    public static final String ALL_CITIES_ID = "ALL_CITIES_ID";
    public static final String ALL_CITY_NAME = "All Cities";
    private static final long serialVersionUID = -4491829944206768894L;

    @Override // java.lang.Comparable
    public int compareTo(BehanceSDKCityDTO behanceSDKCityDTO) {
        if (behanceSDKCityDTO == null || getDisplayName() == null || behanceSDKCityDTO.getDisplayName() == null) {
            return 0;
        }
        return getDisplayName().compareTo(behanceSDKCityDTO.getDisplayName());
    }

    public String toString() {
        return getDisplayName();
    }
}
