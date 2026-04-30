package com.crashlytics.android.answers;

import android.content.Context;
import c.a.a.a.a.b.s;
import c.a.a.a.a.d.d;
import c.a.a.a.a.d.h;
import c.a.a.a.a.g.b;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
class SessionAnalyticsFilesManager extends d<SessionEvent> {
    private static final String SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION = ".tap";
    private static final String SESSION_ANALYTICS_TO_SEND_FILE_PREFIX = "sa";
    private b analyticsSettingsData;

    SessionAnalyticsFilesManager(Context context, SessionEventTransform sessionEventTransform, s sVar, h hVar) throws IOException {
        super(context, sessionEventTransform, sVar, hVar, 100);
    }

    @Override // c.a.a.a.a.d.d
    protected String generateUniqueRollOverFileName() {
        return SESSION_ANALYTICS_TO_SEND_FILE_PREFIX + d.ROLL_OVER_FILE_NAME_SEPARATOR + UUID.randomUUID().toString() + d.ROLL_OVER_FILE_NAME_SEPARATOR + this.currentTimeProvider.a() + SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION;
    }

    @Override // c.a.a.a.a.d.d
    protected int getMaxFilesToKeep() {
        return this.analyticsSettingsData == null ? super.getMaxFilesToKeep() : this.analyticsSettingsData.f290e;
    }

    @Override // c.a.a.a.a.d.d
    protected int getMaxByteSizePerFile() {
        return this.analyticsSettingsData == null ? super.getMaxByteSizePerFile() : this.analyticsSettingsData.f288c;
    }

    void setAnalyticsSettingsData(b bVar) {
        this.analyticsSettingsData = bVar;
    }
}
