package com.adobe.creativesdk.foundation.internal.analytics;

import com.a.a.a.c.c;
import com.a.a.a.v;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.utils.Util;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSJobManager {
    private static AdobeAnalyticsETSJobManager sharedJobManager = null;
    private v jobManager;
    private Queue<JSONObject> jobQueue;
    private AtomicInteger jobsAddedPerTimer;
    private TimerTask timerTask = null;
    private Timer timer = null;

    private AdobeAnalyticsETSJobManager() {
        this.jobManager = null;
        c cVar = new c(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext());
        cVar.a("AnalyticsJobManager");
        this.jobManager = new v(cVar.a());
    }

    public static AdobeAnalyticsETSJobManager getSharedInstance() {
        if (sharedJobManager == null) {
            synchronized (AdobeAnalyticsETSJobManager.class) {
                if (sharedJobManager == null) {
                    sharedJobManager = new AdobeAnalyticsETSJobManager();
                    sharedJobManager.initializeJobQueue();
                    sharedJobManager.initializeTimerTask();
                }
            }
        }
        return sharedJobManager;
    }

    public void enableAnalyticsReporting() {
        AdobeAnalyticsETSSession.getSharedSession().enableAnalyticsReporting();
    }

    public void disableAnalyticsReporting() {
        AdobeAnalyticsETSSession.getSharedSession().disableAnalyticsReporting();
        if (this.timer != null) {
            this.timer.cancel();
            this.timer = null;
        }
    }

    private void initializeJobQueue() {
        this.jobQueue = new LinkedList();
    }

    private void initializeTimerTask() {
        this.timer = new Timer();
        this.jobsAddedPerTimer = new AtomicInteger(0);
        this.timerTask = new TimerTask() { // from class: com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSJobManager.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                AdobeAnalyticsETSJobManager.this.jobsAddedPerTimer.set(0);
                AdobeAnalyticsETSJobManager.this.sendEvents();
            }
        };
        this.timer.schedule(this.timerTask, 5000L, 10000L);
    }

    private JSONObject getEventDataObject() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("time", Util.getDateTimeForIngest());
        jSONObject.put(AdobeAnalyticsETSEvent.ADOBE_ETS_EVENT_INGEST_TYPE, "dunamis");
        if (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment() == AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentProductionUS) {
            jSONObject.put(AdobeAnalyticsETSEvent.ADOBE_ETS_EVENT_ENVIRONMENT_TYPE, "prod");
        } else {
            jSONObject.put(AdobeAnalyticsETSEvent.ADOBE_ETS_EVENT_ENVIRONMENT_TYPE, "stage");
        }
        return jSONObject;
    }

    public synchronized void addNewEvent(AdobeAnalyticsETSEvent adobeAnalyticsETSEvent) {
        Map<String, Object> map = adobeAnalyticsETSEvent.data;
        this.jobsAddedPerTimer.incrementAndGet();
        new JSONObject();
        try {
            JSONObject eventDataObject = getEventDataObject();
            if (map.get("project") != null) {
                eventDataObject.put("project", map.get("project"));
                map.remove("project");
                if (map.size() > 0) {
                    eventDataObject.put("data", new JSONObject(map));
                    this.jobQueue.add(eventDataObject);
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void sendEvents() {
        if (this.jobQueue != null && !this.jobQueue.isEmpty()) {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; !this.jobQueue.isEmpty() && i < 100; i++) {
                jSONArray.put(this.jobQueue.remove());
            }
            try {
                jSONObject.put("events", jSONArray);
                this.jobManager.a(new AdobeAnalyticsETSJob(jSONObject.toString()));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }
}
