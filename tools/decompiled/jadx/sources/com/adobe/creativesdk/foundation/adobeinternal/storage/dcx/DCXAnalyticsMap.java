package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import java.io.Serializable;
import java.util.Calendar;

/* JADX INFO: compiled from: AdobeDCXUtils.java */
/* JADX INFO: loaded from: classes.dex */
class DCXAnalyticsMap implements Serializable {
    private String component;
    private String errorDesc;
    private String errorExtraDesc;
    private String method;
    private Calendar calendar = Calendar.getInstance();
    private Long recordedTime = Long.valueOf(this.calendar.getTimeInMillis());

    public DCXAnalyticsMap(String str, String str2, String str3, String str4) {
        this.component = str;
        this.method = str2;
        this.errorDesc = str3;
        this.errorExtraDesc = str4;
    }

    public void recordTime() {
        this.recordedTime = Long.valueOf(this.calendar.getTimeInMillis());
    }

    public boolean isSame(DCXAnalyticsMap dCXAnalyticsMap) {
        return this.component.equals(dCXAnalyticsMap.component) && this.method.equals(dCXAnalyticsMap.method) && this.errorExtraDesc.equals(dCXAnalyticsMap.errorExtraDesc);
    }

    public boolean shouldUpdateCache(Long l) {
        return Long.valueOf(this.calendar.getTimeInMillis()).longValue() - this.recordedTime.longValue() >= l.longValue();
    }
}
