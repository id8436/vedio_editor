package com.adobe.mobile;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.os.Process;
import com.adobe.mobile.AbstractDatabaseBacking;
import com.adobe.mobile.AbstractHitDatabase;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
final class ThirdPartyQueue extends AbstractHitDatabase {
    protected static final String THIRDPARTY_DB_CREATE_STATEMENT = "CREATE TABLE IF NOT EXISTS HITS (ID INTEGER PRIMARY KEY AUTOINCREMENT, URL TEXT, POSTBODY TEXT, POSTTYPE TEXT, TIMESTAMP INTEGER, TIMEOUT INTEGER)";
    protected static final String THIRDPARTY_FILENAME = "ADBMobile3rdPartyDataCache.sqlite";
    protected static final String THIRDPARTY_LOG_PREFIX = "External Callback";
    private static final int THIRDPARTY_TIMEOUT_COOLDOWN_TIMER = 30;
    private static final int THIRDPARTY_TIMESTAMP_DISABLED_WAIT_THRESHOLD = 60;
    private static final String _hitsNumberOfRowsToReturn = "1";
    private static final String _hitsOrderBy = "ID ASC";
    private static final String _hitsTableName = "HITS";
    private SQLiteStatement _preparedInsertStatement = null;
    private static final String[] _hitsSelectedColumns = {"ID", "URL", "POSTBODY", "POSTTYPE", "TIMESTAMP", "TIMEOUT"};
    private static ThirdPartyQueue _instance = null;
    private static final Object _instanceMutex = new Object();

    protected static ThirdPartyQueue sharedInstance() {
        ThirdPartyQueue thirdPartyQueue;
        synchronized (_instanceMutex) {
            if (_instance == null) {
                _instance = new ThirdPartyQueue();
            }
            thirdPartyQueue = _instance;
        }
        return thirdPartyQueue;
    }

    private ThirdPartyQueue() {
        this.fileName = THIRDPARTY_FILENAME;
        this.logPrefix = THIRDPARTY_LOG_PREFIX;
        this.dbCreateStatement = THIRDPARTY_DB_CREATE_STATEMENT;
        this.lastHitTimestamp = 0L;
        initDatabaseBacking(new File(StaticMethods.getCacheDirectory(), this.fileName));
        this.numberOfUnsentHits = getTrackingQueueSize();
    }

    protected void queue(String str, String str2, String str3, long j, long j2) {
        MobileConfig mobileConfig = MobileConfig.getInstance();
        if (mobileConfig == null) {
            StaticMethods.logErrorFormat("%s - Cannot send hit, MobileConfig is null (this really shouldn't happen)", this.logPrefix);
            return;
        }
        if (mobileConfig.getPrivacyStatus() == MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_OUT) {
            StaticMethods.logDebugFormat("%s - Ignoring hit due to privacy status being opted out", this.logPrefix);
            return;
        }
        synchronized (this.dbMutex) {
            try {
                this._preparedInsertStatement.bindString(1, str);
                if (str2 != null && str2.length() > 0) {
                    this._preparedInsertStatement.bindString(2, str2);
                } else {
                    this._preparedInsertStatement.bindNull(2);
                }
                if (str3 != null && str3.length() > 0) {
                    this._preparedInsertStatement.bindString(3, str3);
                } else {
                    this._preparedInsertStatement.bindNull(3);
                }
                this._preparedInsertStatement.bindLong(4, j);
                this._preparedInsertStatement.bindLong(5, j2);
                this._preparedInsertStatement.execute();
                this.numberOfUnsentHits++;
                this._preparedInsertStatement.clearBindings();
            } catch (SQLException e2) {
                StaticMethods.logErrorFormat("%s - Unable to insert url (%s)", this.logPrefix, str);
                resetDatabase(e2);
            } catch (Exception e3) {
                StaticMethods.logErrorFormat("%s - Unknown error while inserting url (%s)", this.logPrefix, str);
                resetDatabase(e3);
            }
        }
        kick(false);
    }

