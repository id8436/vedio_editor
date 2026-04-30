package com.crashlytics.android.answers;

import android.content.Context;
import c.a.a.a.a.b.k;
import c.a.a.a.a.d.b;
import c.a.a.a.a.d.l;
import c.a.a.a.a.e.m;
import c.a.a.a.f;
import c.a.a.a.q;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.crashlytics.android.answers.SessionEvent;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes2.dex */
class EnabledSessionAnalyticsManagerStrategy extends b<SessionEvent> implements SessionAnalyticsManagerStrategy<SessionEvent> {
    k apiKey;
    boolean customEventsEnabled;
    EventFilter eventFilter;
    l filesSender;
    private final m httpRequestFactory;
    private final q kit;
    final SessionEventMetadata metadata;
    boolean predefinedEventsEnabled;

    public EnabledSessionAnalyticsManagerStrategy(q qVar, Context context, ScheduledExecutorService scheduledExecutorService, SessionAnalyticsFilesManager sessionAnalyticsFilesManager, m mVar, SessionEventMetadata sessionEventMetadata) {
        super(context, scheduledExecutorService, sessionAnalyticsFilesManager);
        this.eventFilter = new KeepAllEventFilter();
        this.apiKey = new k();
        this.customEventsEnabled = true;
        this.predefinedEventsEnabled = true;
        this.kit = qVar;
        this.httpRequestFactory = mVar;
        this.metadata = sessionEventMetadata;
    }

    @Override // c.a.a.a.a.d.j
    public l getFilesSender() {
        return this.filesSender;
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void setAnalyticsSettingsData(c.a.a.a.a.g.b bVar, String str) {
        this.filesSender = AnswersRetryFilesSender.build(new SessionAnalyticsFilesSender(this.kit, str, bVar.f286a, this.httpRequestFactory, this.apiKey.a(this.context)));
        ((SessionAnalyticsFilesManager) this.filesManager).setAnalyticsSettingsData(bVar);
        this.customEventsEnabled = bVar.f291f;
        f.h().a(Answers.TAG, "Custom event tracking " + (this.customEventsEnabled ? AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey : "disabled"));
        this.predefinedEventsEnabled = bVar.f292g;
        f.h().a(Answers.TAG, "Predefined event tracking " + (this.predefinedEventsEnabled ? AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey : "disabled"));
        if (bVar.h > 1) {
            f.h().a(Answers.TAG, "Event sampling enabled");
            this.eventFilter = new SamplingEventFilter(bVar.h);
        }
        configureRollover(bVar.f287b);
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void processEvent(SessionEvent.Builder builder) {
        SessionEvent sessionEventBuild = builder.build(this.metadata);
        if (!this.customEventsEnabled && SessionEvent.Type.CUSTOM.equals(sessionEventBuild.type)) {
            f.h().a(Answers.TAG, "Custom events tracking disabled - skipping event: " + sessionEventBuild);
            return;
        }
        if (!this.predefinedEventsEnabled && SessionEvent.Type.PREDEFINED.equals(sessionEventBuild.type)) {
            f.h().a(Answers.TAG, "Predefined events tracking disabled - skipping event: " + sessionEventBuild);
        } else if (this.eventFilter.skipEvent(sessionEventBuild)) {
            f.h().a(Answers.TAG, "Skipping filtered event: " + sessionEventBuild);
        } else {
            recordEvent(sessionEventBuild);
        }
    }
}
