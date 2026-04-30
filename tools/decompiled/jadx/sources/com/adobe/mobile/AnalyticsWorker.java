package com.adobe.mobile;

import android.content.ContentValues;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.os.Process;
import com.adobe.mobile.AbstractDatabaseBacking;
import com.adobe.mobile.AbstractHitDatabase;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
final class AnalyticsWorker extends AbstractHitDatabase {
    protected static final String ANALYTICS_DB_CREATE_STATEMENT = "CREATE TABLE IF NOT EXISTS HITS (ID INTEGER PRIMARY KEY AUTOINCREMENT, URL TEXT, TIMESTAMP INTEGER)";
    protected static final String ANALYTICS_FILENAME = "ADBMobileDataCache.sqlite";
    private static final int CONNECTION_TIMEOUT_MSEC = 5000;
    private static final int TIMESTAMP_DISABLED_WAIT_THRESHOLD = 60;
    private static String baseURL;
    protected SQLiteStatement _preparedInsertStatement = null;
    private static final SecureRandom randomGen = new SecureRandom();
    private static AnalyticsWorker _instance = null;
    private static final Object _instanceMutex = new Object();
    private static volatile boolean analyticsGetBaseURL_pred = true;

    public static AnalyticsWorker sharedInstance() {
        AnalyticsWorker analyticsWorker;
        synchronized (_instanceMutex) {
            if (_instance == null) {
                _instance = new AnalyticsWorker();
            }
            analyticsWorker = _instance;
        }
        return analyticsWorker;
    }

    protected AnalyticsWorker() {
        this.fileName = ANALYTICS_FILENAME;
        this.logPrefix = "Analytics";
        this.dbCreateStatement = ANALYTICS_DB_CREATE_STATEMENT;
        this.lastHitTimestamp = 0L;
        initDatabaseBacking(new File(StaticMethods.getCacheDirectory(), this.fileName));
        this.numberOfUnsentHits = getTrackingQueueSize();
    }

