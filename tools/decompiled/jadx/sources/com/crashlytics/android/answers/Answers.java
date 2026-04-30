package com.crashlytics.android.answers;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import c.a.a.a.a;
import c.a.a.a.a.b.m;
import c.a.a.a.a.b.r;
import c.a.a.a.a.f.b;
import c.a.a.a.a.f.d;
import c.a.a.a.a.g.w;
import c.a.a.a.f;
import c.a.a.a.q;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class Answers extends q<Boolean> {
    static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    static final long FIRST_LAUNCH_INTERVAL_IN_MS = 3600000;
    static final String PREF_STORE_NAME = "settings";
    public static final String TAG = "Answers";
    SessionAnalyticsManager analyticsManager;
    private long installedAt;
    a lifecycleManager;
    AnswersPreferenceManager preferenceManager;
    private String versionCode;
    private String versionName;

    public static Answers getInstance() {
        return (Answers) f.a(Answers.class);
    }

    public void logCustom(CustomEvent customEvent) {
        if (customEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onCustom(customEvent);
        }
    }

    public void logPurchase(PurchaseEvent purchaseEvent) {
        if (purchaseEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(purchaseEvent);
        }
    }

    public void logLogin(LoginEvent loginEvent) {
        if (loginEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(loginEvent);
        }
    }

    public void logShare(ShareEvent shareEvent) {
        if (shareEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(shareEvent);
        }
    }

    public void logInvite(InviteEvent inviteEvent) {
        if (inviteEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(inviteEvent);
        }
    }

    public void logSignUp(SignUpEvent signUpEvent) {
        if (signUpEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(signUpEvent);
        }
    }

    public void logLevelStart(LevelStartEvent levelStartEvent) {
        if (levelStartEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(levelStartEvent);
        }
    }

    public void logLevelEnd(LevelEndEvent levelEndEvent) {
        if (levelEndEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(levelEndEvent);
        }
    }

    public void logAddToCart(AddToCartEvent addToCartEvent) {
        if (addToCartEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(addToCartEvent);
        }
    }

    public void logStartCheckout(StartCheckoutEvent startCheckoutEvent) {
        if (startCheckoutEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(startCheckoutEvent);
        }
    }

    public void logRating(RatingEvent ratingEvent) {
        if (ratingEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(ratingEvent);
        }
    }

    public void logContentView(ContentViewEvent contentViewEvent) {
        if (contentViewEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(contentViewEvent);
        }
    }

    public void logSearch(SearchEvent searchEvent) {
        if (searchEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(searchEvent);
        }
    }

    public void onException(r rVar) {
        if (this.analyticsManager != null) {
            this.analyticsManager.onError(rVar.a());
        }
    }

    public void onException(c.a.a.a.a.b.q qVar) {
        if (this.analyticsManager != null) {
            this.analyticsManager.onCrash(qVar.a());
        }
    }

    @Override // c.a.a.a.q
    @SuppressLint({"NewApi"})
    protected boolean onPreExecute() {
        boolean z = false;
        try {
            Context context = getContext();
            this.preferenceManager = new AnswersPreferenceManager(new d(context, PREF_STORE_NAME));
            this.lifecycleManager = new a(context);
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            this.versionCode = Integer.toString(packageInfo.versionCode);
            this.versionName = packageInfo.versionName == null ? "0.0" : packageInfo.versionName;
            if (Build.VERSION.SDK_INT >= 9) {
                this.installedAt = packageInfo.firstInstallTime;
            } else {
                this.installedAt = new File(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).sourceDir).lastModified();
            }
            initializeSessionAnalytics(context);
            z = true;
            return true;
        } catch (Exception e2) {
            f.h().e(TAG, "Error retrieving app properties", e2);
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // c.a.a.a.q
    public Boolean doInBackground() {
        boolean z;
        try {
            w wVarB = c.a.a.a.a.g.q.a().b();
            if (wVarB == null) {
                f.h().e(TAG, "Failed to retrieve settings");
                z = false;
            } else if (wVarB.f352d.f322d) {
                f.h().a(TAG, "Analytics collection enabled");
                this.analyticsManager.setAnalyticsSettingsData(wVarB.f353e, getOverridenSpiEndpoint());
                z = true;
            } else {
                f.h().a(TAG, "Analytics collection disabled");
                this.lifecycleManager.a();
                this.analyticsManager.disable();
                z = false;
            }
            return z;
        } catch (Exception e2) {
            f.h().e(TAG, "Error dealing with settings", e2);
            return false;
        }
    }

    @Override // c.a.a.a.q
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:answers";
    }

    @Override // c.a.a.a.q
    public String getVersion() {
        return "1.3.2.79";
    }

    private void initializeSessionAnalytics(Context context) {
        try {
            AnswersEventsHandler answersEventsHandler = new AnswersEventsHandler(this, context, new AnswersFilesManagerProvider(context, new b(this)), new SessionMetadataCollector(context, getIdManager(), this.versionCode, this.versionName), new c.a.a.a.a.e.b(f.h()));
            answersEventsHandler.enable();
            this.analyticsManager = new SessionAnalyticsManager(answersEventsHandler);
            this.lifecycleManager.a(new AnswersLifecycleCallbacks(this.analyticsManager));
            if (isFirstLaunch(this.installedAt)) {
                f.h().a(TAG, "New app install detected");
                this.analyticsManager.onInstall();
                this.preferenceManager.setAnalyticsLaunched();
            }
        } catch (Exception e2) {
            f.h().e(TAG, "Failed to initialize", e2);
        }
    }

    String getOverridenSpiEndpoint() {
        return m.b(getContext(), CRASHLYTICS_API_ENDPOINT);
    }

    boolean isFirstLaunch(long j) {
        return !this.preferenceManager.hasAnalyticsLaunched() && installedRecently(j);
    }

    boolean installedRecently(long j) {
        return System.currentTimeMillis() - j < 3600000;
    }
}
