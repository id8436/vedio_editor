package com.crashlytics.android.core;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageInfo;
import android.widget.ScrollView;
import android.widget.TextView;
import c.a.a.a.a.b.k;
import c.a.a.a.a.b.r;
import c.a.a.a.a.b.v;
import c.a.a.a.a.c.n;
import c.a.a.a.a.c.o;
import c.a.a.a.a.c.s;
import c.a.a.a.a.c.y;
import c.a.a.a.a.c.z;
import c.a.a.a.a.e.b;
import c.a.a.a.a.e.d;
import c.a.a.a.a.e.e;
import c.a.a.a.a.e.m;
import c.a.a.a.a.g.p;
import c.a.a.a.a.g.t;
import c.a.a.a.a.g.w;
import c.a.a.a.f;
import c.a.a.a.q;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.core.internal.CrashEventDataProvider;
import com.crashlytics.android.core.internal.models.SessionEventData;
import java.io.File;
import java.net.URL;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.HttpsURLConnection;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
@n(a = {CrashEventDataProvider.class})
public class CrashlyticsCore extends q<Void> {
    static final float CLS_DEFAULT_PROCESS_DELAY = 1.0f;
    static final String COLLECT_CUSTOM_KEYS = "com.crashlytics.CollectCustomKeys";
    static final String COLLECT_CUSTOM_LOGS = "com.crashlytics.CollectCustomLogs";
    static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    static final String CRASHLYTICS_REQUIRE_BUILD_ID = "com.crashlytics.RequireBuildId";
    static final boolean CRASHLYTICS_REQUIRE_BUILD_ID_DEFAULT = true;
    static final int DEFAULT_MAIN_HANDLER_TIMEOUT_SEC = 4;
    private static final String INITIALIZATION_MARKER_FILE_NAME = "initialization_marker";
    static final int MAX_ATTRIBUTES = 64;
    static final int MAX_ATTRIBUTE_SIZE = 1024;
    private static final String PREF_ALWAYS_SEND_REPORTS_KEY = "always_send_reports_opt_in";
    private static final boolean SHOULD_PROMPT_BEFORE_SENDING_REPORTS_DEFAULT = false;
    public static final String TAG = "CrashlyticsCore";
    private final ConcurrentHashMap<String, String> attributes;
    private String buildId;
    private float delay;
    private boolean disabled;
    private CrashlyticsExecutorServiceWrapper executorServiceWrapper;
    private CrashEventDataProvider externalCrashEventDataProvider;
    private CrashlyticsUncaughtExceptionHandler handler;
    private m httpRequestFactory;
    private File initializationMarkerFile;
    private String installerPackageName;
    private CrashlyticsListener listener;
    private String packageName;
    private final PinningInfoProvider pinningInfo;
    private File sdkDir;
    private final long startTime;
    private String userEmail;
    private String userId;
    private String userName;
    private String versionCode;
    private String versionName;

    public class Builder {
        private float delay = -1.0f;
        private boolean disabled = false;
        private CrashlyticsListener listener;
        private PinningInfoProvider pinningInfoProvider;

        public Builder delay(float f2) {
            if (f2 <= 0.0f) {
                throw new IllegalArgumentException("delay must be greater than 0");
            }
            if (this.delay > 0.0f) {
                throw new IllegalStateException("delay already set.");
            }
            this.delay = f2;
            return this;
        }

        public Builder listener(CrashlyticsListener crashlyticsListener) {
            if (crashlyticsListener == null) {
                throw new IllegalArgumentException("listener must not be null.");
            }
            if (this.listener != null) {
                throw new IllegalStateException("listener already set.");
            }
            this.listener = crashlyticsListener;
            return this;
        }

        @Deprecated
        public Builder pinningInfo(PinningInfoProvider pinningInfoProvider) {
            if (pinningInfoProvider == null) {
                throw new IllegalArgumentException("pinningInfoProvider must not be null.");
            }
            if (this.pinningInfoProvider != null) {
                throw new IllegalStateException("pinningInfoProvider already set.");
            }
            this.pinningInfoProvider = pinningInfoProvider;
            return this;
        }

