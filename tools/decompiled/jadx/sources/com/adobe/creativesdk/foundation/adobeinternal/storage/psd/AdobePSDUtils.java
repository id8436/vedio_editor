package com.adobe.creativesdk.foundation.adobeinternal.storage.psd;

import com.adobe.creativesdk.foundation.storage.AdobePSDRGBColor;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobePSDUtils {
    public static Rect getRectFromPSDBounds(Object obj) throws JSONException {
        if (obj.getClass() == JSONObject.class) {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject.length() < 4) {
                return new Rect(0.0f, 0.0f, 0.0f, 0.0f);
            }
            float f2 = (float) jSONObject.getDouble(AdobePSDCompositeConstants.AdobePSDCompositeBoundsLeftKey);
            float f3 = (float) jSONObject.getDouble(AdobePSDCompositeConstants.AdobePSDCompositeBoundsTopKey);
            return new Rect(f2, f3, ((float) jSONObject.getDouble(AdobePSDCompositeConstants.AdobePSDCompositeBoundsRightKey)) - f2, ((float) jSONObject.getDouble(AdobePSDCompositeConstants.AdobePSDCompositeBoundsBottomKey)) - f3);
        }
        if (obj instanceof Map) {
            return getRectFromPSDBounds((Map<String, Float>) obj);
        }
        return null;
    }

    public static JSONObject getBoundsFromRect(Rect rect) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AdobePSDCompositeConstants.AdobePSDCompositeBoundsLeftKey, rect.origin.x);
            jSONObject.put(AdobePSDCompositeConstants.AdobePSDCompositeBoundsTopKey, rect.origin.y);
            jSONObject.put(AdobePSDCompositeConstants.AdobePSDCompositeBoundsRightKey, rect.origin.x + rect.size.width);
            jSONObject.put(AdobePSDCompositeConstants.AdobePSDCompositeBoundsBottomKey, rect.origin.y + rect.size.height);
            return jSONObject;
        } catch (JSONException e2) {
            return null;
        }
    }

    public static Rect getRectFromPSDBounds(Map<String, Float> map) {
        if (map.size() < 4) {
            return new Rect();
        }
        float fFloatValue = map.get(AdobePSDCompositeConstants.AdobePSDCompositeBoundsLeftKey).floatValue();
        float fFloatValue2 = map.get(AdobePSDCompositeConstants.AdobePSDCompositeBoundsTopKey).floatValue();
        return new Rect(fFloatValue, fFloatValue2, map.get(AdobePSDCompositeConstants.AdobePSDCompositeBoundsRightKey).floatValue() - fFloatValue, map.get(AdobePSDCompositeConstants.AdobePSDCompositeBoundsBottomKey).floatValue() - fFloatValue2);
    }

    public static AdobePSDRGBColor getRgbColorFromPSDColorDict(JSONObject jSONObject) {
        try {
            Integer numValueOf = Integer.valueOf(jSONObject.getInt(AdobePSDCompositeConstants.AdobePSDCompositeColorRedKey));
            Integer num = (Integer) jSONObject.get(AdobePSDCompositeConstants.AdobePSDCompositeColorGreenKey);
            Integer num2 = (Integer) jSONObject.get(AdobePSDCompositeConstants.AdobePSDCompositeColorBlueKey);
            if (numValueOf == null || num == null || num2 == null) {
                return null;
            }
            if (numValueOf.intValue() > 255 || num.intValue() > 255 || num2.intValue() > 255) {
                return null;
            }
            return new AdobePSDRGBColor(numValueOf, num, num2);
        } catch (JSONException e2) {
            return null;
        }
    }

    public static Object getPsdColorDictFromRGBColor(AdobePSDRGBColor adobePSDRGBColor) {
        HashMap map = new HashMap();
        map.put(AdobePSDCompositeConstants.AdobePSDCompositeColorRedKey, adobePSDRGBColor.getRed());
        map.put(AdobePSDCompositeConstants.AdobePSDCompositeColorGreenKey, adobePSDRGBColor.getGreen());
        map.put(AdobePSDCompositeConstants.AdobePSDCompositeColorBlueKey, adobePSDRGBColor.getBlue());
        return map;
    }

    public static AdobePSDRGBColor rgbColorFromPSDColorDict(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            return new AdobePSDRGBColor((Integer) jSONObject.get(AdobePSDCompositeConstants.AdobePSDCompositeColorRedKey), (Integer) jSONObject.get(AdobePSDCompositeConstants.AdobePSDCompositeColorGreenKey), (Integer) jSONObject.get(AdobePSDCompositeConstants.AdobePSDCompositeColorBlueKey));
        } catch (JSONException e2) {
            return null;
        }
    }
}
