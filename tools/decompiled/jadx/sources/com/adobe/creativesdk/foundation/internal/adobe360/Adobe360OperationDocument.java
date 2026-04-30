package com.adobe.creativesdk.foundation.internal.adobe360;

import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOutputParameters;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360OperationDocument {
    static final /* synthetic */ boolean $assertionsDisabled;
    JSONObject _inputs;
    JSONObject _options;
    HashMap<String, AdobeImageOutputParameters> _outputDispositions;
    JSONObject _outputs;
    JSONObject _results;

    static {
        $assertionsDisabled = !Adobe360OperationDocument.class.desiredAssertionStatus();
    }

    public JSONObject getOptions() {
        return this._options;
    }

    public void setOptions(JSONObject jSONObject) {
        this._options = jSONObject;
    }

    public JSONObject getResults() {
        return this._results;
    }

    public void setResults(JSONObject jSONObject) {
        this._results = jSONObject;
    }

    public JSONObject getInputs() {
        return this._inputs;
    }

    public void setInputs(JSONObject jSONObject) {
        this._inputs = jSONObject;
    }

    public JSONObject getOutputs() {
        return this._outputs;
    }

    public void setOutputs(JSONObject jSONObject) {
        this._outputs = jSONObject;
    }

    public HashMap<String, AdobeImageOutputParameters> getOutputDispositions() {
        return this._outputDispositions;
    }

    public void setOutputDispositions(HashMap<String, AdobeImageOutputParameters> map) {
        this._outputDispositions = map;
    }

    private static JSONObject assetReferenceDictFromPathDict(JSONObject jSONObject) {
        if (!$assertionsDisabled && jSONObject == null) {
            throw new AssertionError("");
        }
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if (objOpt.getClass().equals(JSONArray.class)) {
                JSONArray jSONArray = new JSONArray();
                JSONArray jSONArray2 = (JSONArray) objOpt;
                for (int i = 0; i < jSONArray2.length(); i++) {
                    String strOptString = jSONArray2.optString(i);
                    JSONObject jSONObject3 = new JSONObject();
                    try {
                        jSONObject3.put("href", strOptString);
                        jSONArray.put(jSONObject3);
                    } catch (JSONException e2) {
                        AdobeLogger.log(Level.DEBUG, "Adobe360OperationDocument", null, e2);
                    }
                }
                try {
                    jSONObject2.put(next, jSONArray);
                } catch (JSONException e3) {
                    AdobeLogger.log(Level.DEBUG, "Adobe360OperationDocument", null, e3);
                }
            } else {
                String str = (String) objOpt;
                JSONObject jSONObject4 = new JSONObject();
                try {
                    jSONObject4.put("href", str);
                    jSONObject2.put(next, jSONObject4);
                } catch (JSONException e4) {
                    AdobeLogger.log(Level.DEBUG, "Adobe360OperationDocument", null, e4);
                }
            }
        }
        return jSONObject2;
    }

    public Adobe360OperationDocument() {
        this._options = null;
        this._results = null;
        this._inputs = null;
        this._outputs = null;
        this._outputDispositions = null;
    }

    public static Adobe360OperationDocument createOperationDocumentWithFileAtPath(String str) {
        return new Adobe360OperationDocument(str);
    }

    public Adobe360OperationDocument(String str) {
        String strOptString;
        String strOptString2;
        String strOptString3;
        this._options = null;
        this._results = null;
        this._inputs = null;
        this._outputs = null;
        this._outputDispositions = null;
        try {
            String strFRead = AdobeDCXUtils.fRead(str);
            if (strFRead != null) {
                JSONObject jSONObject = new JSONObject(strFRead);
                this._options = jSONObject.optJSONObject(AdobeImageOperation.OPTIONS);
                this._results = jSONObject.optJSONObject("results");
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AdobeImageOperation.INPUTS);
                if (jSONObjectOptJSONObject != null) {
                    this._inputs = new JSONObject();
                    Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        Object objOpt = jSONObjectOptJSONObject.opt(next);
                        if (objOpt.getClass().equals(JSONArray.class)) {
                            JSONArray jSONArray = (JSONArray) objOpt;
                            JSONArray jSONArray2 = new JSONArray();
                            for (int i = 0; i < jSONArray.length(); i++) {
                                Object objOpt2 = jSONArray.opt(i);
                                if (objOpt2.getClass().equals(JSONObject.class) && (strOptString2 = ((JSONObject) objOpt2).optString("href", null)) != null) {
                                    jSONArray2.put(strOptString2);
                                }
                            }
                            this._inputs.put(next, jSONArray2);
                        } else if (objOpt.getClass().equals(JSONObject.class) && (strOptString3 = ((JSONObject) objOpt).optString("href", null)) != null) {
                            this._inputs.put(next, strOptString3);
                        }
                    }
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(AdobeImageOperation.OUTPUTS);
                if (jSONObjectOptJSONObject2 != null) {
                    Iterator<String> itKeys2 = jSONObjectOptJSONObject2.keys();
                    while (itKeys2.hasNext()) {
                        String next2 = itKeys2.next();
                        Object objOpt3 = jSONObjectOptJSONObject2.opt(next2);
                        if (objOpt3.getClass().equals(JSONArray.class)) {
                            JSONArray jSONArray3 = new JSONArray();
                            for (int i2 = 0; i2 < ((JSONArray) objOpt3).length(); i2++) {
                                Object objOpt4 = ((JSONArray) objOpt3).opt(i2);
                                if (objOpt4.getClass().equals(JSONObject.class) && (strOptString = ((JSONObject) objOpt4).optString("href", null)) != null) {
                                    jSONArray3.put(strOptString);
                                }
                            }
                            if (this._outputs == null) {
                                this._outputs = new JSONObject();
                            }
                            this._outputs.put(next2, jSONArray3);
                        } else if (objOpt3.getClass().equals(JSONObject.class)) {
                            JSONObject jSONObject2 = (JSONObject) objOpt3;
                            String strOptString4 = jSONObject2.optString("href", null);
                            if (strOptString4 != null) {
                                if (this._outputs == null) {
                                    this._outputs = new JSONObject();
                                }
                                this._outputs.put(next2, strOptString4);
                            } else {
                                String strOptString5 = jSONObject2.optString("accept", null);
                                if (strOptString5 != null) {
                                    if (this._outputDispositions == null) {
                                        this._outputDispositions = new HashMap<>();
                                    }
                                    AdobeImageOutputParameters adobeImageOutputParameters = new AdobeImageOutputParameters();
                                    adobeImageOutputParameters.mediaRange = strOptString5;
                                    this._outputDispositions.put(next2, adobeImageOutputParameters);
                                }
                            }
                        }
                    }
                }
            }
        } catch (IOException e2) {
            AdobeLogger.log(Level.ERROR, "Adobe360OperationDocument read failed", e2.getMessage());
        } catch (JSONException e3) {
            AdobeLogger.log(Level.DEBUG, "Adobe360OperationDocument", null, e3);
        }
    }

    public boolean writeToFileAtPath(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this._options != null) {
                jSONObject.put(AdobeImageOperation.OPTIONS, this._options);
            }
            if (this._results != null) {
                jSONObject.put("results", this._results);
            }
            if (this._inputs != null) {
                jSONObject.put(AdobeImageOperation.INPUTS, assetReferenceDictFromPathDict(this._inputs));
            }
            if (!$assertionsDisabled && this._outputs != null && this._outputDispositions != null) {
                throw new AssertionError("outputs and outputDispositions are mutually excluive properties");
            }
            if (this._outputs != null) {
                JSONObject jSONObjectAssetReferenceDictFromPathDict = assetReferenceDictFromPathDict(this._outputs);
                if (jSONObjectAssetReferenceDictFromPathDict.length() > 0) {
                    jSONObject.put(AdobeImageOperation.OUTPUTS, jSONObjectAssetReferenceDictFromPathDict);
                }
            } else if (this._outputDispositions != null) {
                JSONObject jSONObject2 = new JSONObject();
                for (Map.Entry<String, AdobeImageOutputParameters> entry : this._outputDispositions.entrySet()) {
                    AdobeImageOutputParameters value = entry.getValue();
                    if (value.mediaRange != null) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("accept", value.mediaRange);
                        jSONObject2.put(entry.getKey(), jSONObject3);
                    }
                }
                if (jSONObject2.length() > 0) {
                    jSONObject.put(AdobeImageOperation.OUTPUTS, jSONObject2);
                }
            }
            AdobeDCXUtils.fWrite(str, jSONObject.toString());
            return true;
        } catch (IOException e2) {
            return false;
        } catch (JSONException e3) {
            return false;
        }
    }
}
