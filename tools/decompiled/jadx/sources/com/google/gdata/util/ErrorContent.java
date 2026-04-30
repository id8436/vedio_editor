package com.google.gdata.util;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public interface ErrorContent {
    String getCodeName();

    String getDebugInfo();

    String getDomainName();

    String getExtendedHelp();

    String getInternalReason();

    String getLocation();

    LocationType getLocationType();

    String getSendReport();

    public enum LocationType {
        XPATH,
        HEADER,
        OTHER;

        private static final Map<String, LocationType> VALUE_MAP;

        static {
            HashMap map = new HashMap();
            for (LocationType locationType : values()) {
                map.put(locationType.toString(), locationType);
            }
            VALUE_MAP = Collections.unmodifiableMap(map);
        }

        public static LocationType fromString(String str) {
            return VALUE_MAP.get(str);
        }

        @Override // java.lang.Enum
        public String toString() {
            return name().toLowerCase();
        }
    }
}
