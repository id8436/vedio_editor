package com.adobe.creativesdk.foundation.internal.storage.model.util;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeStorageCopyUtils {
    public static void addEntriesFromDictionary(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject != null && jSONObject2 != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    jSONObject2.put(next, jSONObject.get(next));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static void addObjectsToArray(JSONObject jSONObject, JSONArray jSONArray) {
        if (jSONObject != null && jSONArray != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                try {
                    jSONArray.put(jSONObject.get(itKeys.next()));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static void addEntriesFromChildrenMap(Map<String, AdobeDCXManifestNode> map, Map<String, AdobeDCXManifestNode> map2) {
        if (map != null && map2 != null) {
            for (Map.Entry<String, AdobeDCXManifestNode> entry : map.entrySet()) {
                map2.put(entry.getKey(), entry.getValue());
            }
        }
    }

    public static void addEntriesFromComponentsMap(Map<String, AdobeDCXComponent> map, Map<String, AdobeDCXComponent> map2) {
        if (map != null && map2 != null) {
            for (Map.Entry<String, AdobeDCXComponent> entry : map.entrySet()) {
                map2.put(entry.getKey(), entry.getValue());
            }
        }
    }

    public static void addEntriesFromComponentsMapToArray(Map<String, AdobeDCXComponent> map, ArrayList<AdobeDCXComponent> arrayList) {
        if (map != null && arrayList != null) {
            Iterator<Map.Entry<String, AdobeDCXComponent>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getValue());
            }
        }
    }

    public static JSONObject mutableCopyOfDictionary(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                Object obj = jSONObject.get(next);
                if (obj.getClass().equals(JSONObject.class)) {
                    jSONObject2.put(next, new JSONObject());
                } else if (obj.getClass().equals(JSONArray.class)) {
                    jSONObject2.put(next, new JSONArray());
                } else {
                    jSONObject2.put(next, obj);
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return jSONObject2;
    }

    public static JSONObject deepMutableCopyOfDictionary(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                Object obj = jSONObject.get(next);
                if (obj.getClass().equals(JSONObject.class)) {
                    jSONObject2.put(next, deepMutableCopyOfDictionary((JSONObject) obj));
                } else if (obj.getClass().equals(JSONArray.class)) {
                    jSONObject2.put(next, deepMutableCopyOfArray((JSONArray) obj));
                } else {
                    jSONObject2.put(next, obj);
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return jSONObject2;
    }

    public static JSONArray deepMutableCopyOfArray(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        JSONArray jSONArray2 = new JSONArray();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                Object obj = jSONArray.get(i);
                if (obj.getClass().equals(JSONObject.class)) {
                    jSONArray2.put(i, deepMutableCopyOfDictionary((JSONObject) obj));
                } else if (obj.getClass().equals(JSONArray.class)) {
                    jSONArray2.put(i, deepMutableCopyOfArray((JSONArray) obj));
                } else {
                    jSONArray2.put(i, obj);
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return jSONArray2;
    }
}