        public Builder disabled(boolean z) {
            this.disabled = z;
            return this;
        }

        public CrashlyticsCore build() {
            if (this.delay < 0.0f) {
                this.delay = 1.0f;
            }
            return new CrashlyticsCore(this.delay, this.listener, this.pinningInfoProvider, this.disabled);
        }
    }

    public CrashlyticsCore() {
        this(1.0f, null, null, false);
    }

    CrashlyticsCore(float f2, CrashlyticsListener crashlyticsListener, PinningInfoProvider pinningInfoProvider, boolean z) {
        this(f2, crashlyticsListener, pinningInfoProvider, z, v.a("Crashlytics Exception Handler"));
    }

    CrashlyticsCore(float f2, CrashlyticsListener crashlyticsListener, PinningInfoProvider pinningInfoProvider, boolean z, ExecutorService executorService) {
        this.userId = null;
        this.userEmail = null;
        this.userName = null;
        this.attributes = new ConcurrentHashMap<>();
        this.startTime = System.currentTimeMillis();
        this.delay = f2;
        this.listener = crashlyticsListener;
        this.pinningInfo = pinningInfoProvider;
        this.disabled = z;
        this.executorServiceWrapper = new CrashlyticsExecutorServiceWrapper(executorService);
    }

    @Override // c.a.a.a.q
    protected boolean onPreExecute() {
        return onPreExecute(super.getContext());
    }

    boolean onPreExecute(Context context) {
        String strA;
        boolean zDidPreviousInitializationComplete;
        if (!this.disabled && (strA = new k().a(context)) != null) {
            f.h().c(TAG, "Initializing Crashlytics " + getVersion());
            this.initializationMarkerFile = new File(getSdkDirectory(), INITIALIZATION_MARKER_FILE_NAME);
            try {
                try {
                    setAndValidateKitProperties(context, strA);
                    try {
                        SessionDataWriter sessionDataWriter = new SessionDataWriter(getContext(), this.buildId, getPackageName());
                        f.h().a(TAG, "Installing exception handler...");
                        this.handler = new CrashlyticsUncaughtExceptionHandler(Thread.getDefaultUncaughtExceptionHandler(), this.listener, this.executorServiceWrapper, getIdManager(), sessionDataWriter, this);
                        zDidPreviousInitializationComplete = didPreviousInitializationComplete();
                    } catch (Exception e2) {
                        e = e2;
                        zDidPreviousInitializationComplete = false;
                    }
                    try {
                        this.handler.openSession();
                        Thread.setDefaultUncaughtExceptionHandler(this.handler);
                        f.h().a(TAG, "Successfully installed exception handler.");
                    } catch (Exception e3) {
                        e = e3;
                        f.h().e(TAG, "There was a problem installing the exception handler.", e);
                    }
                    if (zDidPreviousInitializationComplete && c.a.a.a.a.b.m.n(context)) {
                        finishInitSynchronously();
                        return false;
                    }
                    return true;
                } catch (Exception e4) {
                    f.h().e(TAG, "Crashlytics was not started due to an exception during initialization", e4);
                    return false;
                }
            } catch (CrashlyticsMissingDependencyException e5) {
                throw new z(e5);
            }
        }
        return false;
    }

