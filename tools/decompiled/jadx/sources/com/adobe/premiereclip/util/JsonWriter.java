package com.adobe.premiereclip.util;

import android.util.Log;
import c.a.a.a.a.d.d;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.IHashCompletionHandler;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class JsonWriter {

    public interface IDataWriteHandler {
        void onError(Exception exc);

        void onSuccess(File file);
    }

    public static void writeJsonObjectToFile(JSONObject jSONObject, String str) throws JSONException, IOException {
        FileWriter fileWriter = new FileWriter(new File(str));
        Log.d("Utilities", "started writing json object to file");
        fileWriter.write(jSONObject.toString());
        Log.d("Utilities", "finished writing json object to file");
        fileWriter.flush();
        fileWriter.close();
    }

    public static void writeDataToJsonFile(final float[] fArr, final String str, final String str2, final IDataWriteHandler iDataWriteHandler) {
        AdobeStorageUtils.MD5HashOfFile(str, true, new IHashCompletionHandler() { // from class: com.adobe.premiereclip.util.JsonWriter.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.util.IHashCompletionHandler
            public void onCompletion(String str3) {
                if (str3 != null) {
                    String str4 = PremiereClipApplication.getContext().getCacheDir() + File.separator + str3 + d.ROLL_OVER_FILE_NAME_SEPARATOR + str2;
                    Log.d("JsonWriter", "suffix = " + str2 + " file = " + str + " hash = " + str3);
                    File file = new File(str4);
                    JSONArray jSONArray = new JSONArray();
                    for (int i = 0; i < fArr.length; i++) {
                        jSONArray.put("" + fArr[i]);
                    }
                    if (!file.exists()) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.putOpt(DCXProjectKeys.kSyncPoints_FullImpactKey, jSONArray);
                            try {
                                JsonWriter.writeJsonObjectToFile(jSONObject, str4);
                            } catch (IOException e2) {
                                e2.printStackTrace();
                                if (iDataWriteHandler != null) {
                                    iDataWriteHandler.onError(e2);
                                    return;
                                }
                                return;
                            } catch (JSONException e3) {
                                e3.printStackTrace();
                                if (iDataWriteHandler != null) {
                                    iDataWriteHandler.onError(e3);
                                    return;
                                }
                                return;
                            }
                        } catch (JSONException e4) {
                            e4.printStackTrace();
                            if (iDataWriteHandler != null) {
                                iDataWriteHandler.onError(e4);
                                return;
                            }
                            return;
                        }
                    }
                    if (iDataWriteHandler != null) {
                        iDataWriteHandler.onSuccess(file);
                    }
                }
            }
        });
    }
}
