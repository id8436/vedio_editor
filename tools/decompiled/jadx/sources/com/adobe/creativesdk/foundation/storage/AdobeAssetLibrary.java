package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeAssetLibraryItemCharacterStyle;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeAssetLibraryItemLayoutStyle;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.lang.ref.WeakReference;
import java.net.URI;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AdobeAssetLibrary extends AdobeAssetPackage {
    private static final String AdobeAssetLibraryItemStockImageTrackingDataKey = "adobestock#trackingdata";
    private HashMap<String, AdobeAssetLibraryItemAnimation> animations;
    private HashMap<String, AdobeAssetLibraryItemBrush> brushes;
    private HashMap<String, AdobeAssetLibraryItemCharacterStyle> characterStyles;
    private HashMap<String, AdobeAssetLibraryItemColorTheme> colorThemes;
    private HashMap<String, AdobeAssetLibraryItemColor> colors;
    private HashMap<String, AdobeAssetLibraryItemImage> images;
    private HashMap<String, AdobeAssetLibraryItemLayoutStyle> layoutStyles;
    private String libraryID;
    private HashMap<String, AdobeAssetLibraryItem3DLight> lights;
    private HashMap<String, AdobeAssetLibraryItemLook> looks;
    private HashMap<String, AdobeAssetLibraryItem3DMaterial> materials;
    private HashMap<String, AdobeAssetLibraryItem3DModel> models;
    private HashMap<String, AdobeAssetLibraryItemPattern> patterns;
    private HashMap<String, AdobeAssetLibraryItemTemplate> templates;

    public HashMap<String, AdobeAssetLibraryItemColor> getColors() {
        return this.colors;
    }

    public HashMap<String, AdobeAssetLibraryItemColorTheme> getColorThemes() {
        return this.colorThemes;
    }

    public HashMap<String, AdobeAssetLibraryItemImage> getImages() {
        return this.images;
    }

    public HashMap<String, AdobeAssetLibraryItemBrush> getBrushes() {
        return this.brushes;
    }

    public HashMap<String, AdobeAssetLibraryItemCharacterStyle> getCharacterStyles() {
        return this.characterStyles;
    }

    public HashMap<String, AdobeAssetLibraryItemLayoutStyle> getLayoutStyles() {
        return this.layoutStyles;
    }

    public HashMap<String, AdobeAssetLibraryItemLook> getLooks() {
        return this.looks;
    }

    public HashMap<String, AdobeAssetLibraryItemPattern> getPatterns() {
        return this.patterns;
    }

    public HashMap<String, AdobeAssetLibraryItemTemplate> getTemplates() {
        return this.templates;
    }

    public HashMap<String, AdobeAssetLibraryItem3DMaterial> get3DMaterials() {
        return this.materials;
    }

    public HashMap<String, AdobeAssetLibraryItem3DLight> get3DLight() {
        return this.lights;
    }

    public HashMap<String, AdobeAssetLibraryItem3DModel> get3DModels() {
        return this.models;
    }

    public HashMap<String, AdobeAssetLibraryItemAnimation> getAnimations() {
        return this.animations;
    }

    protected void setColors(HashMap<String, AdobeAssetLibraryItemColor> map) {
        this.colors = map;
    }

    protected void setColorThemes(HashMap<String, AdobeAssetLibraryItemColorTheme> map) {
        this.colorThemes = map;
    }

    protected void setImages(HashMap<String, AdobeAssetLibraryItemImage> map) {
        this.images = map;
    }

    protected void setBrushes(HashMap<String, AdobeAssetLibraryItemBrush> map) {
        this.brushes = map;
    }

    protected void setLooks(HashMap<String, AdobeAssetLibraryItemLook> map) {
        this.looks = map;
    }

    protected void setCharacterStyles(HashMap<String, AdobeAssetLibraryItemCharacterStyle> map) {
        this.characterStyles = map;
    }

    protected void setLayoutStyles(HashMap<String, AdobeAssetLibraryItemLayoutStyle> map) {
        this.layoutStyles = map;
    }

    protected void setPatterns(HashMap<String, AdobeAssetLibraryItemPattern> map) {
        this.patterns = map;
    }

    protected void setTemplates(HashMap<String, AdobeAssetLibraryItemTemplate> map) {
        this.templates = map;
    }

    protected void set3DModels(HashMap<String, AdobeAssetLibraryItem3DModel> map) {
        this.models = map;
    }

    protected void set3DLights(HashMap<String, AdobeAssetLibraryItem3DLight> map) {
        this.lights = map;
    }

    protected void set3DMaterials(HashMap<String, AdobeAssetLibraryItem3DMaterial> map) {
        this.materials = map;
    }

    protected void setAnimations(HashMap<String, AdobeAssetLibraryItemAnimation> map) {
        this.animations = map;
    }

    private void initcommon() {
        this.brushes = new HashMap<>();
        this.characterStyles = new HashMap<>();
        this.colors = new HashMap<>();
        this.colorThemes = new HashMap<>();
        this.layoutStyles = new HashMap<>();
        this.images = new HashMap<>();
        this.looks = new HashMap<>();
        this.patterns = new HashMap<>();
        this.templates = new HashMap<>();
        this.materials = new HashMap<>();
        this.lights = new HashMap<>();
        this.models = new HashMap<>();
        this.animations = new HashMap<>();
    }

    protected AdobeAssetLibrary() {
        initcommon();
    }

    protected AdobeAssetLibrary(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageResourceCollection adobeStorageResourceCollection2) {
        super(adobeStorageResourceCollection, adobeStorageResourceCollection2);
        initcommon();
    }

    protected void loadLibraryMetadata() {
        AdobeAssetLibraryItemImage adobeAssetLibraryItemImage;
        AdobeAssetLibrary adobeAssetLibrary = (AdobeAssetLibrary) new WeakReference(this).get();
        if (adobeAssetLibrary != null && adobeAssetLibrary.getManifest() != null) {
            Map<String, AdobeDCXManifestNode> allChildren = adobeAssetLibrary.getManifest().getAllChildren();
            adobeAssetLibrary.libraryID = adobeAssetLibrary.getManifest().getCompositeId();
            HashMap<String, AdobeAssetLibraryItemBrush> map = new HashMap<>();
            HashMap<String, AdobeAssetLibraryItemCharacterStyle> map2 = new HashMap<>();
            HashMap<String, AdobeAssetLibraryItemColor> map3 = new HashMap<>();
            HashMap<String, AdobeAssetLibraryItemColorTheme> map4 = new HashMap<>();
            HashMap<String, AdobeAssetLibraryItemLayoutStyle> map5 = new HashMap<>();
            HashMap<String, AdobeAssetLibraryItemImage> map6 = new HashMap<>();
            HashMap<String, AdobeAssetLibraryItemLook> map7 = new HashMap<>();
            HashMap<String, AdobeAssetLibraryItemPattern> map8 = new HashMap<>();
            HashMap<String, AdobeAssetLibraryItemTemplate> map9 = new HashMap<>();
            HashMap<String, AdobeAssetLibraryItem3DMaterial> map10 = new HashMap<>();
            HashMap<String, AdobeAssetLibraryItem3DLight> map11 = new HashMap<>();
            HashMap<String, AdobeAssetLibraryItem3DModel> map12 = new HashMap<>();
            HashMap<String, AdobeAssetLibraryItemAnimation> map13 = new HashMap<>();
            for (AdobeDCXManifestNode adobeDCXManifestNode : allChildren.values()) {
                if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryBrushElementType)) {
                    AdobeDCXComponent adobeDCXComponentPrimaryComponentForNode = adobeAssetLibrary.primaryComponentForNode(adobeDCXManifestNode);
                    String componentId = null;
                    if (adobeDCXComponentPrimaryComponentForNode != null) {
                        componentId = adobeDCXComponentPrimaryComponentForNode.getComponentId();
                    }
                    AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), componentId)));
                    adobeStorageResourceItemResourceFromHref.type = adobeDCXManifestNode.getType();
                    AdobeAssetFile adobeAssetFile = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref, adobeAssetLibrary.resourceCollection());
                    adobeAssetFile.setCloud(getCloud());
                    AdobeDCXComponent adobeDCXComponentRenditionComponentForNode = adobeAssetLibrary.renditionComponentForNode(adobeDCXManifestNode);
                    String name = null;
                    AdobeAssetFile adobeAssetFile2 = null;
                    int height = 0;
                    int width = 0;
                    if (adobeDCXComponentRenditionComponentForNode != null) {
                        name = adobeDCXComponentRenditionComponentForNode.getName();
                        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref2 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), adobeDCXComponentRenditionComponentForNode.getComponentId())));
                        adobeStorageResourceItemResourceFromHref2.type = "image/png";
                        adobeAssetFile2 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref2, adobeAssetLibrary.resourceCollection());
                        adobeAssetFile2.setCloud(getCloud());
                        height = adobeDCXComponentRenditionComponentForNode.getHeight();
                        width = adobeDCXComponentRenditionComponentForNode.getWidth();
                    }
                    map.put(adobeDCXManifestNode.getNodeId(), new AdobeAssetLibraryItemBrush(adobeDCXManifestNode, name, adobeAssetFile, adobeAssetFile2, height, width, adobeAssetLibrary));
                } else if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType)) {
                    JSONObject jSONObject = (JSONObject) adobeAssetLibrary.characterStyleNodeForNode(adobeDCXManifestNode).get("characterstyle#data");
                    AdobeDCXComponent adobeDCXComponentRenditionComponentForNode2 = adobeAssetLibrary.renditionComponentForNode(adobeDCXManifestNode);
                    String name2 = null;
                    AdobeAssetFile adobeAssetFile3 = null;
                    int height2 = 0;
                    int width2 = 0;
                    if (adobeDCXComponentRenditionComponentForNode2 != null) {
                        name2 = adobeDCXComponentRenditionComponentForNode2.getName();
                        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref3 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), adobeDCXComponentRenditionComponentForNode2.getComponentId())));
                        adobeStorageResourceItemResourceFromHref3.type = "image/png";
                        adobeAssetFile3 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref3, adobeAssetLibrary.resourceCollection());
                        adobeAssetFile3.setCloud(getCloud());
                        height2 = adobeDCXComponentRenditionComponentForNode2.getHeight();
                        width2 = adobeDCXComponentRenditionComponentForNode2.getWidth();
                    }
                    map2.put(adobeDCXManifestNode.getNodeId(), new AdobeAssetLibraryItemCharacterStyle(adobeDCXManifestNode, name2, jSONObject, adobeAssetFile3, height2, width2, adobeAssetLibrary));
                } else if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType)) {
                    AdobeDCXManifestNode adobeDCXManifestNodeColorNodeForNode = adobeAssetLibrary.colorNodeForNode(adobeDCXManifestNode);
                    String strOptString = null;
                    String strOptString2 = null;
                    Object objOpt = null;
                    Number number = null;
                    String strOptString3 = null;
                    if (adobeDCXManifestNodeColorNodeForNode != null) {
                        JSONObject jSONObject2 = (JSONObject) adobeDCXManifestNodeColorNodeForNode.get("color#data");
                        strOptString = jSONObject2.optString("type");
                        strOptString2 = jSONObject2.optString(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey);
                        objOpt = jSONObject2.opt("value");
                        Number number2 = (Number) jSONObject2.opt("alpha");
                        strOptString3 = jSONObject2.optString("profileName");
                        number = number2;
                    }
                    AdobeDCXManifestNode adobeDCXManifestNodeColorRenditionNodeForNode = adobeAssetLibrary.colorRenditionNodeForNode(adobeDCXManifestNode);
                    String name3 = null;
                    String strOptString4 = null;
                    String strOptString5 = null;
                    Object objOpt2 = null;
                    Number number3 = null;
                    String strOptString6 = null;
                    if (adobeDCXManifestNodeColorRenditionNodeForNode != null) {
                        name3 = adobeDCXManifestNodeColorRenditionNodeForNode.getName();
                        JSONObject jSONObject3 = (JSONObject) adobeDCXManifestNodeColorRenditionNodeForNode.get("color#data");
                        strOptString4 = jSONObject3.optString("type");
                        strOptString5 = jSONObject3.optString(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey);
                        objOpt2 = jSONObject3.opt("value");
                        Number number4 = (Number) jSONObject3.opt("alpha");
                        strOptString6 = jSONObject3.optString("profileName");
                        number3 = number4;
                    }
                    AdobeAssetLibraryItemColor adobeAssetLibraryItemColor = new AdobeAssetLibraryItemColor(adobeDCXManifestNode, name3, strOptString, strOptString2, objOpt, number, strOptString3, strOptString4, strOptString5, objOpt2, number3, strOptString6, adobeAssetLibrary);
                    adobeAssetLibraryItemColor.color();
                    map3.put(adobeDCXManifestNode.getNodeId(), adobeAssetLibraryItemColor);
                } else if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorThemeElementType)) {
                    AdobeDCXManifestNode adobeDCXManifestNodeColorThemeNodeForNode = adobeAssetLibrary.colorThemeNodeForNode(adobeDCXManifestNode);
                    if (adobeDCXManifestNodeColorThemeNodeForNode != null) {
                        JSONObject jSONObject4 = (JSONObject) adobeDCXManifestNodeColorThemeNodeForNode.get("colortheme#data");
                        map4.put(adobeDCXManifestNode.getNodeId(), new AdobeAssetLibraryItemColorTheme(adobeDCXManifestNode, (JSONArray) jSONObject4.opt("tags"), jSONObject4.optString("rule"), jSONObject4.optString("mood"), (JSONArray) jSONObject4.opt("swatches"), adobeAssetLibrary));
                    }
                } else if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType)) {
                    AdobeDCXComponent adobeDCXComponentPrimaryComponentForNode2 = adobeAssetLibrary.primaryComponentForNode(adobeDCXManifestNode);
                    String componentId2 = "";
                    int height3 = 0;
                    int width3 = 0;
                    String type = "";
                    if (adobeDCXComponentPrimaryComponentForNode2 != null) {
                        componentId2 = adobeDCXComponentPrimaryComponentForNode2.getComponentId();
                        height3 = adobeDCXComponentPrimaryComponentForNode2.getHeight();
                        width3 = adobeDCXComponentPrimaryComponentForNode2.getWidth();
                        type = adobeDCXComponentPrimaryComponentForNode2.getType();
                    }
                    AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref4 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), componentId2)));
                    adobeStorageResourceItemResourceFromHref4.type = adobeDCXManifestNode.getType();
                    AdobeAssetFile adobeAssetFile4 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref4, adobeAssetLibrary.resourceCollection());
                    adobeAssetFile4.setCloud(getCloud());
                    AdobeDCXComponent adobeDCXComponentRenditionComponentForNode3 = adobeAssetLibrary.renditionComponentForNode(adobeDCXManifestNode);
                    String name4 = null;
                    AdobeAssetFile adobeAssetFile5 = null;
                    int height4 = 0;
                    int width4 = 0;
                    if (adobeDCXComponentRenditionComponentForNode3 != null) {
                        name4 = adobeDCXComponentRenditionComponentForNode3.getName();
                        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref5 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), adobeDCXComponentRenditionComponentForNode3.getComponentId())));
                        adobeStorageResourceItemResourceFromHref5.type = "image/png";
                        adobeAssetFile5 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref5, adobeAssetLibrary.resourceCollection());
                        adobeAssetFile5.setCloud(getCloud());
                        height4 = adobeDCXComponentRenditionComponentForNode3.getHeight();
                        width4 = adobeDCXComponentRenditionComponentForNode3.getWidth();
                    }
                    if (isManifestNodeStockImage(adobeDCXManifestNode)) {
                        adobeAssetLibraryItemImage = new AdobeAssetLibraryItemStockImage(adobeDCXManifestNode, name4, adobeAssetFile5, height4, width4, adobeAssetFile5, height4, width4, type, adobeAssetLibrary);
                    } else {
                        adobeAssetLibraryItemImage = new AdobeAssetLibraryItemImage(adobeDCXManifestNode, name4, adobeAssetFile4, height3, width3, adobeAssetFile5, height4, width4, type, adobeAssetLibrary);
                    }
                    map6.put(adobeDCXManifestNode.getNodeId(), adobeAssetLibraryItemImage);
                } else if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryLayerStyleElementType)) {
                    AdobeDCXComponent adobeDCXComponentPrimaryComponentForNode3 = adobeAssetLibrary.primaryComponentForNode(adobeDCXManifestNode);
                    String componentId3 = null;
                    if (adobeDCXComponentPrimaryComponentForNode3 != null) {
                        componentId3 = adobeDCXComponentPrimaryComponentForNode3.getComponentId();
                    }
                    AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref6 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), componentId3)));
                    adobeStorageResourceItemResourceFromHref6.type = adobeDCXManifestNode.getType();
                    AdobeAssetFile adobeAssetFile6 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref6, adobeAssetLibrary.resourceCollection());
                    adobeAssetFile6.setCloud(getCloud());
                    AdobeDCXComponent adobeDCXComponentRenditionComponentForNode4 = adobeAssetLibrary.renditionComponentForNode(adobeDCXManifestNode);
                    String name5 = null;
                    AdobeAssetFile adobeAssetFile7 = null;
                    int height5 = 0;
                    int width5 = 0;
                    if (adobeDCXComponentRenditionComponentForNode4 != null) {
                        name5 = adobeDCXComponentRenditionComponentForNode4.getName();
                        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref7 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), adobeDCXComponentRenditionComponentForNode4.getComponentId())));
                        adobeStorageResourceItemResourceFromHref7.type = "image/png";
                        adobeAssetFile7 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref7, adobeAssetLibrary.resourceCollection());
                        adobeAssetFile7.setCloud(getCloud());
                        height5 = adobeDCXComponentRenditionComponentForNode4.getHeight();
                        width5 = adobeDCXComponentRenditionComponentForNode4.getWidth();
                    }
                    map5.put(adobeDCXManifestNode.getNodeId(), new AdobeAssetLibraryItemLayoutStyle(adobeDCXManifestNode, name5, adobeAssetFile6, adobeAssetFile7, height5, width5, adobeAssetLibrary));
                } else if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals("application/vnd.adobe.element.look+dcx")) {
                    AdobeDCXComponent adobeDCXComponentRenditionComponentForNode5 = adobeAssetLibrary.renditionComponentForNode(adobeDCXManifestNode);
                    String name6 = null;
                    AdobeAssetFile adobeAssetFile8 = null;
                    int height6 = 0;
                    int width6 = 0;
                    if (adobeDCXComponentRenditionComponentForNode5 != null) {
                        name6 = adobeDCXComponentRenditionComponentForNode5.getName();
                        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref8 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), adobeDCXComponentRenditionComponentForNode5.getComponentId())));
                        adobeStorageResourceItemResourceFromHref8.type = "image/png";
                        adobeAssetFile8 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref8, adobeAssetLibrary.resourceCollection());
                        adobeAssetFile8.setCloud(getCloud());
                        height6 = adobeDCXComponentRenditionComponentForNode5.getHeight();
                        width6 = adobeDCXComponentRenditionComponentForNode5.getWidth();
                    }
                    map7.put(adobeDCXManifestNode.getNodeId(), new AdobeAssetLibraryItemLook(adobeDCXManifestNode, name6, adobeAssetFile8, height6, width6, adobeAssetLibrary));
                } else if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryPatternElementType)) {
                    AdobeDCXComponent adobeDCXComponentRenditionComponentForNode6 = adobeAssetLibrary.renditionComponentForNode(adobeDCXManifestNode);
                    String name7 = null;
                    AdobeAssetFile adobeAssetFile9 = null;
                    int height7 = 0;
                    int width7 = 0;
                    if (adobeDCXComponentRenditionComponentForNode6 != null) {
                        name7 = adobeDCXComponentRenditionComponentForNode6.getName();
                        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref9 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), adobeDCXComponentRenditionComponentForNode6.getComponentId())));
                        adobeStorageResourceItemResourceFromHref9.type = "image/png";
                        adobeAssetFile9 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref9, adobeAssetLibrary.resourceCollection());
                        adobeAssetFile9.setCloud(getCloud());
                        height7 = adobeDCXComponentRenditionComponentForNode6.getHeight();
                        width7 = adobeDCXComponentRenditionComponentForNode6.getWidth();
                    }
                    map8.put(adobeDCXManifestNode.getNodeId(), new AdobeAssetLibraryItemPattern(adobeDCXManifestNode, name7, adobeAssetFile9, height7, width7, adobeAssetLibrary));
                } else if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryTemplateElementType)) {
                    AdobeDCXComponent adobeDCXComponentRenditionComponentForNode7 = adobeAssetLibrary.renditionComponentForNode(adobeDCXManifestNode);
                    String name8 = null;
                    AdobeAssetFile adobeAssetFile10 = null;
                    int height8 = 0;
                    int width8 = 0;
                    if (adobeDCXComponentRenditionComponentForNode7 != null) {
                        name8 = adobeDCXComponentRenditionComponentForNode7.getName();
                        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref10 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), adobeDCXComponentRenditionComponentForNode7.getComponentId())));
                        adobeStorageResourceItemResourceFromHref10.type = "image/png";
                        adobeAssetFile10 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref10, adobeAssetLibrary.resourceCollection());
                        adobeAssetFile10.setCloud(getCloud());
                        height8 = adobeDCXComponentRenditionComponentForNode7.getHeight();
                        width8 = adobeDCXComponentRenditionComponentForNode7.getWidth();
                    }
                    map9.put(adobeDCXManifestNode.getNodeId(), new AdobeAssetLibraryItemTemplate(adobeDCXManifestNode, name8, adobeAssetFile10, height8, width8, adobeAssetLibrary));
                } else if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DMaterialElementType)) {
                    AdobeDCXComponent adobeDCXComponentRenditionComponentForNode8 = adobeAssetLibrary.renditionComponentForNode(adobeDCXManifestNode);
                    String name9 = null;
                    AdobeAssetFile adobeAssetFile11 = null;
                    int height9 = 0;
                    int width9 = 0;
                    if (adobeDCXComponentRenditionComponentForNode8 != null) {
                        name9 = adobeDCXComponentRenditionComponentForNode8.getName();
                        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref11 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), adobeDCXComponentRenditionComponentForNode8.getComponentId())));
                        adobeStorageResourceItemResourceFromHref11.type = "image/png";
                        adobeAssetFile11 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref11, adobeAssetLibrary.resourceCollection());
                        adobeAssetFile11.setCloud(getCloud());
                        height9 = adobeDCXComponentRenditionComponentForNode8.getHeight();
                        width9 = adobeDCXComponentRenditionComponentForNode8.getWidth();
                    }
                    map10.put(adobeDCXManifestNode.getNodeId(), new AdobeAssetLibraryItem3DMaterial(adobeDCXManifestNode, name9, adobeAssetFile11, height9, width9, adobeAssetLibrary));
                } else if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DLightElementType)) {
                    AdobeDCXComponent adobeDCXComponentRenditionComponentForNode9 = adobeAssetLibrary.renditionComponentForNode(adobeDCXManifestNode);
                    String name10 = null;
                    AdobeAssetFile adobeAssetFile12 = null;
                    int height10 = 0;
                    int width10 = 0;
                    if (adobeDCXComponentRenditionComponentForNode9 != null) {
                        name10 = adobeDCXComponentRenditionComponentForNode9.getName();
                        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref12 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), adobeDCXComponentRenditionComponentForNode9.getComponentId())));
                        adobeStorageResourceItemResourceFromHref12.type = "image/png";
                        adobeAssetFile12 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref12, adobeAssetLibrary.resourceCollection());
                        adobeAssetFile12.setCloud(getCloud());
                        height10 = adobeDCXComponentRenditionComponentForNode9.getHeight();
                        width10 = adobeDCXComponentRenditionComponentForNode9.getWidth();
                    }
                    map11.put(adobeDCXManifestNode.getNodeId(), new AdobeAssetLibraryItem3DLight(adobeDCXManifestNode, name10, adobeAssetFile12, height10, width10, adobeAssetLibrary));
                } else if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibrary3DModelElementType)) {
                    AdobeDCXComponent adobeDCXComponentRenditionComponentForNode10 = adobeAssetLibrary.renditionComponentForNode(adobeDCXManifestNode);
                    String name11 = null;
                    AdobeAssetFile adobeAssetFile13 = null;
                    int height11 = 0;
                    int width11 = 0;
                    if (adobeDCXComponentRenditionComponentForNode10 != null) {
                        name11 = adobeDCXComponentRenditionComponentForNode10.getName();
                        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref13 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), adobeDCXComponentRenditionComponentForNode10.getComponentId())));
                        adobeStorageResourceItemResourceFromHref13.type = "image/png";
                        adobeAssetFile13 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref13, adobeAssetLibrary.resourceCollection());
                        adobeAssetFile13.setCloud(getCloud());
                        height11 = adobeDCXComponentRenditionComponentForNode10.getHeight();
                        width11 = adobeDCXComponentRenditionComponentForNode10.getWidth();
                    }
                    map12.put(adobeDCXManifestNode.getNodeId(), new AdobeAssetLibraryItem3DModel(adobeDCXManifestNode, name11, adobeAssetFile13, height11, width11, adobeAssetLibrary));
                } else if (adobeDCXManifestNode.getType() != null && adobeDCXManifestNode.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryAnimationElementType)) {
                    AdobeDCXComponent adobeDCXComponentRenditionComponentForNode11 = adobeAssetLibrary.renditionComponentForNode(adobeDCXManifestNode);
                    String name12 = null;
                    AdobeAssetFile adobeAssetFile14 = null;
                    int height12 = 0;
                    int width12 = 0;
                    if (adobeDCXComponentRenditionComponentForNode11 != null) {
                        name12 = adobeDCXComponentRenditionComponentForNode11.getName();
                        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref14 = AdobeStorageResourceItem.resourceFromHref(URI.create(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetLibrary.href.getRawPath(), adobeDCXComponentRenditionComponentForNode11.getComponentId())));
                        adobeStorageResourceItemResourceFromHref14.type = "image/png";
                        adobeAssetFile14 = new AdobeAssetFile(adobeStorageResourceItemResourceFromHref14, adobeAssetLibrary.resourceCollection());
                        adobeAssetFile14.setCloud(getCloud());
                        height12 = adobeDCXComponentRenditionComponentForNode11.getHeight();
                        width12 = adobeDCXComponentRenditionComponentForNode11.getWidth();
                    }
                    map13.put(adobeDCXManifestNode.getNodeId(), new AdobeAssetLibraryItemAnimation(adobeDCXManifestNode, name12, adobeAssetFile14, height12, width12, adobeAssetLibrary));
                }
            }
            if (map.size() > 0) {
                adobeAssetLibrary.brushes = map;
            }
            if (map2.size() > 0) {
                adobeAssetLibrary.characterStyles = map2;
            }
            if (map3.size() > 0) {
                adobeAssetLibrary.colors = map3;
            }
            if (map4.size() > 0) {
                adobeAssetLibrary.colorThemes = map4;
            }
            if (map5.size() > 0) {
                adobeAssetLibrary.layoutStyles = map5;
            }
            if (map6.size() > 0) {
                adobeAssetLibrary.images = map6;
            }
            if (map7.size() > 0) {
                adobeAssetLibrary.looks = map7;
            }
            if (map8.size() > 0) {
                adobeAssetLibrary.patterns = map8;
            }
            if (map9.size() > 0) {
                adobeAssetLibrary.templates = map9;
            }
            if (map10.size() > 0) {
                adobeAssetLibrary.materials = map10;
            }
            if (map11.size() > 0) {
                adobeAssetLibrary.lights = map11;
            }
            if (map12.size() > 0) {
                adobeAssetLibrary.models = map12;
            }
            if (map13.size() > 0) {
                adobeAssetLibrary.animations = map13;
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackage
    @Deprecated
    public void loadMetadata(final IAdobeRequestCompletionCallback iAdobeRequestCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        new WeakReference(this);
        super.loadMetadata(new IAdobeRequestCompletionCallback() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetLibrary.1
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback
            public void onCompletion() {
                AdobeAssetLibrary.this.loadLibraryMetadata();
                if (iAdobeRequestCompletionCallback != null) {
                    iAdobeRequestCompletionCallback.onCompletion();
                }
            }
        }, iAdobeGenericErrorCallback);
    }

    AdobeDCXManifestNode colorNodeForNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        for (AdobeDCXManifestNode adobeDCXManifestNode2 : getManifest().getChildrenOf(adobeDCXManifestNode)) {
            if (adobeDCXManifestNode2.getType() != null && adobeDCXManifestNode2.getType().equals(AdobeDesignLibraryUtils.AdobeColorMimeType)) {
                return adobeDCXManifestNode2;
            }
        }
        return null;
    }

    AdobeDCXManifestNode colorRenditionNodeForNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        for (AdobeDCXManifestNode adobeDCXManifestNode2 : getManifest().getChildrenOf(adobeDCXManifestNode)) {
            if (adobeDCXManifestNode2.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationRelationshipKey) != null && adobeDCXManifestNode2.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationRelationshipKey).equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition)) {
                return adobeDCXManifestNode2;
            }
        }
        return null;
    }

    AdobeDCXManifestNode colorThemeNodeForNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        for (AdobeDCXManifestNode adobeDCXManifestNode2 : getManifest().getChildrenOf(adobeDCXManifestNode)) {
            if (adobeDCXManifestNode2.getType() != null && adobeDCXManifestNode2.getType().equals(AdobeDesignLibraryUtils.AdobeColorThemeMimeType)) {
                return adobeDCXManifestNode2;
            }
        }
        return null;
    }

    AdobeDCXManifestNode characterStyleNodeForNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        for (AdobeDCXManifestNode adobeDCXManifestNode2 : getManifest().getChildrenOf(adobeDCXManifestNode)) {
            if (adobeDCXManifestNode2.getType() != null && adobeDCXManifestNode2.getType().equals(AdobeDesignLibraryUtils.AdobeCharacterStyleMimeType)) {
                return adobeDCXManifestNode2;
            }
        }
        return null;
    }

    protected AdobeDCXComponent primaryComponentForNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        for (AdobeDCXComponent adobeDCXComponent : getManifest().getComponentsOfChild(adobeDCXManifestNode)) {
            if (adobeDCXComponent.getRelationship() != null && adobeDCXComponent.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                return adobeDCXComponent;
            }
        }
        return null;
    }

    protected AdobeDCXComponent renditionComponentForNode(AdobeDCXManifestNode adobeDCXManifestNode) {
        Iterator<AdobeDCXComponent> it = getManifest().getComponentsOfChild(adobeDCXManifestNode).iterator();
        while (it.hasNext()) {
            AdobeDCXComponent next = it.next();
            if (next.getRelationship() != null && next.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition) && next.getType() != null && (next.getType().equals("image/png") || next.getType().equals(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRenditionContentTypeJPG) || next.getType().equals("image/jpeg"))) {
                return next;
            }
        }
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackage, com.adobe.creativesdk.foundation.storage.AdobeAssetFolder, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public boolean equals(Object obj) {
        if (obj instanceof AdobeAssetLibrary) {
            return super.equals(obj);
        }
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackage, com.adobe.creativesdk.foundation.storage.AdobeAssetFolder, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public int hashCode() {
        return super.hashCode();
    }

    public int count() {
        return (this.models != null ? this.models.size() : 0) + (this.colorThemes != null ? this.colorThemes.size() : 0) + (this.colors != null ? this.colors.size() : 0) + (this.images != null ? this.images.size() : 0) + (this.characterStyles != null ? this.characterStyles.size() : 0) + (this.brushes != null ? this.brushes.size() : 0) + (this.layoutStyles != null ? this.layoutStyles.size() : 0) + (this.looks != null ? this.looks.size() : 0) + (this.patterns != null ? this.patterns.size() : 0) + (this.templates != null ? this.templates.size() : 0) + (this.materials != null ? this.materials.size() : 0) + (this.lights != null ? this.lights.size() : 0) + (this.animations != null ? this.animations.size() : 0);
    }

    private static boolean isManifestNodeStockImage(AdobeDCXManifestNode adobeDCXManifestNode) {
        for (AdobeDCXManifestNode adobeDCXManifestNode2 : adobeDCXManifestNode.getManifest().getChildrenOf(adobeDCXManifestNode)) {
            if (adobeDCXManifestNode2.getType().equals(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType) && ((JSONObject) adobeDCXManifestNode2.get(AdobeAssetLibraryItemStockImageTrackingDataKey)) != null) {
                return true;
            }
        }
        return false;
    }
}
