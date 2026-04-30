package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDBlendMode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeLayerBlendOptionsMode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDLayerNodeType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.Rect;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobePSDLayerNode {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static AdobePSDCompositeLayerBlendOptionsMode[] blendModes;
    protected AdobeDCXManifestNode node;
    private AdobePSDLayerNodeType type;

    static {
        $assertionsDisabled = !AdobePSDLayerNode.class.desiredAssertionStatus();
        blendModes = new AdobePSDCompositeLayerBlendOptionsMode[]{AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeNormal, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeDissolve, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeDarken, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeMultiply, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeColorBurn, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeLinearBurn, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeDarkerColor, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeLighten, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeScreen, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeColorDodge, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeLinearDodge, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeLighterColor, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeOverlay, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeSoftLight, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeHardLight, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeVividLight, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeLinearLight, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModePinLight, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeHardMix, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeDifference, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeExclusion, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeSubtract, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeDivide, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeHue, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeSaturation, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeColor, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModeLuminosity, AdobePSDCompositeLayerBlendOptionsMode.AdobePSDCompositeLayerBlendOptionsModePassThrough};
    }

    protected AdobePSDLayerNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        this.node = adobeDCXManifestNode;
        String str = (String) this.node.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeKey);
        if (str.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeGroupKey)) {
            this.type = AdobePSDLayerNodeType.AdobePSDLayerNodeTypeGroup;
            return;
        }
        if (str.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypePixelsKey)) {
            this.type = AdobePSDLayerNodeType.AdobePSDLayerNodeTypeRGBPixels;
            return;
        }
        if (str.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeFillKey)) {
            this.type = AdobePSDLayerNodeType.AdobePSDLayerNodeTypeSolidColor;
        } else if (str.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeAdjustmentKey)) {
            this.type = AdobePSDLayerNodeType.AdobePSDLayerNodeTypeAdjustment;
        } else {
            this.type = AdobePSDLayerNodeType.AdobePSDLayerNodeTypeUnknown;
        }
    }

    private void setAdobePSDLayerNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        this.node = adobeDCXManifestNode;
        String str = (String) this.node.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeKey);
        if (str.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeGroupKey)) {
            this.type = AdobePSDLayerNodeType.AdobePSDLayerNodeTypeGroup;
            return;
        }
        if (str.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypePixelsKey)) {
            this.type = AdobePSDLayerNodeType.AdobePSDLayerNodeTypeRGBPixels;
            return;
        }
        if (str.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeFillKey)) {
            this.type = AdobePSDLayerNodeType.AdobePSDLayerNodeTypeSolidColor;
        } else if (str.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeAdjustmentKey)) {
            this.type = AdobePSDLayerNodeType.AdobePSDLayerNodeTypeAdjustment;
        } else {
            this.type = AdobePSDLayerNodeType.AdobePSDLayerNodeTypeUnknown;
        }
    }

    protected AdobePSDLayerNode(String str, AdobePSDLayerNodeType adobePSDLayerNodeType) {
        this.node = createManifestNodeWithName(str, adobePSDLayerNodeType);
        setAdobePSDLayerNode(this.node);
    }

    public String getName() {
        return this.node.getName();
    }

    public Integer getLayerId() {
        try {
            return (Integer) this.node.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerIdKey);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerNode.getLayerId", e2.getMessage());
            return -1;
        }
    }

    public boolean isVisible() {
        try {
            Boolean bool = (Boolean) this.node.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerVisibleKey);
            return bool == null || bool.booleanValue();
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerNode.isVisible", e2.getMessage());
            return true;
        }
    }

    AdobeDCXManifestNode getNode() {
        return this.node;
    }

    public AdobePSDLayerNodeType getType() {
        return this.type;
    }

    public void setType(AdobePSDLayerNodeType adobePSDLayerNodeType) {
        this.type = adobePSDLayerNodeType;
    }

    public long getLayerIndex() {
        if (this.node == null) {
            return -1L;
        }
        return this.node.getAbsoluteIndex();
    }

    public AdobePSDBlendMode getBlendMode() {
        String str;
        try {
            str = (String) ((JSONObject) this.node.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsKey)).get(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerNode.getBlendMode", e2.getMessage());
            str = null;
        }
        if (str == null) {
            return AdobePSDBlendMode.AdobePSDBlendModeNormal;
        }
        Integer indexOfBlendMode = getIndexOfBlendMode(blendModes, str);
        if (indexOfBlendMode.intValue() == -1 || indexOfBlendMode.intValue() < AdobePSDBlendMode.AdobePSDBlendModeNormal.value().intValue() || indexOfBlendMode.intValue() > AdobePSDBlendMode.AdobePSDBlendModePassThrough.value().intValue()) {
            return AdobePSDBlendMode.AdobePSDBlendModeUnknown;
        }
        return AdobePSDBlendMode.getEnumForIndex(indexOfBlendMode.intValue());
    }

    private Integer getIndexOfBlendMode(AdobePSDCompositeLayerBlendOptionsMode[] adobePSDCompositeLayerBlendOptionsModeArr, String str) {
        for (int i = 0; i < adobePSDCompositeLayerBlendOptionsModeArr.length; i++) {
            if (str.equals(adobePSDCompositeLayerBlendOptionsModeArr[i].toString())) {
                return Integer.valueOf(i);
            }
        }
        return -1;
    }

    static AdobePSDCompositeLayerBlendOptionsMode[] getBlendModes() {
        return blendModes;
    }

    AdobeDCXMutableManifestNode createManifestNodeWithName(String str, AdobePSDLayerNodeType adobePSDLayerNodeType) {
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode((String) null, str);
        switch (adobePSDLayerNodeType) {
            case AdobePSDLayerNodeTypeGroup:
                adobeDCXMutableManifestNode.setValue(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeGroupKey, AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeKey);
                return adobeDCXMutableManifestNode;
            case AdobePSDLayerNodeTypeRGBPixels:
                adobeDCXMutableManifestNode.setValue(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypePixelsKey, AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeKey);
                return adobeDCXMutableManifestNode;
            case AdobePSDLayerNodeTypeSolidColor:
                adobeDCXMutableManifestNode.setValue(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeFillKey, AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeKey);
                HashMap map = new HashMap();
                map.put(AdobePSDCompositeConstants.AdobePSDCompositeColorRedKey, 255);
                map.put(AdobePSDCompositeConstants.AdobePSDCompositeColorBlueKey, 255);
                map.put(AdobePSDCompositeConstants.AdobePSDCompositeColorGreenKey, 255);
                HashMap map2 = new HashMap();
                map2.put(AdobePSDCompositeConstants.AdobePSDCompositeLayerFillClassKey, AdobePSDCompositeConstants.AdobePSDCompositeLayerFillClassSolidKey);
                map2.put("color", map);
                adobeDCXMutableManifestNode.setValue(map2, AdobePSDCompositeConstants.AdobePSDCompositeLayerFillDataKey);
                return adobeDCXMutableManifestNode;
            default:
                if (!$assertionsDisabled) {
                    throw new AssertionError();
                }
                return adobeDCXMutableManifestNode;
        }
    }

    public AdobePSDMutableLayerNode getMutableCopy() {
        return new AdobePSDMutableLayerNode(this.node.getMutableCopy());
    }

    public float getBlendOpacity() {
        Float f2;
        try {
            f2 = (Float) ((JSONObject) this.node.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsKey)).get(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsOpacityKey);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerNode.getBlendOpacity", e2.getMessage());
            f2 = null;
        }
        if (f2 == null) {
            return 100.0f;
        }
        return f2.floatValue();
    }

    public boolean hasPixelMask() {
        try {
            return this.node.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey) != null;
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerNode.hasPixelMask", e2.getMessage());
            return false;
        }
    }

    public Rect getPixelMaskBounds() {
        try {
            return AdobePSDUtils.getRectFromPSDBounds(((JSONObject) this.node.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey)).get("psd#bounds"));
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerNode.getPixelMaskBounds", e2.getMessage());
            return new Rect();
        }
    }

    public boolean isPixelMaskEnabled() {
        Boolean bool;
        try {
            bool = (Boolean) ((JSONObject) this.node.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey)).get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerNode.isPixelMaskEnabled", e2.getMessage());
            bool = null;
        }
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean isPixelMaskLinked() {
        Boolean bool;
        try {
            bool = (Boolean) ((JSONObject) this.node.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey)).get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskLinkedKey);
        } catch (JSONException e2) {
            bool = null;
        }
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public Double getPixelMaskDensity() {
        Double dValueOf = Double.valueOf(100.0d);
        try {
            return (Double) ((JSONObject) this.node.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey)).get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDensityKey);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerNode.getPixelMaskDensity", e2.getMessage());
            return dValueOf;
        }
    }

    public Double getPixelMaskFeather() {
        Double dValueOf = Double.valueOf(0.0d);
        try {
            return (Double) ((JSONObject) this.node.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey)).get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskFeatherKey);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerNode.getPixelMaskFeather", e2.getMessage());
            return dValueOf;
        }
    }

    public AdobePSDRGBColor getFillColor() {
        try {
            JSONObject jSONObject = (JSONObject) this.node.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerFillDataKey);
            if (jSONObject == null || this.type != AdobePSDLayerNodeType.AdobePSDLayerNodeTypeSolidColor) {
                return null;
            }
            return AdobePSDUtils.getRgbColorFromPSDColorDict((JSONObject) jSONObject.get("color"));
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerNode.getFillColor", e2.getMessage());
            return null;
        }
    }

    public Rect getPixelLayerBounds() {
        try {
            return AdobePSDUtils.getRectFromPSDBounds(((JSONObject) this.node.getDictionary().get(AdobePSDCompositeConstants.AdobePSDCompositeLayerPixelsDataKey)).get("psd#bounds"));
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerNode.getPixelLayerBounds", e2.getMessage());
            return new Rect();
        }
    }

    String getDescription() {
        return getLayerId() + " - " + getName();
    }

    @Deprecated
    public Rect getBounds() {
        try {
            return AdobePSDUtils.getRectFromPSDBounds(this.node.getDictionary().get("psd#bounds"));
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDLayerNode.getBounds", e2.getMessage());
            return new Rect();
        }
    }
}
