package com.adobe.creativesdk.foundation.internal.analytics;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.a.a.a.ac;
import com.a.a.a.ae;
import com.a.a.a.r;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEvent;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.utils.Util;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSJob extends r {
    public static final int PRIORITY = 1;
    private String eventJSON;
    int retryCount;
    int sendStatus;

    public AdobeAnalyticsETSJob(String str) {
        super(new ac(1).a().b());
        this.eventJSON = null;
        this.sendStatus = 0;
        this.retryCount = 0;
        this.eventJSON = str;
    }

    @Override // com.a.a.a.r
    public void onAdded() {
    }

    @Override // com.a.a.a.r
    public void onRun() throws Throwable {
        this.retryCount++;
        AdobeNetworkHttpResponse adobeNetworkHttpResponseSendEvent = AdobeAnalyticsETSSession.getSharedSession().sendEvent(this.eventJSON);
        if (adobeNetworkHttpResponseSendEvent != null) {
            this.sendStatus = adobeNetworkHttpResponseSendEvent.getStatusCode();
            if (this.sendStatus == 400) {
                try {
                    AdobeAnalyticsEvent adobeAnalyticsEvent = new AdobeAnalyticsEvent("app.project_error");
                    adobeAnalyticsEvent.addEventParam(AdobeAnalyticsEventParams.Core.AdobeEventPropertyErrorDescription, this.eventJSON);
                    JSONObject jSONObject = new JSONObject(this.eventJSON);
                    jSONObject.put("project", "csdkandroid-service");
                    jSONObject.put("time", Util.getDateTimeForIngest());
                    jSONObject.put(AdobeAnalyticsETSEvent.ADOBE_ETS_EVENT_INGEST_TYPE, "dunamis");
                    if (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment() == AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentProductionUS) {
                        jSONObject.put(AdobeAnalyticsETSEvent.ADOBE_ETS_EVENT_ENVIRONMENT_TYPE, "prod");
                    } else {
                        jSONObject.put(AdobeAnalyticsETSEvent.ADOBE_ETS_EVENT_ENVIRONMENT_TYPE, "stage");
                    }
                    jSONObject.put("data", new JSONObject(adobeAnalyticsEvent.data));
                    AdobeAnalyticsETSSession.getSharedSession().sendEvent(this.eventJSON);
                } catch (Exception e2) {
                    AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), e2.getMessage());
                }
            }
        }
    }

    @Override // com.a.a.a.r
    protected void onCancel(int i, @Nullable Throwable th) {
    }

    @Override // com.a.a.a.r
    protected ae shouldReRunOnThrowable(@NonNull Throwable th, int i, int i2) {
        return ((this.sendStatus == 404 || this.sendStatus == 500) && this.retryCount < 3) ? new ae(true) : new ae(false);
    }
}
