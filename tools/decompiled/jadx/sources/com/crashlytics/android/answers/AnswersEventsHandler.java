package com.crashlytics.android.answers;

import android.content.Context;
import c.a.a.a.a.b.v;
import c.a.a.a.a.d.i;
import c.a.a.a.a.e.m;
import c.a.a.a.a.g.b;
import c.a.a.a.f;
import c.a.a.a.q;
import com.crashlytics.android.answers.SessionEvent;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes2.dex */
class AnswersEventsHandler implements i {
    private static final String EXECUTOR_SERVICE = "Answers Events Handler";
    private final Context context;
    final ScheduledExecutorService executor;
    private final AnswersFilesManagerProvider filesManagerProvider;
    private final q kit;
    private final SessionMetadataCollector metadataCollector;
    private final m requestFactory;
    SessionAnalyticsManagerStrategy strategy;

    public AnswersEventsHandler(q qVar, Context context, AnswersFilesManagerProvider answersFilesManagerProvider, SessionMetadataCollector sessionMetadataCollector, m mVar) {
        this(qVar, context, answersFilesManagerProvider, sessionMetadataCollector, mVar, v.b(EXECUTOR_SERVICE));
    }

    AnswersEventsHandler(q qVar, Context context, AnswersFilesManagerProvider answersFilesManagerProvider, SessionMetadataCollector sessionMetadataCollector, m mVar, ScheduledExecutorService scheduledExecutorService) {
        this.strategy = new DisabledSessionAnalyticsManagerStrategy();
        this.kit = qVar;
        this.context = context;
        this.filesManagerProvider = answersFilesManagerProvider;
        this.metadataCollector = sessionMetadataCollector;
        this.requestFactory = mVar;
        this.executor = scheduledExecutorService;
    }

    public void processEventAsync(SessionEvent.Builder builder) {
        processEvent(builder, false, false);
    }

    public void processEventAsyncAndFlush(SessionEvent.Builder builder) {
        processEvent(builder, false, true);
    }

    public void processEventSync(SessionEvent.Builder builder) {
        processEvent(builder, true, false);
    }

    public void setAnalyticsSettingsData(final b bVar, final String str) {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.setAnalyticsSettingsData(bVar, str);
                } catch (Exception e2) {
                    f.h().e(Answers.TAG, "Failed to set analytics settings data", e2);
                }
            }
        });
    }

    public void disable() {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SessionAnalyticsManagerStrategy sessionAnalyticsManagerStrategy = AnswersEventsHandler.this.strategy;
                    AnswersEventsHandler.this.strategy = new DisabledSessionAnalyticsManagerStrategy();
                    sessionAnalyticsManagerStrategy.deleteAllEvents();
                } catch (Exception e2) {
                    f.h().e(Answers.TAG, "Failed to disable events", e2);
                }
            }
        });
    }

    @Override // c.a.a.a.a.d.i
    public void onRollOver(String str) {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.sendEvents();
                } catch (Exception e2) {
                    f.h().e(Answers.TAG, "Failed to send events files", e2);
                }
            }
        });
    }

    public void enable() {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SessionEventMetadata metadata = AnswersEventsHandler.this.metadataCollector.getMetadata();
                    SessionAnalyticsFilesManager analyticsFilesManager = AnswersEventsHandler.this.filesManagerProvider.getAnalyticsFilesManager();
                    analyticsFilesManager.registerRollOverListener(AnswersEventsHandler.this);
                    AnswersEventsHandler.this.strategy = new EnabledSessionAnalyticsManagerStrategy(AnswersEventsHandler.this.kit, AnswersEventsHandler.this.context, AnswersEventsHandler.this.executor, analyticsFilesManager, AnswersEventsHandler.this.requestFactory, metadata);
                } catch (Exception e2) {
                    f.h().e(Answers.TAG, "Failed to enable events", e2);
                }
            }
        });
    }

    void processEvent(final SessionEvent.Builder builder, boolean z, final boolean z2) {
        Runnable runnable = new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.processEvent(builder);
                    if (z2) {
                        AnswersEventsHandler.this.strategy.rollFileOver();
                    }
                } catch (Exception e2) {
                    f.h().e(Answers.TAG, "Failed to process event", e2);
                }
            }
        };
        if (z) {
            executeSync(runnable);
        } else {
            executeAsync(runnable);
        }
    }

    private void executeSync(Runnable runnable) {
        try {
            this.executor.submit(runnable).get();
        } catch (Exception e2) {
            f.h().e(Answers.TAG, "Failed to run events task", e2);
        }
    }

    private void executeAsync(Runnable runnable) {
        try {
            this.executor.submit(runnable);
        } catch (Exception e2) {
            f.h().e(Answers.TAG, "Failed to submit events task", e2);
        }
    }
}