    private void setAndValidateKitProperties(Context context, String str) {
        CrashlyticsPinningInfoProvider crashlyticsPinningInfoProvider = this.pinningInfo != null ? new CrashlyticsPinningInfoProvider(this.pinningInfo) : null;
        this.httpRequestFactory = new b(f.h());
        this.httpRequestFactory.a(crashlyticsPinningInfoProvider);
        try {
            this.packageName = context.getPackageName();
            this.installerPackageName = getIdManager().h();
            f.h().a(TAG, "Installer package name is: " + this.installerPackageName);
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(this.packageName, 0);
            this.versionCode = Integer.toString(packageInfo.versionCode);
            this.versionName = packageInfo.versionName == null ? "0.0" : packageInfo.versionName;
            this.buildId = c.a.a.a.a.b.m.m(context);
        } catch (Exception e2) {
            f.h().e(TAG, "Error setting up app properties", e2);
        }
        getIdManager().o();
        getBuildIdValidator(this.buildId, isRequiringBuildId(context)).validate(str, this.packageName);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c.a.a.a.q
    public Void doInBackground() {
        w wVarB;
        markInitializationStarted();
        this.handler.cleanInvalidTempFiles();
        boolean z = true;
        try {
            try {
                wVarB = c.a.a.a.a.g.q.a().b();
            } catch (Exception e2) {
                f.h().e(TAG, "Problem encountered during Crashlytics initialization.", e2);
            } finally {
                markInitializationComplete();
            }
        } catch (Exception e3) {
            f.h().e(TAG, "Error dealing with settings", e3);
            z = true;
        }
        if (wVarB == null) {
            f.h().d(TAG, "Received null settings, skipping initialization!");
            return null;
        }
        if (wVarB.f352d.f321c) {
            z = false;
            this.handler.finalizeSessions();
            CreateReportSpiCall createReportSpiCall = getCreateReportSpiCall(wVarB);
            if (createReportSpiCall != null) {
                new ReportUploader(createReportSpiCall).uploadReports(this.delay);
            } else {
                f.h().d(TAG, "Unable to create a call to upload reports.");
            }
        }
        if (z) {
            f.h().a(TAG, "Crash reporting disabled.");
        }
        return null;
    }

    @Override // c.a.a.a.q
    public String getIdentifier() {
        return "com.crashlytics.sdk.android.crashlytics-core";
    }

    @Override // c.a.a.a.q
    public String getVersion() {
        return "2.3.5.79";
    }

    public static CrashlyticsCore getInstance() {
        return (CrashlyticsCore) f.a(CrashlyticsCore.class);
    }

    public PinningInfoProvider getPinningInfoProvider() {
        if (this.disabled) {
            return null;
        }
        return this.pinningInfo;
    }

    public void logException(Throwable th) {
        if (!this.disabled && ensureFabricWithCalled("prior to logging exceptions.")) {
            if (th == null) {
                f.h().a(5, TAG, "Crashlytics is ignoring a request to log a null exception.");
            } else {
                this.handler.writeNonFatalException(Thread.currentThread(), th);
            }
        }
    }

    public void log(String str) {
        doLog(3, TAG, str);
    }

    private void doLog(int i, String str, String str2) {
        if (!this.disabled && ensureFabricWithCalled("prior to logging messages.")) {
            this.handler.writeToLog(System.currentTimeMillis() - this.startTime, formatLogMessage(i, str, str2));
        }
    }

    public void log(int i, String str, String str2) {
        doLog(i, str, str2);
        f.h().a(i, "" + str, "" + str2, true);
    }

    public void setUserIdentifier(String str) {
        if (!this.disabled) {
            this.userId = sanitizeAttribute(str);
            this.handler.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setUserName(String str) {
        if (!this.disabled) {
            this.userName = sanitizeAttribute(str);
            this.handler.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setUserEmail(String str) {
        if (!this.disabled) {
            this.userEmail = sanitizeAttribute(str);
            this.handler.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setString(String str, String str2) {
        if (!this.disabled) {
            if (str == null) {
                if (getContext() != null && c.a.a.a.a.b.m.i(getContext())) {
                    throw new IllegalArgumentException("Custom attribute key must not be null.");
                }
                f.h().e(TAG, "Attempting to set custom attribute with null key, ignoring.", null);
                return;
            }
            String strSanitizeAttribute = sanitizeAttribute(str);
            if (this.attributes.size() < 64 || this.attributes.containsKey(strSanitizeAttribute)) {
                this.attributes.put(strSanitizeAttribute, str2 == null ? "" : sanitizeAttribute(str2));
                this.handler.cacheKeyData(this.attributes);
            } else {
                f.h().a(TAG, "Exceeded maximum number of custom attributes (64)");
            }
        }
    }

    public void setBool(String str, boolean z) {
        setString(str, Boolean.toString(z));
    }

    public void setDouble(String str, double d2) {
        setString(str, Double.toString(d2));
    }

    public void setFloat(String str, float f2) {
        setString(str, Float.toString(f2));
    }

    public void setInt(String str, int i) {
        setString(str, Integer.toString(i));
    }

    public void setLong(String str, long j) {
        setString(str, Long.toString(j));
    }

    public void crash() {
        new CrashTest().indexOutOfBounds();
    }

    public boolean verifyPinning(URL url) {
        try {
            return internalVerifyPinning(url);
        } catch (Exception e2) {
            f.h().e(TAG, "Could not verify SSL pinning", e2);
            return false;
        }
    }

    private void finishInitSynchronously() {
        s<Void> sVar = new s<Void>() { // from class: com.crashlytics.android.core.CrashlyticsCore.1
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                return CrashlyticsCore.this.doInBackground();
            }

            @Override // c.a.a.a.a.c.v, c.a.a.a.a.c.u
            public o getPriority() {
                return o.IMMEDIATE;
            }
        };
        Iterator<y> it = getDependencies().iterator();
        while (it.hasNext()) {
            sVar.addDependency(it.next());
        }
        Future futureSubmit = getFabric().f().submit(sVar);
        f.h().a(TAG, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            futureSubmit.get(4L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            f.h().e(TAG, "Crashlytics was interrupted during initialization.", e2);
        } catch (ExecutionException e3) {
            f.h().e(TAG, "Problem encountered during Crashlytics initialization.", e3);
        } catch (TimeoutException e4) {
            f.h().e(TAG, "Crashlytics timed out during initialization.", e4);
        }
    }

    @Deprecated
    public synchronized void setListener(CrashlyticsListener crashlyticsListener) {
        f.h().d(TAG, "Use of setListener is deprecated.");
        if (crashlyticsListener == null) {
            throw new IllegalArgumentException("listener must not be null.");
        }
        this.listener = crashlyticsListener;
    }

    static void recordLoggedExceptionEvent(String str) {
        Answers answers = (Answers) f.a(Answers.class);
        if (answers != null) {
            answers.onException(new r(str));
        }
    }

    static void recordFatalExceptionEvent(String str) {
        Answers answers = (Answers) f.a(Answers.class);
        if (answers != null) {
            answers.onException(new c.a.a.a.a.b.q(str));
        }
    }

    Map<String, String> getAttributes() {
        return Collections.unmodifiableMap(this.attributes);
    }

    BuildIdValidator getBuildIdValidator(String str, boolean z) {
        return new BuildIdValidator(str, z);
    }

    String getPackageName() {
        return this.packageName;
    }

    String getInstallerPackageName() {
        return this.installerPackageName;
    }

    String getVersionName() {
        return this.versionName;
    }

    String getVersionCode() {
        return this.versionCode;
    }

    String getOverridenSpiEndpoint() {
        return c.a.a.a.a.b.m.b(getContext(), CRASHLYTICS_API_ENDPOINT);
    }

    String getBuildId() {
        return this.buildId;
    }

    CrashlyticsUncaughtExceptionHandler getHandler() {
        return this.handler;
    }

    String getUserIdentifier() {
        if (getIdManager().a()) {
            return this.userId;
        }
        return null;
    }

    String getUserEmail() {
        if (getIdManager().a()) {
            return this.userEmail;
        }
        return null;
    }

    String getUserName() {
        if (getIdManager().a()) {
            return this.userName;
        }
        return null;
    }

    void markInitializationStarted() {
        this.executorServiceWrapper.executeSyncLoggingException(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsCore.2
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CrashlyticsCore.this.initializationMarkerFile.createNewFile();
                f.h().a(CrashlyticsCore.TAG, "Initialization marker file created.");
                return null;
            }
        });
    }

    void markInitializationComplete() {
        this.executorServiceWrapper.executeAsync(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsCore.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                try {
                    boolean zDelete = CrashlyticsCore.this.initializationMarkerFile.delete();
                    f.h().a(CrashlyticsCore.TAG, "Initialization marker file removed: " + zDelete);
                    return Boolean.valueOf(zDelete);
                } catch (Exception e2) {
                    f.h().e(CrashlyticsCore.TAG, "Problem encountered deleting Crashlytics initialization marker.", e2);
                    return false;
                }
            }
        });
    }

    boolean didPreviousInitializationComplete() {
        return ((Boolean) this.executorServiceWrapper.executeSyncLoggingException(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsCore.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                return Boolean.valueOf(CrashlyticsCore.this.initializationMarkerFile.exists());
            }
        })).booleanValue();
    }

    void setExternalCrashEventDataProvider(CrashEventDataProvider crashEventDataProvider) {
        this.externalCrashEventDataProvider = crashEventDataProvider;
    }

    SessionEventData getExternalCrashEventData() {
        if (this.externalCrashEventDataProvider == null) {
            return null;
        }
        return this.externalCrashEventDataProvider.getCrashEventData();
    }

    boolean internalVerifyPinning(URL url) {
        if (getPinningInfoProvider() == null) {
            return false;
        }
        e eVarA = this.httpRequestFactory.a(d.GET, url.toString());
        ((HttpsURLConnection) eVarA.a()).setInstanceFollowRedirects(false);
        eVarA.b();
        return true;
    }

    File getSdkDirectory() {
        if (this.sdkDir == null) {
            this.sdkDir = new c.a.a.a.a.f.b(this).a();
        }
        return this.sdkDir;
    }

    boolean shouldPromptUserBeforeSendingCrashReports() {
        return ((Boolean) c.a.a.a.a.g.q.a().a(new t<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsCore.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // c.a.a.a.a.g.t
            public Boolean usingSettings(w wVar) {
                if (wVar.f352d.f319a) {
                    return Boolean.valueOf(CrashlyticsCore.this.shouldSendReportsWithoutPrompting() ? false : true);
                }
                return false;
            }
        }, false)).booleanValue();
    }

