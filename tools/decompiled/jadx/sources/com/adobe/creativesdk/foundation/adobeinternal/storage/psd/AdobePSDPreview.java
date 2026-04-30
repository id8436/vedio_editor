package com.adobe.creativesdk.foundation.adobeinternal.storage.psd;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobePSDPreview {
    int appliedLayerComponentId;
    Rect bounds;
    private ArrayList<AdobePSDPreviewLayerComp> layerComps;
    private ArrayList<AdobePSDPreviewLayerNode> layerNodes;
    String name;

    private AdobePSDPreview(JSONObject jSONObject, String str) {
        this.name = str;
        if (jSONObject != null) {
            try {
                this.bounds = AdobePSDUtils.getRectFromPSDBounds(jSONObject.getJSONObject("imgdata").getJSONObject("bounds"));
                this.appliedLayerComponentId = jSONObject.getJSONObject("imgdata").getInt("appliedLayerCompId");
                ArrayList<AdobePSDPreviewLayerComp> arrayList = new ArrayList<>();
                JSONArray jSONArray = jSONObject.getJSONArray(AdobePSDCompositeConstants.AdobePSDCompositeLayerCompsNodeId);
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(new AdobePSDPreviewLayerComp(jSONArray.getJSONObject(i)));
                }
                this.layerComps = arrayList;
                JSONArray jSONArray2 = jSONObject.getJSONArray("children");
                ArrayList<AdobePSDPreviewLayerNode> arrayList2 = new ArrayList<>(jSONArray2.length());
                int iRecursivelyAddLayerNodeFromDict = 0;
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    iRecursivelyAddLayerNodeFromDict = recursivelyAddLayerNodeFromDict(jSONArray2.getJSONObject(i2), iRecursivelyAddLayerNodeFromDict, arrayList2);
                }
                this.layerNodes = arrayList2;
            } catch (JSONException e2) {
            }
        }
    }

    public static AdobePSDPreview psdPreviewFromFile(String str, String str2) throws AdobeDCXException {
        JSONObject jSONObject;
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            jSONObject = new JSONObject(IOUtils.toString(fileInputStream));
            try {
                fileInputStream.close();
            } catch (FileNotFoundException e2) {
            } catch (IOException e3) {
            } catch (JSONException e4) {
            }
        } catch (FileNotFoundException e5) {
            jSONObject = null;
        } catch (IOException e6) {
            jSONObject = null;
        } catch (JSONException e7) {
            jSONObject = null;
        }
        if (jSONObject != null) {
            return new AdobePSDPreview(jSONObject, str2);
        }
        return null;
    }

    public String getName() {
        return this.name;
    }

    public Rect getBounds() {
        return this.bounds;
    }

    public int getAppliedLayerComponentId() {
        return this.appliedLayerComponentId;
    }

    public ArrayList<AdobePSDPreviewLayerComp> getLayerComps() {
        return this.layerComps;
    }

    public ArrayList<AdobePSDPreviewLayerNode> getLayerNodes() {
        return this.layerNodes;
    }

    private int recursivelyAddLayerNodeFromDict(JSONObject jSONObject, int i, ArrayList<AdobePSDPreviewLayerNode> arrayList) {
        ArrayList<AdobePSDPreviewLayerNode> arrayList2;
        int i2;
        JSONException e2;
        int i3 = i + 1;
        try {
            if (!jSONObject.getString("type").equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeGroupKey)) {
                arrayList2 = null;
                i2 = i3;
            } else {
                JSONArray jSONArray = jSONObject.getJSONArray("children");
                arrayList2 = new ArrayList<>();
                i2 = i3;
                int i4 = 0;
                while (i4 < jSONArray.length()) {
                    try {
                        int iRecursivelyAddLayerNodeFromDict = recursivelyAddLayerNodeFromDict(jSONArray.getJSONObject(i4), i2, arrayList2);
                        i4++;
                        i2 = iRecursivelyAddLayerNodeFromDict;
                    } catch (JSONException e3) {
                        e2 = e3;
                        AdobeLogger.log(Level.DEBUG, "AdobePSDPreview.recursivelyAddLayerNodeFromDict", e2.getMessage());
                    }
                }
            }
        } catch (JSONException e4) {
            arrayList2 = null;
            i2 = i3;
            e2 = e4;
        }
        arrayList.add(new AdobePSDPreviewLayerNode(jSONObject, i, arrayList2));
        return i2;
    }
}
