package com.adobe.sync.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class DatabaseHelper extends SQLiteOpenHelper {
    private static final String COLUMN_ADOBE_ID = "adobeId";
    private static final String COLUMN_ASSET_URL = "assetURL";
    private static final String COLUMN_CLOUD_ID = "cloudId";
    private static final String COLUMN_COMPONENT_ID = "componentId";
    private static final String COLUMN_COMPOSITE_ID = "compositeId";
    private static final String COLUMN_CREATED_DATE = "createdDate";
    private static final String COLUMN_LOCAL_PATH = "localPath";
    private static final String COLUMN_SERVER_HREF = "serverHref";
    private static final String COLUMN_SYNC_STATUS = "syncStatus";
    private static final String COLUMN_UCID = "ucid";
    private static final String CREATE_SECONDARY_INDEX_COMPONENT_INFO = "CREATE INDEX componentInfoIndex ON componentInfo(assetURL, createdDate)";
    private static final String CREATE_TABLE_COMPONENT_INFO = "CREATE TABLE componentInfo(ucid TEXT PRIMARY KEY,assetURL TEXT,createdDate TEXT,localPath TEXT,syncStatus TEXT)";
    private static final String CREATE_TABLE_COMPONENT_WAITING = "CREATE TABLE componentWaiting(compositeId TEXT,componentId TEXT PRIMARY KEY,ucid TEXT,serverHref TEXT,syncStatus TEXT,adobeId TEXT,cloudId TEXT)";
    private static final String DATABASE_NAME = "PremiereClip.db";
    private static final int DATABASE_VERSION = 2;
    private static final String TABLE_COMPONENT_INFO = "componentInfo";
    private static final String TABLE_COMPONENT_WAITING = "componentWaiting";

    public DatabaseHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(CREATE_TABLE_COMPONENT_INFO);
        sQLiteDatabase.execSQL(CREATE_SECONDARY_INDEX_COMPONENT_INFO);
        sQLiteDatabase.execSQL(CREATE_TABLE_COMPONENT_WAITING);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.d("DatabaseHelper", "Sync: onUpgrade called, componentWaiting table will be deleted and recreated");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS componentWaiting");
        sQLiteDatabase.execSQL(CREATE_TABLE_COMPONENT_WAITING);
    }

    public boolean insertComponentInfo(ComponentInfoModel componentInfoModel) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_UCID, componentInfoModel.getUCID());
        contentValues.put("assetURL", componentInfoModel.getAssetURL());
        contentValues.put("createdDate", componentInfoModel.getCreatedDate());
        contentValues.put(COLUMN_LOCAL_PATH, componentInfoModel.getLocalPath());
        contentValues.put(COLUMN_SYNC_STATUS, componentInfoModel.getAssetSyncStatus());
        return writableDatabase.insert(TABLE_COMPONENT_INFO, null, contentValues) != -1;
    }

    public boolean insertComponentWaiting(ComponentWaitingModel componentWaitingModel) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_UCID, componentWaitingModel.getUCID());
        contentValues.put(COLUMN_COMPOSITE_ID, componentWaitingModel.getCompositeId());
        contentValues.put(COLUMN_COMPONENT_ID, componentWaitingModel.getComponentId());
        contentValues.put(COLUMN_SYNC_STATUS, componentWaitingModel.getAssetSyncStatus());
        contentValues.put(COLUMN_SERVER_HREF, componentWaitingModel.getServerHref());
        contentValues.put(COLUMN_ADOBE_ID, componentWaitingModel.getAdobeId());
        contentValues.put(COLUMN_CLOUD_ID, componentWaitingModel.getCloudId());
        return writableDatabase.insert(TABLE_COMPONENT_WAITING, null, contentValues) != -1;
    }

    public Cursor getComponentInfo(String str, String str2) {
        return getReadableDatabase().rawQuery("select * from componentInfo where assetURL=\"" + str + "\" and createdDate = \"" + str2 + "\"", null);
    }

    public Cursor getComponentInfo(String str) {
        return getReadableDatabase().rawQuery("select * from componentInfo where ucid=\"" + str + "\"", null);
    }

    public Cursor getComponentsWaiting(String str, String str2, String str3) {
        return getReadableDatabase().rawQuery("select * from componentWaiting where ucid=\"" + str + "\" and " + COLUMN_ADOBE_ID + " = \"" + str2 + "\" and " + COLUMN_CLOUD_ID + " =\"" + str3 + "\"", null);
    }

    public Cursor getComponentWaiting(String str) {
        return getReadableDatabase().rawQuery("select * from componentWaiting where componentId=\"" + str + "\"", null);
    }

    public boolean updateComponentInfo(String str, String str2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_SYNC_STATUS, str2);
        return ((long) writableDatabase.update(TABLE_COMPONENT_INFO, contentValues, "ucid = ? ", new String[]{str})) != 0;
    }

    public boolean updateComponentInfo(ComponentInfoModel componentInfoModel) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String ucid = componentInfoModel.getUCID();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_LOCAL_PATH, componentInfoModel.getLocalPath());
        contentValues.put(COLUMN_SYNC_STATUS, componentInfoModel.getAssetSyncStatus());
        return ((long) writableDatabase.update(TABLE_COMPONENT_INFO, contentValues, "ucid = ? ", new String[]{ucid})) != 0;
    }

    public boolean updateComponentWaiting(ComponentWaitingModel componentWaitingModel) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String componentId = componentWaitingModel.getComponentId();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_SYNC_STATUS, componentWaitingModel.getAssetSyncStatus());
        contentValues.put(COLUMN_SERVER_HREF, componentWaitingModel.getServerHref());
        contentValues.put(COLUMN_CLOUD_ID, componentWaitingModel.getCloudId());
        return ((long) writableDatabase.update(TABLE_COMPONENT_WAITING, contentValues, "componentId = ? ", new String[]{componentId})) != 0;
    }

    public boolean deleteComponentWaiting(String str) {
        return ((long) getWritableDatabase().delete(TABLE_COMPONENT_WAITING, "componentId = ? ", new String[]{str})) != 0;
    }

    public void listComponentWaitingTable() {
        Cursor cursorRawQuery = getReadableDatabase().rawQuery("select * from componentWaiting", null);
        Log.i("Sqlite-Unmanaged", "printing sqlite table started...");
        for (int i = 0; i < cursorRawQuery.getCount(); i++) {
            cursorRawQuery.moveToPosition(i);
            String string = cursorRawQuery.getString(5);
            String string2 = cursorRawQuery.getString(6);
            String string3 = cursorRawQuery.getString(3);
            Log.i("Sqlite-Unmanaged", "adobeId is " + string);
            Log.i("Sqlite-Unmanaged", "cloudId is " + string2);
            Log.i("Sqlite-Unmanaged", "serverHref is " + string3);
        }
        Log.i("Sqlite-Unmanaged", "printing sqlite table end...");
    }
}