    @Override // com.adobe.mobile.AbstractDatabaseBacking
    protected void prepareStatements() {
        try {
            this._preparedInsertStatement = this.database.compileStatement("INSERT INTO HITS (URL, POSTBODY, POSTTYPE, TIMESTAMP, TIMEOUT) VALUES (?, ?, ?, ?, ?)");
        } catch (SQLException e2) {
            StaticMethods.logErrorFormat("%s - Unable to create database due to a sql error (%s)", this.logPrefix, e2.getLocalizedMessage());
        } catch (NullPointerException e3) {
            StaticMethods.logErrorFormat("%s - Unable to create database due to an invalid path (%s)", this.logPrefix, e3.getLocalizedMessage());
        } catch (Exception e4) {
            StaticMethods.logErrorFormat("%s - Unable to create database due to an unexpected error (%s)", this.logPrefix, e4.getLocalizedMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [com.adobe.mobile.AbstractHitDatabase$Hit] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // com.adobe.mobile.AbstractHitDatabase
    protected AbstractHitDatabase.Hit selectOldestHit() {
        Cursor cursorQuery;
        AbstractHitDatabase.Hit hit;
        ?? r9 = 0;
        r9 = 0;
        r9 = 0;
        synchronized (this.dbMutex) {
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                cursorQuery = this.database.query(_hitsTableName, _hitsSelectedColumns, null, null, null, null, _hitsOrderBy, _hitsNumberOfRowsToReturn);
                try {
                    if (cursorQuery.moveToFirst()) {
                        hit = new AbstractHitDatabase.Hit();
                        try {
                            hit.identifier = cursorQuery.getString(0);
                            hit.urlFragment = cursorQuery.getString(1);
                            hit.postBody = cursorQuery.getString(2);
                            hit.postType = cursorQuery.getString(3);
                            hit.timestamp = cursorQuery.getLong(4);
                            hit.timeout = cursorQuery.getInt(5);
                            r9 = hit;
                        } catch (SQLException e2) {
                            e = e2;
                            r9 = hit;
                            StaticMethods.logErrorFormat("%s - Unable to read from database (%s)", this.logPrefix, e.getMessage());
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                        } catch (Exception e3) {
                            e = e3;
                            StaticMethods.logErrorFormat("%s - Unknown error reading from database (%s)", this.logPrefix, e.getMessage());
                            if (cursorQuery != null) {
                                cursorQuery.close();
                                r9 = hit;
                            } else {
                                r9 = hit;
                            }
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (SQLException e4) {
                    e = e4;
                } catch (Exception e5) {
                    e = e5;
                    hit = null;
                }
            } catch (SQLException e6) {
                e = e6;
                cursorQuery = null;
            } catch (Exception e7) {
                e = e7;
                cursorQuery = null;
                hit = null;
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    r9.close();
                }
                throw th;
            }
        }
        return r9;
    }

    @Override // com.adobe.mobile.AbstractHitDatabase
    protected final Runnable workerThread() {
        return new Runnable() { // from class: com.adobe.mobile.ThirdPartyQueue.1
            @Override // java.lang.Runnable
            public void run() {
                AbstractHitDatabase.Hit hitSelectOldestHit;
                ThirdPartyQueue thirdPartyQueueSharedInstance = ThirdPartyQueue.sharedInstance();
                Process.setThreadPriority(10);
                boolean offlineTrackingEnabled = MobileConfig.getInstance().getOfflineTrackingEnabled();
                HashMap map = new HashMap();
                map.put("Accept-Language", StaticMethods.getDefaultAcceptLanguage());
                map.put("User-Agent", StaticMethods.getDefaultUserAgent());
                while (MobileConfig.getInstance().getPrivacyStatus() == MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_IN && MobileConfig.getInstance().networkConnectivity() && (hitSelectOldestHit = thirdPartyQueueSharedInstance.selectOldestHit()) != null && hitSelectOldestHit.urlFragment != null) {
                    if (!offlineTrackingEnabled && hitSelectOldestHit.timestamp < StaticMethods.getTimeSince1970() - 60) {
                        try {
                            thirdPartyQueueSharedInstance.deleteHit(hitSelectOldestHit.identifier);
                        } catch (AbstractDatabaseBacking.CorruptedDatabaseException e2) {
                            thirdPartyQueueSharedInstance.resetDatabase(e2);
                        }
                    } else {
                        hitSelectOldestHit.postBody = hitSelectOldestHit.postBody != null ? hitSelectOldestHit.postBody : "";
                        hitSelectOldestHit.postType = hitSelectOldestHit.postType != null ? hitSelectOldestHit.postType : "";
                        hitSelectOldestHit.timeout = hitSelectOldestHit.timeout < 2 ? 2000 : hitSelectOldestHit.timeout * 1000;
                        if (RequestHandler.sendThirdPartyRequest(hitSelectOldestHit.urlFragment, hitSelectOldestHit.postBody, map, hitSelectOldestHit.timeout, hitSelectOldestHit.postType, ThirdPartyQueue.this.logPrefix)) {
                            try {
                                thirdPartyQueueSharedInstance.deleteHit(hitSelectOldestHit.identifier);
                                thirdPartyQueueSharedInstance.lastHitTimestamp = hitSelectOldestHit.timestamp;
                            } catch (AbstractDatabaseBacking.CorruptedDatabaseException e3) {
                                thirdPartyQueueSharedInstance.resetDatabase(e3);
                            }
                        } else {
                            StaticMethods.logWarningFormat("%s - Unable to forward hit (%s)", ThirdPartyQueue.this.logPrefix, hitSelectOldestHit.urlFragment);
                            if (MobileConfig.getInstance().getOfflineTrackingEnabled()) {
                                StaticMethods.logDebugFormat("%s - Network error, imposing internal cooldown (%d seconds)", ThirdPartyQueue.this.logPrefix, 30L);
                                for (int i = 0; i < 30; i++) {
                                    try {
                                        if (MobileConfig.getInstance().networkConnectivity()) {
                                            Thread.sleep(1000L);
                                        }
                                    } catch (Exception e4) {
                                        StaticMethods.logWarningFormat("%s - Background Thread Interrupted (%s)", ThirdPartyQueue.this.logPrefix, e4.getMessage());
                                    }
                                }
                            } else {
                                try {
                                    thirdPartyQueueSharedInstance.deleteHit(hitSelectOldestHit.identifier);
                                } catch (AbstractDatabaseBacking.CorruptedDatabaseException e5) {
                                    thirdPartyQueueSharedInstance.resetDatabase(e5);
                                }
                            }
                        }
                    }
                }
                thirdPartyQueueSharedInstance.bgThreadActive = false;
            }
        };
    }
}
