package com.adobe.creativesdk.foundation.adobeinternal.storage.psd;

import com.adobe.creativesdk.foundation.storage.AdobePSDRGBColor;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobePSDPreviewLayerNode {
    private ArrayList<AdobePSDPreviewLayerNode> _children;
    private int absoluteLayerIndex;
    private Rect bounds;
    private JSONObject color;
    private AdobePSDPreviewContentLayerClass contentLayerClass;
    private int layerId;
    private ArrayList<AdobePSDPreviewLayerNode> layerNodes;
    private String name;
    private boolean pixelMask;
    private boolean pixelMaskEnabled;
    private AdobePSDPreviewLayerNodeType type;
    private boolean visible;

    public AdobePSDPreviewLayerNode(JSONObject jSONObject, int i, ArrayList<AdobePSDPreviewLayerNode> arrayList) {
        if (jSONObject != null) {
            try {
                this._children = arrayList;
                this.layerNodes = arrayList;
                this.name = jSONObject.getString("layerName");
                this.layerId = jSONObject.getInt("layerId");
                this.absoluteLayerIndex = i;
                String string = jSONObject.getString("type");
                if (string.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypePixelsKey)) {
                    this.type = AdobePSDPreviewLayerNodeType.AdobePSDPreviewLayerNodeTypePixelsLayer;
                } else if (string.equals("textLayer")) {
                    this.type = AdobePSDPreviewLayerNodeType.AdobePSDPreviewLayerNodeTypeTextLayer;
                } else if (string.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeGroupKey)) {
                    this.type = AdobePSDPreviewLayerNodeType.AdobePSDPreviewLayerNodeTypeLayerGroup;
                } else if (string.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeFillKey)) {
                    this.type = AdobePSDPreviewLayerNodeType.AdobePSDPreviewLayerNodeTypeContentLayer;
                } else if (string.equals("backgroundLayer")) {
                    this.type = AdobePSDPreviewLayerNodeType.AdobePSDPreviewLayerNodeTypeBackgroundLayer;
                } else if (string.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerTypeAdjustmentKey)) {
                    this.type = AdobePSDPreviewLayerNodeType.AdobePSDPreviewLayerNodeTypeAdjustmentLayer;
                } else {
                    this.type = AdobePSDPreviewLayerNodeType.AdobePSDPreviewLayerNodeTypeUnknown;
                }
                if (this.type == AdobePSDPreviewLayerNodeType.AdobePSDPreviewLayerNodeTypeContentLayer) {
                    String string2 = jSONObject.getJSONObject("properties").getString(AdobePSDCompositeConstants.AdobePSDCompositeLayerFillClassKey);
                    if (string2.equals(AdobePSDCompositeConstants.AdobePSDCompositeLayerFillClassSolidKey)) {
                        this.contentLayerClass = AdobePSDPreviewContentLayerClass.AdobePSDPreviewContentLayerClassSolidColorFill;
                    } else if (string2.equals("gradientLayer")) {
                        this.contentLayerClass = AdobePSDPreviewContentLayerClass.AdobePSDPreviewContentLayerClassGradientFill;
                    } else if (string2.equals("patternLayer")) {
                        this.contentLayerClass = AdobePSDPreviewContentLayerClass.AdobePSDPreviewContentLayerClassPatternFill;
                    } else {
                        this.contentLayerClass = AdobePSDPreviewContentLayerClass.AdobePSDPreviewContentLayerClassUnknown;
                    }
                }
                if (jSONObject.has("visible")) {
                    this.visible = jSONObject.getBoolean("visible");
                }
                if (jSONObject.has("hasPixelMask")) {
                    this.pixelMask = jSONObject.getBoolean("hasPixelMask");
                }
                if (jSONObject.has("pixelMaskEnabled")) {
                    this.pixelMaskEnabled = jSONObject.getBoolean("pixelMaskEnabled");
                }
                if (jSONObject.has("bounds")) {
                    this.bounds = AdobePSDUtils.getRectFromPSDBounds(jSONObject.getJSONObject("bounds"));
                }
                if (jSONObject.has("properties") && jSONObject.getJSONObject("properties").has("color")) {
                    this.color = jSONObject.getJSONObject("properties").getJSONObject("color");
                }
            } catch (JSONException e2) {
            }
        }
    }

    public AdobePSDRGBColor solidColorFill() {
        if (this.type == AdobePSDPreviewLayerNodeType.AdobePSDPreviewLayerNodeTypeContentLayer && this.contentLayerClass == AdobePSDPreviewContentLayerClass.AdobePSDPreviewContentLayerClassSolidColorFill) {
            return AdobePSDUtils.rgbColorFromPSDColorDict(this.color);
        }
        return null;
    }

    public String getName() {
        return this.name;
    }

    public int getLayerId() {
        return this.layerId;
    }

    public AdobePSDPreviewLayerNodeType getType() {
        return this.type;
    }

    public AdobePSDPreviewContentLayerClass getContentLayerClass() {
        return this.contentLayerClass;
    }

    public boolean isVisible() {
        return this.visible;
    }

    public int getAbsoluteLayerIndex() {
        return this.absoluteLayerIndex;
    }

    public Rect getBounds() {
        return this.bounds;
    }

    public ArrayList<AdobePSDPreviewLayerNode> getLayerNodes() {
        return this.layerNodes;
    }

    public boolean hasPixelMask() {
        return this.pixelMask;
    }

    public boolean isPixelMaskEnabled() {
        return this.pixelMaskEnabled;
    }

    public JSONObject getColor() {
        return this.color;
    }

    public ArrayList<AdobePSDPreviewLayerNode> getChildren() {
        return this._children;
    }
}
