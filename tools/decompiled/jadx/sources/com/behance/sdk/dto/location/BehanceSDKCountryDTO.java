package com.behance.sdk.dto.location;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCountryDTO extends BehanceSDKLocationDTO implements Serializable, Comparable<BehanceSDKCountryDTO> {
    public static final List<String> COUNTRY_CODES_FOR_LOAD_STATES = new ArrayList(2);
    public static final String WORLD_WIDE_COUNTRY_ID = "WORLD_WIDE_COUNTRY_ID";
    private static final long serialVersionUID = 8229080965935852144L;

    static {
        COUNTRY_CODES_FOR_LOAD_STATES.add("US");
        COUNTRY_CODES_FOR_LOAD_STATES.add("CA");
    }

    @Override // java.lang.Comparable
    public int compareTo(BehanceSDKCountryDTO behanceSDKCountryDTO) {
        if (behanceSDKCountryDTO == null || getDisplayName() == null || behanceSDKCountryDTO.getDisplayName() == null) {
            return 0;
        }
        return getDisplayName().compareTo(behanceSDKCountryDTO.getDisplayName());
    }

    public String toString() {
        return getDisplayName();
    }
}
