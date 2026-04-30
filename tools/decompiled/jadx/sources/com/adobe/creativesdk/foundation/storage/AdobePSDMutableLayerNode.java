package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDBlendMode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDLayerNodeType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.Point;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.Rect;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePSDMutableLayerNode extends AdobePSDLayerNode {
    static final /* synthetic */ boolean $assertionsDisabled;
    AdobeDCXMutableManifestNode mutableNode;

    static {
        $assertionsDisabled = !AdobePSDMutableLayerNode.class.desiredAssertionStatus();
    }

    AdobePSDMutableLayerNode(AdobeDCXMutableManifestNode adobeDCXMutableManifestNode) {
        super(adobeDCXMutableManifestNode);
        this.mutableNode = adobeDCXMutableManifestNode;
    }

    public AdobePSDMutableLayerNode(String str, AdobePSDLayerNodeType adobePSDLayerNodeType) {
        super(str, adobePSDLayerNodeType);
        this.mutableNode = (AdobeDCXMutableManifestNode) this.node;
    }

    public void setName(String str) {
        this.mutableNode.setName(str);
    }

    public void setVisible(boolean z) {
        if (z) {
            this.mutableNode.remove(AdobePSDCompositeConstants.AdobePSDCompositeLayerVisibleKey);
        } else {
            this.mutableNode.setValue(false, AdobePSDCompositeConstants.AdobePSDCompositeLayerVisibleKey);
        }
    }

    public void setBlendMode(AdobePSDBlendMode adobePSDBlendMode) {
        if (!$assertionsDisabled && (adobePSDBlendMode.value().intValue() < 0 || adobePSDBlendMode.value().intValue() >= getBlendModes().length)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && adobePSDBlendMode == AdobePSDBlendMode.AdobePSDBlendModePassThrough && getType() != AdobePSDLayerNodeType.AdobePSDLayerNodeTypeGroup) {
            throw new AssertionError();
        }
        String string = getBlendModes()[adobePSDBlendMode.value().intValue()].toString();
        JSONObject jSONObject = (JSONObject) this.mutableNode.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsKey);
        if (jSONObject == null) {
            if (adobePSDBlendMode != AdobePSDBlendMode.AdobePSDBlendModeNormal) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey, string);
                    jSONObject = jSONObject2;
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobePSDMutableLayerNode.setBlendMode", e2.getMessage());
                    jSONObject = jSONObject2;
                }
            }
        } else if (adobePSDBlendMode != AdobePSDBlendMode.AdobePSDBlendModeNormal) {
            try {
                jSONObject.put(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey, string);
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, "AdobePSDMutableLayerNode.setBlendMode", e3.getMessage());
            }
        } else {
            jSONObject.remove(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey);
            if (jSONObject.length() < 1) {
                this.mutableNode.remove(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsKey);
                jSONObject = null;
            }
        }
        if (jSONObject != null) {
            this.mutableNode.setValue(jSONObject, AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsKey);
        }
    }

    public void setBlendOpacity(Float f2) {
        if (!$assertionsDisabled && (f2.floatValue() < 0.0d || f2.floatValue() > 100.0d)) {
            throw new AssertionError();
        }
        JSONObject jSONObject = (JSONObject) this.mutableNode.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsKey);
        if (jSONObject == null) {
            if (f2.floatValue() < 100.0d) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsOpacityKey, f2);
                    jSONObject = jSONObject2;
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobePSDMutableLayerNode.setBlendOpacity", e2.getMessage());
                    jSONObject = jSONObject2;
                }
            }
        } else if (f2.floatValue() < 100.0d) {
            try {
                jSONObject.put(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsOpacityKey, f2);
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, "AdobePSDMutableLayerNode.setBlendOpacity", e3.getMessage());
            }
        } else {
            jSONObject.remove(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsOpacityKey);
            if (jSONObject.length() < 1) {
                this.mutableNode.remove(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsKey);
                jSONObject = null;
            }
        }
        if (jSONObject != null) {
            this.mutableNode.setValue(jSONObject, AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsKey);
        }
    }

    public Point getPixelMaskOrigin() {
        return getPixelMaskBounds().getOrigin();
    }

    public void setPixelMaskOrigin(Point point) {
        JSONObject jSONObject = (JSONObject) this.mutableNode.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
        if (!$assertionsDisabled && jSONObject == null) {
            throw new AssertionError();
        }
        Rect pixelMaskBounds = getPixelMaskBounds();
        pixelMaskBounds.origin = point;
        try {
            jSONObject.put("psd#bounds", AdobePSDUtils.getBoundsFromRect(pixelMaskBounds));
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDMutableLayerNode.setPixelMaskOrigin", e2.getMessage());
        }
        this.mutableNode.setValue(jSONObject, AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
    }

    public void setPixelMaskEnabled(boolean z) {
        JSONObject jSONObject = (JSONObject) this.mutableNode.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
        if (!$assertionsDisabled && jSONObject == null) {
            throw new AssertionError();
        }
        if (z) {
            jSONObject.remove(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey);
        } else {
            try {
                jSONObject.put(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey, false);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobePSDMutableLayerNode.setPixelMaskEnabled", e2.getMessage());
            }
        }
        this.mutableNode.setValue(jSONObject, AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
    }

    public void setPixelMaskLinked(boolean z) {
        JSONObject jSONObject = (JSONObject) this.mutableNode.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
        if (!$assertionsDisabled && jSONObject == null) {
            throw new AssertionError();
        }
        if (z) {
            jSONObject.remove(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskLinkedKey);
        } else {
            try {
                jSONObject.put(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskLinkedKey, false);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobePSDMutableLayerNode.setPixelMaskLinked", e2.getMessage());
            }
        }
        this.mutableNode.setValue(jSONObject, AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
    }

    public void setPixelMaskDensity(float f2) {
        JSONObject jSONObject = (JSONObject) this.mutableNode.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
        if (!$assertionsDisabled && jSONObject == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && (f2 < 0.0d || f2 > 100.0d)) {
            throw new AssertionError();
        }
        if (f2 == 100.0d) {
            jSONObject.remove(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDensityKey);
        } else {
            try {
                jSONObject.put(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDensityKey, f2);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobePSDMutableLayerNode.setPixelMaskDensity", e2.getMessage());
            }
        }
        this.mutableNode.setValue(jSONObject, AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
    }

    public void setPixelMaskFeather(float f2) {
        JSONObject jSONObject = (JSONObject) this.mutableNode.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
        if (!$assertionsDisabled && jSONObject == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && (f2 < 0.0d || f2 > 1000.0d)) {
            throw new AssertionError();
        }
        if (f2 == 0.0d) {
            jSONObject.remove(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskFeatherKey);
        } else {
            try {
                jSONObject.put(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskFeatherKey, f2);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobePSDMutableLayerNode.setPixelMaskFeather", e2.getMessage());
            }
        }
        this.mutableNode.setValue(jSONObject, AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskDataKey);
    }

    public Point getPixelLayerOrigin() {
        return getPixelLayerBounds().origin;
    }

    public void setPixelLayerOrigin(Point point) {
        JSONObject jSONObject = (JSONObject) this.mutableNode.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerPixelsDataKey);
        if (!$assertionsDisabled && jSONObject == null) {
            throw new AssertionError();
        }
        Rect pixelLayerBounds = getPixelLayerBounds();
        pixelLayerBounds.origin = point;
        try {
            jSONObject.put("psd#bounds", AdobePSDUtils.getBoundsFromRect(pixelLayerBounds));
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDMutableLayerNode.setPixelLayerOrigin", e2.getMessage());
        }
        this.mutableNode.setValue(jSONObject, AdobePSDCompositeConstants.AdobePSDCompositeLayerPixelsDataKey);
    }

    public void setFillColor(AdobePSDRGBColor adobePSDRGBColor) {
        if (!$assertionsDisabled && getType() != AdobePSDLayerNodeType.AdobePSDLayerNodeTypeSolidColor) {
            throw new AssertionError();
        }
        JSONObject jSONObject = (JSONObject) this.mutableNode.get(AdobePSDCompositeConstants.AdobePSDCompositeLayerFillDataKey);
        if (jSONObject == null) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(AdobePSDCompositeConstants.AdobePSDCompositeLayerFillClassKey, AdobePSDCompositeConstants.AdobePSDCompositeLayerFillClassSolidKey);
                jSONObject.put("color", AdobePSDUtils.getPsdColorDictFromRGBColor(adobePSDRGBColor));
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobePSDMutableLayerNode.setFillColor", e2.getMessage());
            }
        } else {
            try {
                jSONObject.put("color", AdobePSDUtils.getPsdColorDictFromRGBColor(adobePSDRGBColor));
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, "AdobePSDMutableLayerNode.setFillColor", e3.getMessage());
            }
        }
        this.mutableNode.setValue(jSONObject, AdobePSDCompositeConstants.AdobePSDCompositeLayerFillDataKey);
    }
}
