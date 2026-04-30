package com.adobe.premiereclip.util;

import c.a.a.a.a.d.d;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.IHashCompletionHandler;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.net.URLConnection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class JsonReader {

    public interface IDataReadHandler {
        void onError(Exception exc);

        void onSuccess(float[] fArr);
    }

    public static String readAll(Reader reader) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i = reader.read();
            if (i != -1) {
                sb.append((char) i);
            } else {
                return sb.toString();
            }
        }
    }

    private static InputStream getInputStreamFromUrl(String str) throws JSONException, IOException {
        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
        String headerField = uRLConnectionOpenConnection.getHeaderField("Location");
        if (headerField != null) {
            uRLConnectionOpenConnection = new URL(headerField).openConnection();
        }
        return uRLConnectionOpenConnection.getInputStream();
    }

    public static JSONArray readJsonArrayFromUrl(String str) throws JSONException, IOException {
        InputStream inputStreamFromUrl = getInputStreamFromUrl(str);
        JSONArray jSONArray = new JSONArray(readAll(new BufferedReader(new InputStreamReader(inputStreamFromUrl))));
        inputStreamFromUrl.close();
        return jSONArray;
    }

    public static JSONObject readJsonObjectFromUrl(String str) throws JSONException, IOException {
        InputStream inputStreamFromUrl = getInputStreamFromUrl(str);
        JSONObject jSONObject = new JSONObject(readAll(new BufferedReader(new InputStreamReader(inputStreamFromUrl))));
        inputStreamFromUrl.close();
        return jSONObject;
    }

    public static JSONArray readJsonArrayFromFile(String str) throws JSONException, IOException {
        FileInputStream fileInputStream = new FileInputStream(str);
        JSONArray jSONArray = new JSONArray(readAll(new BufferedReader(new InputStreamReader(fileInputStream))));
        fileInputStream.close();
        return jSONArray;
    }

    public static JSONObject readJsonObjectFromFile(String str) throws JSONException, IOException {
        FileInputStream fileInputStream = new FileInputStream(str);
        JSONObject jSONObject = new JSONObject(readAll(new BufferedReader(new InputStreamReader(fileInputStream))));
        fileInputStream.close();
        return jSONObject;
    }

    public static void readDataFromJSONFile(String str, final String str2, final IDataReadHandler iDataReadHandler) {
        AdobeStorageUtils.MD5HashOfFile(str, true, new IHashCompletionHandler() { // from class: com.adobe.premiereclip.util.JsonReader.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.util.IHashCompletionHandler
            public void onCompletion(String str3) {
                if (str3 != null) {
                    String str4 = PremiereClipApplication.getContext().getCacheDir() + File.separator + str3 + d.ROLL_OVER_FILE_NAME_SEPARATOR + str2;
                    if (new File(str4).exists()) {
                        try {
                            JSONArray jSONArray = (JSONArray) JsonReader.readJsonObjectFromFile(str4).get(DCXProjectKeys.kSyncPoints_FullImpactKey);
                            if (jSONArray != null) {
                                float[] fArr = new float[jSONArray.length()];
                                for (int i = 0; i < jSONArray.length(); i++) {
                                    fArr[i] = Float.parseFloat(jSONArray.get(i).toString());
                                }
                                if (iDataReadHandler != null) {
                                    iDataReadHandler.onSuccess(fArr);
                                    return;
                                }
                                return;
                            }
                            return;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            if (iDataReadHandler != null) {
                                iDataReadHandler.onError(e2);
                                return;
                            }
                            return;
                        }
                    }
                    if (iDataReadHandler != null) {
                        iDataReadHandler.onError(null);
                    }
                }
            }
        });
    }
}
