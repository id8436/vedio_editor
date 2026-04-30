package com.adobe.mobile;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import com.adobe.mobile.Analytics;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class AnalyticsTrackTimedAction extends AbstractDatabaseBacking {
    private static final String TIMED_ACTION_IN_APP_TIME_KEY = "a.action.time.inapp";
    private static final String TIMED_ACTION_TOTAL_TIME_KEY = "a.action.time.total";
    private static AnalyticsTrackTimedAction _instance = null;
    private static final Object _instanceMutex = new Object();
    private SQLiteStatement sqlDeleteAction;
    private SQLiteStatement sqlDeleteContextDataForAction;
    private String sqlExistsAction;
    private String sqlExistsContextDataByActionAndKey;
    private SQLiteStatement sqlInsertAction;
    private SQLiteStatement sqlInsertContextData;
    private String sqlSelectAction;
    private String sqlSelectContextDataForAction;
    private SQLiteStatement sqlUpdateAction;
    private SQLiteStatement sqlUpdateActionsClearAdjustedTime;
    private SQLiteStatement sqlUpdateContextData;

    public static AnalyticsTrackTimedAction sharedInstance() {
        AnalyticsTrackTimedAction analyticsTrackTimedAction;
        synchronized (_instanceMutex) {
            if (_instance == null) {
                _instance = new AnalyticsTrackTimedAction();
            }
            analyticsTrackTimedAction = _instance;
        }
        return analyticsTrackTimedAction;
    }

    private AnalyticsTrackTimedAction() {
        this.fileName = "ADBMobileTimedActionsCache.sqlite";
        this.logPrefix = "Analytics";
        initDatabaseBacking(new File(StaticMethods.getCacheDirectory(), this.fileName));
    }

    protected void trackTimedActionStart(String str, Map<String, Object> map) {
        if (str == null || str.trim().length() == 0) {
            StaticMethods.logWarningFormat("%s - trackTimedActionStart() failed(the required parameter actionName was null or empty.)", this.logPrefix);
            return;
        }
        long timeSince1970 = StaticMethods.getTimeSince1970();
        AnalyticsTimedAction timedAction = getTimedAction(str);
        if (timedAction != null) {
            deleteTimedAction(timedAction.databaseID);
        }
        insertTimedAction(str, map, timeSince1970);
    }

    protected void trackTimedActionUpdate(String str, Map<String, Object> map) {
        if (str == null || str.trim().length() == 0) {
            StaticMethods.logWarningFormat("%s - Unable to update the timed action (timed action name was null or empty)", this.logPrefix);
        } else if (map == null || map.isEmpty()) {
            StaticMethods.logWarningFormat("%s - Unable to update the timed action (context data was null or empty)", this.logPrefix);
        } else {
            saveContextDataForTimedAction(str, map);
        }
    }

    protected void trackTimedActionEnd(final String str, Analytics.TimedActionBlock<Boolean> timedActionBlock) {
        if (str == null || str.trim().length() == 0) {
            StaticMethods.logWarningFormat("%s - Unable to end the timed action (timed action name was null or empty)", this.logPrefix);
            return;
        }
        AnalyticsTimedAction timedAction = getTimedAction(str);
        if (timedAction != null) {
            Long lValueOf = Long.valueOf(StaticMethods.getTimeSince1970());
            long jLongValue = timedAction.adjustedStartTime == 0 ? 0L : lValueOf.longValue() - timedAction.adjustedStartTime;
            long jLongValue2 = lValueOf.longValue() - timedAction.startTime;
            final HashMap map = timedAction.contextData != null ? new HashMap(timedAction.contextData) : new HashMap();
            if (timedActionBlock == null || timedActionBlock.call(jLongValue, jLongValue2, map).booleanValue()) {
                map.put(TIMED_ACTION_TOTAL_TIME_KEY, String.valueOf(jLongValue2));
                if (timedAction.adjustedStartTime != 0) {
                    map.put(TIMED_ACTION_IN_APP_TIME_KEY, String.valueOf(jLongValue));
                }
                StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.AnalyticsTrackTimedAction.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnalyticsTrackAction.trackAction(str, map);
                    }
                });
            } else {
                StaticMethods.logDebugFormat("%s - Not sending hit for timed action due to block cancellation (%s)", this.logPrefix, str);
            }
            deleteTimedAction(timedAction.databaseID);
            return;
        }
        StaticMethods.logWarningFormat("%s - Unable to end a timed action that has not yet begun (no timed action was found matching the name %s)", this.logPrefix, str);
    }

    protected void trackTimedActionUpdateAdjustedStartTime(long j) {
        synchronized (this.dbMutex) {
            try {
                this.sqlUpdateAction.bindLong(1, j);
                this.sqlUpdateAction.execute();
                this.sqlUpdateAction.clearBindings();
            } catch (SQLException e2) {
                StaticMethods.logErrorFormat("%s - Unable to bind prepared statement values for updating the adjusted start time for timed action (%s)", this.logPrefix, e2.getLocalizedMessage());
                resetDatabase(e2);
            } catch (Exception e3) {
                StaticMethods.logErrorFormat("%s - Unable to adjust start times for timed actions (%s)", this.logPrefix, e3.getMessage());
            }
        }
    }

    protected void trackTimedActionUpdateActionsClearAdjustedStartTime() {
        synchronized (this.dbMutex) {
            try {
                this.sqlUpdateActionsClearAdjustedTime.execute();
                this.sqlUpdateActionsClearAdjustedTime.clearBindings();
            } catch (SQLException e2) {
                StaticMethods.logErrorFormat("%s - Unable to update adjusted time for timed actions after crash (%s)", this.logPrefix, e2.getMessage());
                resetDatabase(e2);
            } catch (Exception e3) {
                StaticMethods.logErrorFormat("%s - Unknown error clearing adjusted start times for timed actions (%s)", this.logPrefix, e3.getMessage());
                resetDatabase(e3);
            }
        }
    }

    protected boolean trackTimedActionExists(String str) {
        boolean z = false;
        if (str == null || str.trim().length() == 0) {
            StaticMethods.logWarningFormat("%s - Unable to verify the existence of timed action (timed action name was null or empty)", this.logPrefix);
        } else {
            synchronized (this.dbMutex) {
                if (this.database != null) {
                    try {
                        try {
                            Cursor cursorRawQuery = this.database.rawQuery(this.sqlExistsAction, new String[]{str});
                            if (cursorRawQuery.moveToFirst()) {
                                z = cursorRawQuery.getInt(0) > 0;
                            }
                            cursorRawQuery.close();
                        } catch (SQLException e2) {
                            StaticMethods.logErrorFormat("%s - Unable to query timed actions database (%s)", this.logPrefix, e2.getMessage());
                        }
                    } catch (Exception e3) {
                        StaticMethods.logErrorFormat("%s - Unknown error checking for timed action (%s)", this.logPrefix, e3.getMessage());
                    }
                }
            }
        }
        return z;
    }

    @Override // com.adobe.mobile.AbstractDatabaseBacking
    protected void preMigrate() {
        File file = new File(StaticMethods.getCacheDirectory() + "ADBMobileDataCache.sqlite" + this.fileName);
        File file2 = new File(StaticMethods.getCacheDirectory(), this.fileName);
        if (file.exists() && !file2.exists()) {
            try {
                if (!file.renameTo(file2)) {
                    StaticMethods.logWarningFormat("%s - Unable to migrate old Timed Actions db, creating new Timed Actions db (move file returned false)", this.logPrefix);
                }
            } catch (Exception e2) {
                StaticMethods.logWarningFormat("%s - Unable to migrate old Timed Actions db, creating new Timed Actions db (%s)", this.logPrefix, e2.getLocalizedMessage());
            }
        }
    }

    @Override // com.adobe.mobile.AbstractDatabaseBacking
    protected void postMigrate() {
    }

    @Override // com.adobe.mobile.AbstractDatabaseBacking
    protected void postReset() {
    }

    @Override // com.adobe.mobile.AbstractDatabaseBacking
    protected void initializeDatabase() {
        try {
            this.database.execSQL("CREATE TABLE IF NOT EXISTS TIMEDACTIONS (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT, STARTTIME INTEGER, ADJSTARTTIME INTEGER)");
            this.database.execSQL("CREATE TABLE IF NOT EXISTS CONTEXTDATA (ID INTEGER PRIMARY KEY AUTOINCREMENT, ACTIONID INTEGER, KEY TEXT, VALUE TEXT, FOREIGN KEY(ACTIONID) REFERENCES TIMEDACTIONS(ID))");
        } catch (SQLException e2) {
            StaticMethods.logErrorFormat("%s - Unable to open or create timed actions database (%s)", this.logPrefix, e2.getMessage());
        } catch (Exception e3) {
            StaticMethods.logErrorFormat("%s - Uknown error creating timed actions database (%s)", this.logPrefix, e3.getMessage());
        }
    }

    @Override // com.adobe.mobile.AbstractDatabaseBacking
    protected void prepareStatements() {
        this.sqlSelectAction = "SELECT ID, STARTTIME, ADJSTARTTIME FROM TIMEDACTIONS WHERE NAME=?";
        this.sqlExistsAction = "SELECT COUNT(*) FROM TIMEDACTIONS WHERE NAME=?";
        this.sqlSelectContextDataForAction = "SELECT KEY, VALUE FROM CONTEXTDATA WHERE ACTIONID=?";
        this.sqlExistsContextDataByActionAndKey = "SELECT COUNT(*) FROM CONTEXTDATA WHERE ACTIONID=? AND KEY=?";
        try {
            this.sqlInsertAction = this.database.compileStatement("INSERT INTO TIMEDACTIONS (NAME, STARTTIME, ADJSTARTTIME) VALUES (@NAME, @START, @START)");
            this.sqlUpdateAction = this.database.compileStatement("UPDATE TIMEDACTIONS SET ADJSTARTTIME=ADJSTARTTIME+@DELTA WHERE ADJSTARTTIME!=0");
            this.sqlUpdateActionsClearAdjustedTime = this.database.compileStatement("UPDATE TIMEDACTIONS SET ADJSTARTTIME=0");
            this.sqlDeleteAction = this.database.compileStatement("DELETE FROM TIMEDACTIONS WHERE ID=@ID");
            this.sqlInsertContextData = this.database.compileStatement("INSERT INTO CONTEXTDATA(ACTIONID, KEY, VALUE) VALUES (@ACTIONID, @KEY, @VALUE)");
            this.sqlUpdateContextData = this.database.compileStatement("UPDATE CONTEXTDATA SET VALUE=@VALUE WHERE ACTIONID=@ACTIONID AND KEY=@KEY");
            this.sqlDeleteContextDataForAction = this.database.compileStatement("DELETE FROM CONTEXTDATA WHERE ACTIONID=@ACTIONID");
        } catch (SQLException e2) {
            StaticMethods.logErrorFormat("Analytics - unable to prepare the needed SQL statements for interacting with the timed actions database (%s)", e2.getMessage());
        } catch (Exception e3) {
            StaticMethods.logErrorFormat("Analytics - Unknown error preparing sql statements (%s)", e3.getMessage());
        }
    }

    private void insertTimedAction(String str, Map<String, Object> map, long j) {
        if (str == null || str.trim().length() == 0) {
            StaticMethods.logWarningFormat("Analytics - Unable to insert timed action (timed action name was null or empty)", new Object[0]);
            return;
        }
        synchronized (this.dbMutex) {
            try {
                this.sqlInsertAction.bindString(1, str);
                this.sqlInsertAction.bindLong(2, j);
                if (this.sqlInsertAction.executeInsert() == -1) {
                    StaticMethods.logWarningFormat("Analytics - Unable to insert the timed action (%s)", str);
                }
                this.sqlInsertAction.clearBindings();
            } catch (SQLException e2) {
                StaticMethods.logErrorFormat("Analytics - Unable to bind prepared statement values for inserting the timed action (%s)", str);
                resetDatabase(e2);
            } catch (Exception e3) {
                StaticMethods.logErrorFormat("Analyitcs - Unknown error when inserting timed action (%s)", e3.getMessage());
            }
        }
        saveContextDataForTimedAction(str, map);
    }

    private void saveContextDataForTimedAction(String str, Map<String, Object> map) {
        if (str == null || str.trim().length() == 0) {
            StaticMethods.logWarningFormat("Analytics - Unable to save context data (timed action name was null or empty)", new Object[0]);
            return;
        }
        if (map == null || map.isEmpty()) {
            StaticMethods.logWarningFormat("Analytics - Unable to save context data (context data was null or empty)", new Object[0]);
            return;
        }
        synchronized (this.dbMutex) {
            try {
                try {
                } catch (Exception e2) {
                    StaticMethods.logErrorFormat("Analytics - Unexpected exception when attempting to update context data for timed action (%s)", e2.getMessage());
                }
            } catch (SQLException e3) {
                StaticMethods.logErrorFormat("Analytics - SQL exception when attempting to update context data for timed action (%s)", e3.getMessage());
            }
            if (this.database == null) {
                StaticMethods.logErrorFormat("Analytics - Null Database Object, unable to save context data for timed action", new Object[0]);
                return;
            }
            Cursor cursorRawQuery = this.database.rawQuery(this.sqlSelectAction, new String[]{str});
            if (cursorRawQuery.moveToFirst()) {
                int i = cursorRawQuery.getInt(0);
                cursorRawQuery.close();
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if (key != null && key.length() > 0) {
                        Cursor cursorRawQuery2 = this.database.rawQuery(this.sqlExistsContextDataByActionAndKey, new String[]{String.valueOf(i), entry.getKey()});
                        String string = value == null ? "" : value.toString();
                        if (cursorRawQuery2.moveToFirst() && cursorRawQuery2.getInt(0) > 0) {
                            this.sqlUpdateContextData.bindString(1, string);
                            this.sqlUpdateContextData.bindLong(2, i);
                            this.sqlUpdateContextData.bindString(3, entry.getKey());
                            this.sqlUpdateContextData.execute();
                            this.sqlUpdateContextData.clearBindings();
                        } else {
                            this.sqlInsertContextData.bindLong(1, i);
                            this.sqlInsertContextData.bindString(2, entry.getKey());
                            this.sqlInsertContextData.bindString(3, string);
                            if (this.sqlInsertContextData.executeInsert() == -1) {
                                StaticMethods.logWarningFormat("Analytics - Unable to insert the timed action's context data (%s)", str);
                            }
                            this.sqlInsertContextData.clearBindings();
                        }
                        cursorRawQuery2.close();
                    }
                }
                return;
            }
            cursorRawQuery.close();
            StaticMethods.logWarningFormat("Analytics - Unable to save context data (no timed action was found matching the name %s)", str);
        }
    }

    private AnalyticsTimedAction getTimedAction(String str) {
        AnalyticsTimedAction analyticsTimedAction;
        AnalyticsTimedAction analyticsTimedAction2 = null;
        if (str == null || str.trim().length() == 0) {
            StaticMethods.logWarningFormat("Analytics - Unable to get timed action (timed action name was null or empty)", new Object[0]);
            return null;
        }
        synchronized (this.dbMutex) {
            if (this.database == null) {
                return null;
            }
            try {
                Cursor cursorRawQuery = this.database.rawQuery(this.sqlSelectAction, new String[]{str});
                if (cursorRawQuery.moveToFirst()) {
                    AnalyticsTimedAction analyticsTimedAction3 = new AnalyticsTimedAction(null, cursorRawQuery.getLong(1), cursorRawQuery.getLong(2), cursorRawQuery.getInt(0));
                    try {
                        Cursor cursorRawQuery2 = this.database.rawQuery(this.sqlSelectContextDataForAction, new String[]{String.valueOf(analyticsTimedAction3.databaseID)});
                        if (cursorRawQuery2.moveToFirst()) {
                            analyticsTimedAction3.contextData = new HashMap();
                            do {
                                analyticsTimedAction3.contextData.put(cursorRawQuery2.getString(0), cursorRawQuery2.getString(1));
                            } while (cursorRawQuery2.moveToNext());
                        }
                        cursorRawQuery2.close();
                        analyticsTimedAction2 = analyticsTimedAction3;
                    } catch (SQLException e2) {
                        analyticsTimedAction2 = analyticsTimedAction3;
                        e = e2;
                        StaticMethods.logErrorFormat("Analytics - Unable to read from timed actions database (%s)", e.getMessage());
                        resetDatabase(e);
                        analyticsTimedAction = analyticsTimedAction2;
                    } catch (Exception e3) {
                        analyticsTimedAction2 = analyticsTimedAction3;
                        e = e3;
                        StaticMethods.logErrorFormat("Analytics - Unknown error reading from timed actions database (%s)", e.getMessage());
                        analyticsTimedAction = analyticsTimedAction2;
                    }
                }
                cursorRawQuery.close();
                analyticsTimedAction = analyticsTimedAction2;
            } catch (SQLException e4) {
                e = e4;
            } catch (Exception e5) {
                e = e5;
            }
            return analyticsTimedAction;
        }
    }

    private void deleteTimedAction(int i) {
        synchronized (this.dbMutex) {
            try {
                try {
                    this.sqlDeleteContextDataForAction.bindLong(1, i);
                    this.sqlDeleteContextDataForAction.execute();
                    this.sqlDeleteAction.bindLong(1, i);
                    this.sqlDeleteAction.execute();
                    this.sqlDeleteContextDataForAction.clearBindings();
                    this.sqlDeleteAction.clearBindings();
                } catch (SQLException e2) {
                    StaticMethods.logErrorFormat("Analytics - Unable to delete the timed action (ID = %d, Exception: %s)", Integer.valueOf(i), e2.getMessage());
                    resetDatabase(e2);
                }
            } catch (Exception e3) {
                StaticMethods.logErrorFormat("Analytics - Unknown error deleting timed action (%s)", e3.getMessage());
            }
        }
    }
}
