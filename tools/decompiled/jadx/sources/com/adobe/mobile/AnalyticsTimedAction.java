package com.adobe.mobile;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class AnalyticsTimedAction {
    protected long adjustedStartTime;
    protected Map<String, Object> contextData;
    protected int databaseID;
    protected long startTime;

    protected AnalyticsTimedAction(Map<String, Object> map, long j, long j2, int i) {
        this.contextData = map;
        this.databaseID = i;
        this.startTime = j;
        this.adjustedStartTime = j2;
    }
}
