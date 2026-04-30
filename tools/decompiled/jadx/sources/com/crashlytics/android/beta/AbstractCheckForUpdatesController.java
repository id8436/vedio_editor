package com.crashlytics.android.beta;

import android.annotation.SuppressLint;
import android.content.Context;
import c.a.a.a.a.b.k;
import c.a.a.a.a.b.s;
import c.a.a.a.a.b.z;
import c.a.a.a.a.e.m;
import c.a.a.a.a.f.c;
import c.a.a.a.a.g.f;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractCheckForUpdatesController implements UpdatesController {
    static final long LAST_UPDATE_CHECK_DEFAULT = 0;
    static final String LAST_UPDATE_CHECK_KEY = "last_update_check";
    private static final long MILLIS_PER_SECOND = 1000;
    private Beta beta;
    private f betaSettings;
    private BuildProperties buildProps;
    private Context context;
    private s currentTimeProvider;
    private final AtomicBoolean externallyReady;
    private m httpRequestFactory;
    private z idManager;
    private final AtomicBoolean initialized;
    private long lastCheckTimeMillis;
    private c preferenceStore;

    public AbstractCheckForUpdatesController() {
        this(false);
    }

    public AbstractCheckForUpdatesController(boolean z) {
        this.initialized = new AtomicBoolean();
        this.lastCheckTimeMillis = 0L;
        this.externallyReady = new AtomicBoolean(z);
    }

    @Override // com.crashlytics.android.beta.UpdatesController
    public void initialize(Context context, Beta beta, z zVar, f fVar, BuildProperties buildProperties, c cVar, s sVar, m mVar) {
        this.context = context;
        this.beta = beta;
        this.idManager = zVar;
        this.betaSettings = fVar;
        this.buildProps = buildProperties;
        this.preferenceStore = cVar;
        this.currentTimeProvider = sVar;
        this.httpRequestFactory = mVar;
        if (signalInitialized()) {
            checkForUpdates();
        }
    }

    protected boolean signalExternallyReady() {
        this.externallyReady.set(true);
        return this.initialized.get();
    }

    boolean signalInitialized() {
        this.initialized.set(true);
        return this.externallyReady.get();
    }

    @SuppressLint({"CommitPrefEdits"})
    protected void checkForUpdates() {
        synchronized (this.preferenceStore) {
            if (this.preferenceStore.a().contains(LAST_UPDATE_CHECK_KEY)) {
                this.preferenceStore.a(this.preferenceStore.b().remove(LAST_UPDATE_CHECK_KEY));
            }
        }
        long jA = this.currentTimeProvider.a();
        long j = ((long) this.betaSettings.f310b) * 1000;
        c.a.a.a.f.h().a(Beta.TAG, "Check for updates delay: " + j);
        c.a.a.a.f.h().a(Beta.TAG, "Check for updates last check time: " + getLastCheckTimeMillis());
        long lastCheckTimeMillis = j + getLastCheckTimeMillis();
        c.a.a.a.f.h().a(Beta.TAG, "Check for updates current time: " + jA + ", next check time: " + lastCheckTimeMillis);
        if (jA >= lastCheckTimeMillis) {
            try {
                performUpdateCheck();
                return;
            } finally {
                setLastCheckTimeMillis(jA);
            }
        }
        c.a.a.a.f.h().a(Beta.TAG, "Check for updates next check time was not passed");
    }

    private void performUpdateCheck() throws Throwable {
        c.a.a.a.f.h().a(Beta.TAG, "Performing update check");
        String strA = new k().a(this.context);
        new CheckForUpdatesRequest(this.beta, this.beta.getOverridenSpiEndpoint(), this.betaSettings.f309a, this.httpRequestFactory, new CheckForUpdatesResponseTransform()).invoke(strA, this.idManager.a(strA, this.buildProps.packageName), this.buildProps);
    }

    void setLastCheckTimeMillis(long j) {
        this.lastCheckTimeMillis = j;
    }

    long getLastCheckTimeMillis() {
        return this.lastCheckTimeMillis;
    }
}