    boolean shouldSendReportsWithoutPrompting() {
        return new c.a.a.a.a.f.d(this).a().getBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, false);
    }

    @SuppressLint({"CommitPrefEdits"})
    void setShouldSendUserReportsWithoutPrompting(boolean z) {
        c.a.a.a.a.f.d dVar = new c.a.a.a.a.f.d(this);
        dVar.a(dVar.b().putBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, z));
    }

    boolean canSendWithUserApproval() {
        return ((Boolean) c.a.a.a.a.g.q.a().a(new t<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsCore.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // c.a.a.a.a.g.t
            public Boolean usingSettings(w wVar) {
                boolean sendDecisionFromUser = true;
                Activity activityB = CrashlyticsCore.this.getFabric().b();
                if (activityB != null && !activityB.isFinishing() && CrashlyticsCore.this.shouldPromptUserBeforeSendingCrashReports()) {
                    sendDecisionFromUser = CrashlyticsCore.this.getSendDecisionFromUser(activityB, wVar.f351c);
                }
                return Boolean.valueOf(sendDecisionFromUser);
            }
        }, true)).booleanValue();
    }

    CreateReportSpiCall getCreateReportSpiCall(w wVar) {
        if (wVar != null) {
            return new DefaultCreateReportSpiCall(this, getOverridenSpiEndpoint(), wVar.f349a.f306d, this.httpRequestFactory);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getSendDecisionFromUser(final Activity activity, final c.a.a.a.a.g.o oVar) {
        final DialogStringResolver dialogStringResolver = new DialogStringResolver(activity, oVar);
        final OptInLatch optInLatch = new OptInLatch();
        activity.runOnUiThread(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsCore.7
            @Override // java.lang.Runnable
            public void run() {
                AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.crashlytics.android.core.CrashlyticsCore.7.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        optInLatch.setOptIn(true);
                        dialogInterface.dismiss();
                    }
                };
                float f2 = activity.getResources().getDisplayMetrics().density;
                int iDipsToPixels = CrashlyticsCore.this.dipsToPixels(f2, 5);
                TextView textView = new TextView(activity);
                textView.setAutoLinkMask(15);
                textView.setText(dialogStringResolver.getMessage());
                textView.setTextAppearance(activity, R.style.TextAppearance.Medium);
                textView.setPadding(iDipsToPixels, iDipsToPixels, iDipsToPixels, iDipsToPixels);
                textView.setFocusable(false);
                ScrollView scrollView = new ScrollView(activity);
                scrollView.setPadding(CrashlyticsCore.this.dipsToPixels(f2, 14), CrashlyticsCore.this.dipsToPixels(f2, 2), CrashlyticsCore.this.dipsToPixels(f2, 10), CrashlyticsCore.this.dipsToPixels(f2, 12));
                scrollView.addView(textView);
                builder.setView(scrollView).setTitle(dialogStringResolver.getTitle()).setCancelable(false).setNeutralButton(dialogStringResolver.getSendButtonTitle(), onClickListener);
                if (oVar.f330d) {
                    builder.setNegativeButton(dialogStringResolver.getCancelButtonTitle(), new DialogInterface.OnClickListener() { // from class: com.crashlytics.android.core.CrashlyticsCore.7.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            optInLatch.setOptIn(false);
                            dialogInterface.dismiss();
                        }
                    });
                }
                if (oVar.f332f) {
                    builder.setPositiveButton(dialogStringResolver.getAlwaysSendButtonTitle(), new DialogInterface.OnClickListener() { // from class: com.crashlytics.android.core.CrashlyticsCore.7.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            CrashlyticsCore.this.setShouldSendUserReportsWithoutPrompting(true);
                            optInLatch.setOptIn(true);
                            dialogInterface.dismiss();
                        }
                    });
                }
                builder.show();
            }
        });
        f.h().a(TAG, "Waiting for user opt-in.");
        optInLatch.await();
        return optInLatch.getOptIn();
    }

    p getSessionSettingsData() {
        w wVarB = c.a.a.a.a.g.q.a().b();
        if (wVarB == null) {
            return null;
        }
        return wVarB.f350b;
    }

    private boolean isRequiringBuildId(Context context) {
        return c.a.a.a.a.b.m.a(context, CRASHLYTICS_REQUIRE_BUILD_ID, true);
    }

    private static String formatLogMessage(int i, String str, String str2) {
        return c.a.a.a.a.b.m.b(i) + URIUtil.SLASH + str + " " + str2;
    }

    private static boolean ensureFabricWithCalled(String str) {
        CrashlyticsCore crashlyticsCore = getInstance();
        if (crashlyticsCore != null && crashlyticsCore.handler != null) {
            return true;
        }
        f.h().e(TAG, "Crashlytics must be initialized by calling Fabric.with(Context) " + str, null);
        return false;
    }

    private static String sanitizeAttribute(String str) {
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.length() > 1024) {
                return strTrim.substring(0, 1024);
            }
            return strTrim;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int dipsToPixels(float f2, int i) {
        return (int) (i * f2);
    }

    /* JADX INFO: loaded from: classes2.dex */
    class OptInLatch {
        private final CountDownLatch latch;
        private boolean send;

        private OptInLatch() {
            this.send = false;
            this.latch = new CountDownLatch(1);
        }

        void setOptIn(boolean z) {
            this.send = z;
            this.latch.countDown();
        }

        boolean getOptIn() {
            return this.send;
        }

        void await() {
            try {
                this.latch.await();
            } catch (InterruptedException e2) {
            }
        }
    }
}
