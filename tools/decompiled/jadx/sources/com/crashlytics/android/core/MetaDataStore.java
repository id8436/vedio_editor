package com.crashlytics.android.core;

import c.a.a.a.a.b.m;
import c.a.a.a.f;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class MetaDataStore {
    private static final String KEYDATA_SUFFIX = "keys";
    private static final String KEY_USER_EMAIL = "userEmail";
    private static final String KEY_USER_ID = "userId";
    private static final String KEY_USER_NAME = "userName";
    private static final String METADATA_EXT = ".meta";
    private static final String USERDATA_SUFFIX = "user";
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final File filesDir;

    public MetaDataStore(File file) {
        this.filesDir = file;
    }

    public void writeUserData(String str, UserMetaData userMetaData) throws Throwable {
        BufferedWriter bufferedWriter;
        File userDataFileForSession = getUserDataFileForSession(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                String strUserDataToJson = userDataToJson(userMetaData);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(userDataFileForSession), UTF_8));
                try {
                    bufferedWriter.write(strUserDataToJson);
                    bufferedWriter.flush();
                    m.a((Closeable) bufferedWriter, "Failed to close user metadata file.");
                } catch (Exception e2) {
                    e = e2;
                    f.h().e(CrashlyticsCore.TAG, "Error serializing user metadata.", e);
                    m.a((Closeable) bufferedWriter, "Failed to close user metadata file.");
                }
            } catch (Throwable th) {
                th = th;
                bufferedWriter2 = bufferedWriter;
                m.a((Closeable) bufferedWriter2, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            bufferedWriter = null;
        } catch (Throwable th2) {
            th = th2;
            m.a((Closeable) bufferedWriter2, "Failed to close user metadata file.");
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    public UserMetaData readUserData(String str) throws Throwable {
        FileInputStream fileInputStream;
        UserMetaData userMetaDataJsonToUserData;
        File userDataFileForSession = getUserDataFileForSession(str);
        ?? Exists = userDataFileForSession.exists();
        if (Exists == 0) {
            return UserMetaData.EMPTY;
        }
        try {
            try {
                fileInputStream = new FileInputStream(userDataFileForSession);
                try {
                    userMetaDataJsonToUserData = jsonToUserData(m.a((InputStream) fileInputStream));
                    m.a((Closeable) fileInputStream, "Failed to close user metadata file.");
                    Exists = fileInputStream;
                } catch (Exception e2) {
                    e = e2;
                    f.h().e(CrashlyticsCore.TAG, "Error deserializing user metadata.", e);
                    m.a((Closeable) fileInputStream, "Failed to close user metadata file.");
                    userMetaDataJsonToUserData = UserMetaData.EMPTY;
                    Exists = fileInputStream;
                }
            } catch (Throwable th) {
                th = th;
                m.a((Closeable) Exists, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            Exists = 0;
            m.a((Closeable) Exists, "Failed to close user metadata file.");
            throw th;
        }
        return userMetaDataJsonToUserData;
    }

    public void writeKeyData(String str, Map<String, String> map) throws Throwable {
        BufferedWriter bufferedWriter;
        File keysFileForSession = getKeysFileForSession(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                String strKeysDataToJson = keysDataToJson(map);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(keysFileForSession), UTF_8));
                try {
                    bufferedWriter.write(strKeysDataToJson);
                    bufferedWriter.flush();
                    m.a((Closeable) bufferedWriter, "Failed to close key/value metadata file.");
                } catch (Exception e2) {
                    e = e2;
                    f.h().e(CrashlyticsCore.TAG, "Error serializing key/value metadata.", e);
                    m.a((Closeable) bufferedWriter, "Failed to close key/value metadata file.");
                }
            } catch (Throwable th) {
                th = th;
                bufferedWriter2 = bufferedWriter;
                m.a((Closeable) bufferedWriter2, "Failed to close key/value metadata file.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            bufferedWriter = null;
        } catch (Throwable th2) {
            th = th2;
            m.a((Closeable) bufferedWriter2, "Failed to close key/value metadata file.");
            throw th;
        }
    }

    public Map<String, String> readKeyData(String str) throws Throwable {
        FileInputStream fileInputStream;
        File keysFileForSession = getKeysFileForSession(str);
        if (!keysFileForSession.exists()) {
            return Collections.emptyMap();
        }
        try {
            fileInputStream = new FileInputStream(keysFileForSession);
            try {
                try {
                    Map<String, String> mapJsonToKeysData = jsonToKeysData(m.a((InputStream) fileInputStream));
                    m.a((Closeable) fileInputStream, "Failed to close user metadata file.");
                    return mapJsonToKeysData;
                } catch (Exception e2) {
                    e = e2;
                    f.h().e(CrashlyticsCore.TAG, "Error deserializing user metadata.", e);
                    m.a((Closeable) fileInputStream, "Failed to close user metadata file.");
                    return Collections.emptyMap();
                }
            } catch (Throwable th) {
                th = th;
                m.a((Closeable) fileInputStream, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            m.a((Closeable) fileInputStream, "Failed to close user metadata file.");
            throw th;
        }
    }

    private File getUserDataFileForSession(String str) {
        return new File(this.filesDir, str + "user" + METADATA_EXT);
    }

    private File getKeysFileForSession(String str) {
        return new File(this.filesDir, str + KEYDATA_SUFFIX + METADATA_EXT);
    }

    private static UserMetaData jsonToUserData(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        return new UserMetaData(valueOrNull(jSONObject, "userId"), valueOrNull(jSONObject, "userName"), valueOrNull(jSONObject, KEY_USER_EMAIL));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.crashlytics.android.core.MetaDataStore$1] */
    private static String userDataToJson(final UserMetaData userMetaData) throws JSONException {
        return new JSONObject() { // from class: com.crashlytics.android.core.MetaDataStore.1
            {
                put("userId", userMetaData.id);
                put("userName", userMetaData.name);
                put(MetaDataStore.KEY_USER_EMAIL, userMetaData.email);
            }
        }.toString();
    }

    private static Map<String, String> jsonToKeysData(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, valueOrNull(jSONObject, next));
        }
        return map;
    }

    private static String keysDataToJson(Map<String, String> map) throws JSONException {
        return new JSONObject(map).toString();
    }

    private static String valueOrNull(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }
}