    protected void queue(String str, long j) {
        MobileConfig mobileConfig = MobileConfig.getInstance();
        if (mobileConfig == null) {
            StaticMethods.logErrorFormat("Analytics - Cannot send hit, MobileConfig is null (this really shouldn't happen)", new Object[0]);
            return;
        }
        if (mobileConfig.getPrivacyStatus() == MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_OUT) {
            StaticMethods.logDebugFormat("Analytics - Ignoring hit due to privacy status being opted out", new Object[0]);
            return;
        }
        synchronized (this.dbMutex) {
            try {
                this._preparedInsertStatement.bindString(1, str);
                this._preparedInsertStatement.bindLong(2, j);
                this._preparedInsertStatement.execute();
                StaticMethods.updateLastKnownTimestamp(Long.valueOf(j));
                this.numberOfUnsentHits++;
                this._preparedInsertStatement.clearBindings();
            } catch (SQLException e2) {
                StaticMethods.logErrorFormat("Analytics - Unable to insert url (%s)", str);
                resetDatabase(e2);
            } catch (Exception e3) {
                StaticMethods.logErrorFormat("Analytics - Unknown error while inserting url (%s)", str);
                resetDatabase(e3);
            }
        }
        kick(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getBaseURL() {
        if (analyticsGetBaseURL_pred) {
            analyticsGetBaseURL_pred = false;
            baseURL = (MobileConfig.getInstance().getSSL() ? "https://" : "http://") + MobileConfig.getInstance().getTrackingServer() + "/b/ss/" + StaticMethods.URLEncode(MobileConfig.getInstance().getReportSuiteIds()) + URIUtil.SLASH + MobileConfig.getInstance().getAnalyticsResponseType() + "/JAVA-4.8.2-AN/s";
            StaticMethods.logDebugFormat("Analytics - Setting base request URL(%s)", baseURL);
        }
        return baseURL;
    }

    @Override // com.adobe.mobile.AbstractDatabaseBacking
    protected void preMigrate() {
        File file = new File(StaticMethods.getCacheDirectory() + this.fileName);
        File file2 = new File(StaticMethods.getCacheDirectory(), this.fileName);
        if (file.exists() && !file2.exists()) {
            try {
                if (!file.renameTo(file2)) {
                    StaticMethods.logWarningFormat("Analytics - Unable to migrate old hits db, creating new hits db (move file returned false)", new Object[0]);
                }
            } catch (Exception e2) {
                StaticMethods.logWarningFormat("Analytics - Unable to migrate old hits db, creating new hits db (%s)", e2.getLocalizedMessage());
            }
        }
    }

    @Override // com.adobe.mobile.AbstractDatabaseBacking
    protected void prepareStatements() {
        try {
            this._preparedInsertStatement = this.database.compileStatement("INSERT INTO HITS (URL, TIMESTAMP) VALUES (?, ?)");
        } catch (SQLException e2) {
            StaticMethods.logErrorFormat("Analytics - Unable to create database due to a sql error (%s)", e2.getLocalizedMessage());
        } catch (NullPointerException e3) {
            StaticMethods.logErrorFormat("Analytics - Unable to create database due to an invalid path (%s)", e3.getLocalizedMessage());
        } catch (Exception e4) {
            StaticMethods.logErrorFormat("Analytics - Unable to create database due to an unexpected error (%s)", e4.getLocalizedMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0090: MOVE (r9 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:33:0x0090 */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008b A[Catch: all -> 0x006c, TryCatch #6 {, blocks: (B:27:0x0083, B:13:0x0052, B:19:0x0068, B:12:0x004f, B:30:0x008b, B:31:0x008e), top: B:46:0x0004 }] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8, types: [com.adobe.mobile.AbstractHitDatabase$Hit] */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // com.adobe.mobile.AbstractHitDatabase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.adobe.mobile.AbstractHitDatabase.Hit selectOldestHit() {
        /*
            r11 = this;
            r9 = 0
            java.lang.Object r10 = r11.dbMutex
            monitor-enter(r10)
            android.database.sqlite.SQLiteDatabase r0 = r11.database     // Catch: android.database.SQLException -> L54 java.lang.Exception -> L6f java.lang.Throwable -> L88
            java.lang.String r1 = "HITS"
            r2 = 3
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: android.database.SQLException -> L54 java.lang.Exception -> L6f java.lang.Throwable -> L88
            r3 = 0
            java.lang.String r4 = "ID"
            r2[r3] = r4     // Catch: android.database.SQLException -> L54 java.lang.Exception -> L6f java.lang.Throwable -> L88
            r3 = 1
            java.lang.String r4 = "URL"
            r2[r3] = r4     // Catch: android.database.SQLException -> L54 java.lang.Exception -> L6f java.lang.Throwable -> L88
            r3 = 2
            java.lang.String r4 = "TIMESTAMP"
            r2[r3] = r4     // Catch: android.database.SQLException -> L54 java.lang.Exception -> L6f java.lang.Throwable -> L88
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            java.lang.String r7 = "ID ASC"
            java.lang.String r8 = "1"
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: android.database.SQLException -> L54 java.lang.Exception -> L6f java.lang.Throwable -> L88
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L92 android.database.SQLException -> L99
            if (r0 == 0) goto L4d
            com.adobe.mobile.AbstractHitDatabase$Hit r2 = new com.adobe.mobile.AbstractHitDatabase$Hit     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L92 android.database.SQLException -> L99
            r2.<init>()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L92 android.database.SQLException -> L99
            r0 = 0
            java.lang.String r0 = r1.getString(r0)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 android.database.SQLException -> L9b
            r2.identifier = r0     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 android.database.SQLException -> L9b
            r0 = 1
            java.lang.String r0 = r1.getString(r0)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 android.database.SQLException -> L9b
            r2.urlFragment = r0     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 android.database.SQLException -> L9b
            r0 = 2
            long r4 = r1.getLong(r0)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 android.database.SQLException -> L9b
            r2.timestamp = r4     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 android.database.SQLException -> L9b
            r9 = r2
        L4d:
            if (r1 == 0) goto L52
            r1.close()     // Catch: java.lang.Throwable -> L6c
        L52:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L6c
            return r9
        L54:
            r0 = move-exception
            r1 = r9
        L56:
            java.lang.String r2 = "Analytics - Unable to read from database (%s)"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L8f
            r4 = 0
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L8f
            r3[r4] = r0     // Catch: java.lang.Throwable -> L8f
            com.adobe.mobile.StaticMethods.logErrorFormat(r2, r3)     // Catch: java.lang.Throwable -> L8f
            if (r1 == 0) goto L52
            r1.close()     // Catch: java.lang.Throwable -> L6c
            goto L52
        L6c:
            r0 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L6c
            throw r0
        L6f:
            r0 = move-exception
            r2 = r9
        L71:
            java.lang.String r1 = "Analytics - Unknown error reading from database (%s)"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L88
            r4 = 0
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L88
            r3[r4] = r0     // Catch: java.lang.Throwable -> L88
            com.adobe.mobile.StaticMethods.logErrorFormat(r1, r3)     // Catch: java.lang.Throwable -> L88
            if (r9 == 0) goto L9e
            r9.close()     // Catch: java.lang.Throwable -> L6c
            r9 = r2
            goto L52
        L88:
            r0 = move-exception
        L89:
            if (r9 == 0) goto L8e
            r9.close()     // Catch: java.lang.Throwable -> L6c
        L8e:
            throw r0     // Catch: java.lang.Throwable -> L6c
        L8f:
            r0 = move-exception
            r9 = r1
            goto L89
        L92:
            r0 = move-exception
            r2 = r9
            r9 = r1
            goto L71
        L96:
            r0 = move-exception
            r9 = r1
            goto L71
        L99:
            r0 = move-exception
            goto L56
        L9b:
            r0 = move-exception
            r9 = r2
            goto L56
        L9e:
            r9 = r2
            goto L52
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.mobile.AnalyticsWorker.selectOldestHit():com.adobe.mobile.AbstractHitDatabase$Hit");
    }

    @Override // com.adobe.mobile.AbstractHitDatabase
    protected final Runnable workerThread() {
        return new Runnable() { // from class: com.adobe.mobile.AnalyticsWorker.1
            @Override // java.lang.Runnable
            public void run() {
                AbstractHitDatabase.Hit hitSelectOldestHit;
                AnalyticsWorker analyticsWorkerSharedInstance = AnalyticsWorker.sharedInstance();
                Process.setThreadPriority(10);
                HashMap map = new HashMap();
                map.put("Accept-Language", StaticMethods.getDefaultAcceptLanguage());
                map.put("User-Agent", StaticMethods.getDefaultUserAgent());
                while (MobileConfig.getInstance().getPrivacyStatus() == MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_IN && MobileConfig.getInstance().networkConnectivity() && (hitSelectOldestHit = analyticsWorkerSharedInstance.selectOldestHit()) != null) {
                    if (MobileConfig.getInstance().getOfflineTrackingEnabled()) {
                        if (hitSelectOldestHit.timestamp - analyticsWorkerSharedInstance.lastHitTimestamp < 0) {
                            long j = analyticsWorkerSharedInstance.lastHitTimestamp + 1;
                            hitSelectOldestHit.urlFragment = hitSelectOldestHit.urlFragment.replaceFirst("&ts=" + Long.toString(hitSelectOldestHit.timestamp), "&ts=" + Long.toString(j));
                            StaticMethods.logDebugFormat("Analytics - Adjusting out of order hit timestamp(%d->%d)", Long.valueOf(hitSelectOldestHit.timestamp), Long.valueOf(j));
                            hitSelectOldestHit.timestamp = j;
                        }
                    } else if (hitSelectOldestHit.timestamp < StaticMethods.getTimeSince1970() - 60) {
                        try {
                            analyticsWorkerSharedInstance.deleteHit(hitSelectOldestHit.identifier);
                        } catch (AbstractDatabaseBacking.CorruptedDatabaseException e2) {
                            AnalyticsWorker.sharedInstance().resetDatabase(e2);
                        }
                    }
                    byte[] bArrRetrieveAnalyticsRequestData = RequestHandler.retrieveAnalyticsRequestData(AnalyticsWorker.getBaseURL() + AnalyticsWorker.randomGen.nextInt(100000000), hitSelectOldestHit.urlFragment.startsWith("ndh") ? hitSelectOldestHit.urlFragment : hitSelectOldestHit.urlFragment.substring(hitSelectOldestHit.urlFragment.indexOf(63) + 1), map, 5000, AnalyticsWorker.this.logPrefix);
                    if (bArrRetrieveAnalyticsRequestData == null) {
                        for (int i = 0; i < 30; i++) {
                            try {
                                if (MobileConfig.getInstance().networkConnectivity()) {
                                    Thread.sleep(1000L);
                                }
                            } catch (Exception e3) {
                                StaticMethods.logWarningFormat("Analytics - Background Thread Interrupted(%s)", e3.getMessage());
                            }
                        }
                    } else if (bArrRetrieveAnalyticsRequestData.length > 1) {
                        try {
                            analyticsWorkerSharedInstance.deleteHit(hitSelectOldestHit.identifier);
                            analyticsWorkerSharedInstance.lastHitTimestamp = hitSelectOldestHit.timestamp;
                            final JSONObject jSONObject = new JSONObject(new String(bArrRetrieveAnalyticsRequestData, "UTF-8"));
                            StaticMethods.getAudienceExecutor().execute(new Runnable() { // from class: com.adobe.mobile.AnalyticsWorker.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AudienceManagerWorker.processJsonResponse(jSONObject);
                                }
                            });
                        } catch (AbstractDatabaseBacking.CorruptedDatabaseException e4) {
                            AnalyticsWorker.sharedInstance().resetDatabase(e4);
                        } catch (UnsupportedEncodingException e5) {
                            StaticMethods.logWarningFormat("Audience Manager - Unable to decode server response (%s)", e5.getLocalizedMessage());
                        } catch (JSONException e6) {
                            StaticMethods.logWarningFormat("Audience Manager - Unable to parse JSON data (%s)", e6.getLocalizedMessage());
                        }
                    } else {
                        try {
                            analyticsWorkerSharedInstance.deleteHit(hitSelectOldestHit.identifier);
                            analyticsWorkerSharedInstance.lastHitTimestamp = hitSelectOldestHit.timestamp;
                        } catch (AbstractDatabaseBacking.CorruptedDatabaseException e7) {
                            AnalyticsWorker.sharedInstance().resetDatabase(e7);
                        }
                    }
                }
                analyticsWorkerSharedInstance.bgThreadActive = false;
            }
        };
    }

    protected void kickWithReferrerData(Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            ReferrerHandler.setReferrerProcessed(true);
            kick(false);
            return;
        }
        AbstractHitDatabase.Hit hitSelectOldestHit = selectOldestHit();
        if (hitSelectOldestHit != null && hitSelectOldestHit.urlFragment != null) {
            hitSelectOldestHit.urlFragment = StaticMethods.appendContextData(map, hitSelectOldestHit.urlFragment);
            updateHitInDatabase(hitSelectOldestHit);
            ReferrerHandler.setReferrerProcessed(true);
        }
        kick(false);
    }

    protected void updateHitInDatabase(AbstractHitDatabase.Hit hit) {
        synchronized (this.dbMutex) {
            try {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("URL", hit.urlFragment);
                    this.database.update("HITS", contentValues, "id=" + hit.identifier, null);
                } catch (Exception e2) {
                    StaticMethods.logErrorFormat("Analytics - Unknown error updating url in database (%s)", e2.getMessage());
                }
            } catch (SQLException e3) {
                StaticMethods.logErrorFormat("Analytics - Unable to update url in database (%s)", e3.getMessage());
            }
        }
    }
}
