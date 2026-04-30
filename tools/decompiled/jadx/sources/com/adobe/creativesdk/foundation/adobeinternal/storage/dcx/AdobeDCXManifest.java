package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.annotation.SuppressLint;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageDCXServiceMapping;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationRoleType;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.google.gdata.data.photos.GphotoAccess;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXManifest implements UploadDestination<AdobeDCXManifest>, Cloneable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String TAG;
    private static List<String> props;
    private static List<String> reservedComponentKeys;
    private static List<String> reservedNodeKeys;
    private static SimpleDateFormat staticDateFormatter;
    private JSONObject _absolutePaths;
    private LinkedHashMap<String, AdobeDCXManifestNode> _allChildren;
    private LinkedHashMap<String, AdobeDCXComponent> _allComponents;
    private JSONObject _dictionary;
    private JSONObject _initedDict;
    private AdobeDCXMutableManifestNode _rootNode = null;
    private String hostCompositeId;
    private JSONObject hostCompositeLinks;
    public boolean isDirty;
    String modified;

    static {
        $assertionsDisabled = !AdobeDCXManifest.class.desiredAssertionStatus();
        staticDateFormatter = null;
        props = null;
        reservedNodeKeys = null;
        reservedComponentKeys = null;
        props = new ArrayList();
        props.add("id");
        props.add("state");
        props.add("local");
        props.add(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey);
        reservedNodeKeys = new ArrayList();
        reservedNodeKeys.add("id");
        reservedNodeKeys.add("name");
        reservedNodeKeys.add("path");
        reservedNodeKeys.add("type");
        reservedNodeKeys.add("children");
        reservedNodeKeys.add("components");
        reservedNodeKeys.add(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey);
        reservedNodeKeys.add("state");
        reservedNodeKeys.add("local");
        reservedNodeKeys.add("rel");
        reservedComponentKeys = new ArrayList();
        reservedComponentKeys.add("id");
        reservedComponentKeys.add("name");
        reservedComponentKeys.add("path");
        reservedComponentKeys.add("type");
        reservedComponentKeys.add(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
        reservedComponentKeys.add("etag");
        reservedComponentKeys.add(AdobeCommunityConstants.AdobeCommunityResourceMD5Key);
        reservedComponentKeys.add(AdobeCommunityConstants.AdobeCommunityResourceVersionKey);
        reservedComponentKeys.add("width");
        reservedComponentKeys.add("height");
        reservedComponentKeys.add("length");
        reservedComponentKeys.add("state");
        reservedComponentKeys.add("rel");
        TAG = AdobeDCXManifest.class.getSimpleName();
    }

    public String getCompositeId() {
        return this._dictionary.optString("id", null);
    }

    public String getName() {
        return this._rootNode.getDictionary().optString("name", null);
    }

    public String getType() {
        return this._rootNode.getDictionary().optString("type", null);
    }

    public JSONObject getUnmanagedComponents() {
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject.optJSONObject(AdobeDCXConstants.AdobeDCXLocalStorageUnmanagedComponentsManifestKey);
        }
        return null;
    }

    public final JSONObject getLinks() {
        return this._rootNode.getDictionary().optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
    }

    public JSONObject getCompositeLinks() {
        return this.hostCompositeLinks;
    }

    public boolean hasCompositeLinks() {
        return this.hostCompositeLinks != null;
    }

    public String getCompositeState() {
        String strOptString = this._dictionary.optString("state", null);
        return strOptString != null ? strOptString : AdobeDCXConstants.AdobeDCXAssetStateUnmodified;
    }

    public String getCompositeArchivalState() {
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject == null) {
            return AdobeDCXConstants.AdobeDCXCompositeArchivalStateActive;
        }
        return jSONObjectOptJSONObject.optString("archivalState", AdobeDCXConstants.AdobeDCXCompositeArchivalStateActive);
    }

    public String getEtag() {
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject.optString("manifestEtag", null);
        }
        return null;
    }

    public String getVersion() {
        JSONObject jSONObject;
        try {
            jSONObject = this._dictionary.getJSONObject("local");
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
            jSONObject = null;
        }
        if (jSONObject != null) {
            return jSONObject.optString("manifestVersion", null);
        }
        return null;
    }

    public void setVersion(String str) {
        JSONObject jSONObject;
        try {
            jSONObject = this._dictionary.getJSONObject("local");
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
            jSONObject = null;
        }
        if (str != null && jSONObject != null) {
            try {
                jSONObject.put("manifestVersion", str);
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
            }
        } else if (str != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("manifestVersion", str);
                this._dictionary.put("local", jSONObject2);
            } catch (JSONException e4) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e4);
            }
        } else if (jSONObject != null) {
            jSONObject.remove("manifestVersion");
        }
        this.isDirty = true;
    }

    public URI getCompositeHref() {
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject == null) {
            return null;
        }
        try {
            return jSONObjectOptJSONObject.optString("compositeHref", null) != null ? new URI(jSONObjectOptJSONObject.optString("compositeHref", null)) : null;
        } catch (Exception e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
            return null;
        }
    }

    private JSONObject getOrCreateUnmanagedComponents() {
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
            try {
                this._dictionary.putOpt("local", jSONObjectOptJSONObject);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
            }
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(AdobeDCXConstants.AdobeDCXLocalStorageUnmanagedComponentsManifestKey);
        if (jSONObjectOptJSONObject2 != null) {
            return jSONObjectOptJSONObject2;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObjectOptJSONObject.putOpt(AdobeDCXConstants.AdobeDCXLocalStorageUnmanagedComponentsManifestKey, jSONObject);
            return jSONObject;
        } catch (JSONException e3) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
            return jSONObject;
        }
    }

    JSONObject getComponentSourceHrefLookupAndCreateIfNecessary(boolean z) {
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject == null) {
            if (!z) {
                return null;
            }
            jSONObjectOptJSONObject = new JSONObject();
            try {
                jSONObjectOptJSONObject.put("copyOnWrite#storageIds", new JSONObject());
                setValue(jSONObjectOptJSONObject, "local");
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
            }
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("componentS2SCopy#srcHref");
        if (jSONObjectOptJSONObject2 != null) {
            return jSONObjectOptJSONObject2;
        }
        if (!z) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObjectOptJSONObject.put("componentS2SCopy#srcHref", jSONObject);
            return jSONObject;
        } catch (JSONException e3) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
            return jSONObject;
        }
    }

    public String getSourceHrefOfComponent(AdobeDCXComponent adobeDCXComponent) {
        JSONObject componentSourceHrefLookupAndCreateIfNecessary = getComponentSourceHrefLookupAndCreateIfNecessary(false);
        if (componentSourceHrefLookupAndCreateIfNecessary != null) {
            return componentSourceHrefLookupAndCreateIfNecessary.optString(adobeDCXComponent.getComponentId(), null);
        }
        return null;
    }

    public void setSourceHref(String str, AdobeDCXComponent adobeDCXComponent) {
        JSONObject componentSourceHrefLookupAndCreateIfNecessary = getComponentSourceHrefLookupAndCreateIfNecessary(str != null);
        if (str != null) {
            try {
                componentSourceHrefLookupAndCreateIfNecessary.put(adobeDCXComponent.getComponentId(), str);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
                return;
            }
        }
        if (componentSourceHrefLookupAndCreateIfNecessary != null) {
            componentSourceHrefLookupAndCreateIfNecessary.remove(adobeDCXComponent.getComponentId());
        }
    }

    public void updateSourceHrefOfComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComponent adobeDCXComponent2, AdobeDCXManifest adobeDCXManifest) {
        String sourceHrefOfComponent = adobeDCXManifest.getSourceHrefOfComponent(adobeDCXComponent2);
        if (sourceHrefOfComponent != null) {
            setSourceHref(sourceHrefOfComponent, adobeDCXComponent);
        } else if (adobeDCXComponent.getEtag() == null && adobeDCXComponent2.getState() != null && adobeDCXComponent2.getState().equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified) && adobeDCXComponent2.getEtag() != null) {
            setSourceHref(AdobeStorageDCXServiceMapping.resourceForComponent(adobeDCXComponent2, adobeDCXManifest.getCompositeHref() != null ? adobeDCXManifest.getCompositeHref().toString() : null, this.hostCompositeLinks, null, true).href.toString(), adobeDCXComponent);
        }
    }

    public String getUCIDOfComponent(AdobeDCXComponent adobeDCXComponent) {
        return getOrCreateUnmanagedComponents().optString(adobeDCXComponent.getComponentId(), null);
    }

    public void setUCIDForComponent(String str, AdobeDCXComponent adobeDCXComponent) {
        JSONObject orCreateUnmanagedComponents = getOrCreateUnmanagedComponents();
        try {
            if (str == null) {
                orCreateUnmanagedComponents.remove(adobeDCXComponent.getComponentId());
            } else {
                orCreateUnmanagedComponents.putOpt(adobeDCXComponent.getComponentId(), str);
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
    }

    public boolean isBound() {
        return getEtag() != null;
    }

    public AdobeCollaborationType getCollaborationType() {
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject != null) {
            String strOptString = jSONObjectOptJSONObject.optString("collaboration");
            if (strOptString.equals("sharedByUser")) {
                return AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDBYUSER;
            }
            if (strOptString.equals("sharedWithUser")) {
                return AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER;
            }
        }
        return AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE;
    }

    public void setCollaborationType(AdobeCollaborationType adobeCollaborationType) {
        String str;
        if (adobeCollaborationType == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDBYUSER) {
            str = "sharedByUser";
        } else if (adobeCollaborationType == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
            str = "sharedWithUser";
        } else {
            str = GphotoAccess.Value.PRIVATE;
        }
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject != null) {
            try {
                jSONObjectOptJSONObject.putOpt("collaboration", str);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
            }
        } else {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("collaboration", str);
                this._dictionary.putOpt("local", jSONObject);
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
            }
        }
        this.isDirty = true;
    }

    public AdobeCollaborationRoleType getCollaborationRoleType() {
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject != null) {
            String strOptString = jSONObjectOptJSONObject.optString("collaboration_role");
            if (strOptString.equals("editor")) {
                return AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_EDITOR;
            }
            if (strOptString.equals("viewer")) {
                return AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_VIEWER;
            }
        }
        return AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_OWNER;
    }

    public void setCollaborationRoleType(AdobeCollaborationRoleType adobeCollaborationRoleType) {
        String str;
        if (adobeCollaborationRoleType == AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_EDITOR) {
            str = "editor";
        } else if (adobeCollaborationRoleType == AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_VIEWER) {
            str = "viewer";
        } else {
            str = DCXProjectKeys.kDCXKey_Project_owner;
        }
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject != null) {
            try {
                jSONObjectOptJSONObject.putOpt("collaboration_role", str);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
            }
        } else {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("collaboration_role", str);
                this._dictionary.putOpt("local", jSONObject);
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
            }
        }
        this.isDirty = true;
    }

    public String getSaveId() {
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject.optString(AdobeDCXConstantsPrivate.AdobeDCXManifestSaveIdManifestKey, null);
        }
        return null;
    }

    public final AdobeDCXMutableManifestNode getRootNode() {
        return this._rootNode;
    }

    public void setCompositeId(String str) {
        internalSetCompositeId(str);
        markAsModifiedAndDirty();
    }

    public void setName(String str) {
        try {
            if (str != null) {
                this._rootNode.getDictionary().putOpt("name", str);
            } else {
                this._rootNode.getDictionary().remove("name");
            }
            markAsModifiedAndDirty();
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
    }

    public void setType(String str) {
        try {
            if (str != null) {
                this._rootNode.getDictionary().putOpt("type", str);
            } else {
                this._rootNode.getDictionary().remove("type");
            }
            markAsModifiedAndDirty();
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
    }

    public void setLinks(JSONObject jSONObject) {
        try {
            if (jSONObject != null) {
                this._rootNode.getDictionary().putOpt(AdobeCommunityConstants.AdobeCommunityResourceLinkKey, AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObject));
            } else {
                this._rootNode.getDictionary().remove(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
            }
            markAsModifiedAndDirty();
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
    }

    public void setCompositeLinks(JSONObject jSONObject) {
        this.hostCompositeLinks = jSONObject;
    }

    public void setCompositeState(String str) {
        try {
            this._dictionary.putOpt("state", str);
            this.isDirty = true;
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
    }

    public void setCompositeArchivalState(String str) {
        try {
            JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
            if (str != null && jSONObjectOptJSONObject != null) {
                jSONObjectOptJSONObject.putOpt("archivalState", str);
            } else if (str != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("archivalState", str);
                this._dictionary.putOpt("local", jSONObject);
            } else if (jSONObjectOptJSONObject != null) {
                jSONObjectOptJSONObject.remove("archivalState");
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
        this.isDirty = true;
    }

    public void setEtag(String str) {
        try {
            JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
            if (str != null && jSONObjectOptJSONObject != null) {
                jSONObjectOptJSONObject.putOpt("manifestEtag", str);
            } else if (str != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("manifestEtag", str);
                this._dictionary.putOpt("local", jSONObject);
            } else if (jSONObjectOptJSONObject != null) {
                jSONObjectOptJSONObject.remove("manifestEtag");
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
        this.isDirty = true;
    }

    public void setCompositeHref(URI uri) {
        if (!$assertionsDisabled && getCompositeHref() != null && uri != null) {
            throw new AssertionError("You must call resetIdentity or resetBinding before you can set the href of an already bound composite");
        }
        try {
            JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
            if (uri != null && jSONObjectOptJSONObject != null) {
                jSONObjectOptJSONObject.putOpt("compositeHref", uri);
            } else if (uri != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("compositeHref", uri);
                this._dictionary.putOpt("local", jSONObject);
            } else if (jSONObjectOptJSONObject != null) {
                jSONObjectOptJSONObject.remove("compositeHref");
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
        this.isDirty = true;
    }

    public final Object get(String str) {
        if (getManifestSpecificProperties().contains(str)) {
            return this._dictionary.opt(str);
        }
        if (this._rootNode == null) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "DCXManifest:get", "_rootNode is null", "initedDictionary:" + this._initedDict.toString());
        }
        return this._rootNode.get(str);
    }

    @SuppressLint({"Assert"})
    public void setValue(Object obj, String str) {
        String str2 = "The key " + str + "is a reserved key for a AdobeDCXManifest.";
        boolean z = (str.equals("children") || str.equals("components")) ? false : true;
        if (!$assertionsDisabled && !z) {
            throw new AssertionError(str2);
        }
        try {
            if (getManifestSpecificProperties().contains(str)) {
                this._dictionary.putOpt(str, obj);
            } else {
                this._rootNode.setValue(obj, str);
            }
            markAsModifiedAndDirty();
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
    }

    public void remove(String str) {
        if (getManifestSpecificProperties().contains(str)) {
            this._dictionary.remove(str);
        } else {
            this._rootNode.remove(str);
        }
        markAsModifiedAndDirty();
    }

    private static void initialize() {
        synchronized (AdobeDCXManifest.class) {
            if (staticDateFormatter == null) {
                staticDateFormatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.US);
                staticDateFormatter.setTimeZone(TimeZone.getTimeZone("GMT"));
            }
        }
    }

    void verify() throws AdobeDCXException {
        if (this._dictionary.isNull("id")) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidManifest, "Manifest is missing an id");
        }
        if (this._rootNode.getDictionary().isNull("name")) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidManifest, "Manifest is missing a name");
        }
        if (this._rootNode.getDictionary().isNull("type")) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidManifest, "Manifest is missing a type");
        }
    }

    private void recursiveBuildHashesFrom(JSONObject jSONObject, String str, String str2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("components");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                try {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                    String strOptString = jSONObject2.optString("id", null);
                    if (strOptString == null) {
                        strOptString = AdobeStorageUtils.generateUuid();
                        jSONObject2.putOpt("id", strOptString);
                    }
                    AdobeDCXComponent adobeDCXComponentCreateComponentFromDictionary = AdobeDCXComponent.createComponentFromDictionary(jSONObject2, this, str, str2);
                    this._allComponents.put(strOptString, adobeDCXComponentCreateComponentFromDictionary);
                    this._absolutePaths.put(adobeDCXComponentCreateComponentFromDictionary.getAbsolutePath().toLowerCase(), adobeDCXComponentCreateComponentFromDictionary);
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
                }
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                try {
                    JSONObject jSONObject3 = jSONArrayOptJSONArray2.getJSONObject(i2);
                    String strOptString2 = jSONObject3.optString("id", null);
                    if (strOptString2 == null) {
                        strOptString2 = AdobeStorageUtils.generateUuid();
                        jSONObject3.putOpt("id", strOptString2);
                    }
                    AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeFromDictionary = AdobeDCXMutableManifestNode.createNodeFromDictionary(jSONObject3, this, str, str2);
                    this._allChildren.put(strOptString2, adobeDCXMutableManifestNodeCreateNodeFromDictionary);
                    if (adobeDCXMutableManifestNodeCreateNodeFromDictionary.getPath() != null) {
                        this._absolutePaths.put(adobeDCXMutableManifestNodeCreateNodeFromDictionary.getAbsolutePath().toLowerCase(), adobeDCXMutableManifestNodeCreateNodeFromDictionary);
                        recursiveBuildHashesFrom(jSONObject3, AdobeDCXUtils.stringByAppendingLastPathComponent(str, adobeDCXMutableManifestNodeCreateNodeFromDictionary.getPath()), adobeDCXMutableManifestNodeCreateNodeFromDictionary.getNodeId());
                    } else {
                        recursiveBuildHashesFrom(jSONObject3, str, adobeDCXMutableManifestNodeCreateNodeFromDictionary.getNodeId());
                    }
                } catch (JSONException e3) {
                    AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
                }
            }
        }
    }

    private void buildHashes() {
        JSONArray jSONArrayOptJSONArray = this._rootNode.getDictionary().optJSONArray("components");
        int length = jSONArrayOptJSONArray == null ? 0 : jSONArrayOptJSONArray.length();
        JSONArray jSONArrayOptJSONArray2 = this._rootNode.getDictionary().optJSONArray("children");
        int length2 = jSONArrayOptJSONArray2 != null ? jSONArrayOptJSONArray2.length() : 0;
        this._allComponents = new LinkedHashMap<>(length);
        this._allChildren = new LinkedHashMap<>(length2);
        this._absolutePaths = new JSONObject();
        recursiveBuildHashesFrom(this._rootNode.getDictionary(), URIUtil.SLASH, this._rootNode.getNodeId());
        this._allChildren.put(this._rootNode.getNodeId(), this._rootNode);
        try {
            this._absolutePaths.put(URIUtil.SLASH, this._rootNode);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
    }

    private JSONObject getManifestDictionaryFrom(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (getManifestSpecificProperties().contains(next)) {
                try {
                    jSONObject2.putOpt(next, jSONObject.opt(next));
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, TAG, null, e2);
                }
            }
        }
        return jSONObject2;
    }

    static List<String> getManifestSpecificProperties() {
        return props;
    }

    static List<String> getReservedNodePropertyKeys() {
        return reservedNodeKeys;
    }

    static List<String> getReservedComponentPropertyKeys() {
        return reservedComponentKeys;
    }

    private void init(JSONObject jSONObject) throws AdobeDCXException {
        long jLongValue;
        this._initedDict = jSONObject;
        initialize();
        if (jSONObject == null) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidManifest, "dict is missing");
        }
        try {
            Object objOpt = jSONObject.opt(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey);
            if (objOpt == null || !(objOpt instanceof Number)) {
                AdobeDCXUtils.logAnalytics("csdk_android_dcx", "DCXManifest-Init", "manifest-format-version missing", jSONObject.toString());
                jLongValue = 0;
            } else {
                jLongValue = ((Number) objOpt).longValue();
            }
            if (jLongValue <= 6) {
                if (!AdobeDCXManifestFormatConverter.updateManifestDictionary(jSONObject, jLongValue)) {
                    AdobeDCXUtils.logAnalytics("csdk_android_dcx", "DCXManifest-Init", "FormatConversion failed", jSONObject.toString());
                    throw new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalManifest);
                }
            } else if (jLongValue > 6) {
                jSONObject.putOpt(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey, 6L);
            }
            this._dictionary = getManifestDictionaryFrom(jSONObject);
            if (this._dictionary.isNull("id")) {
                this._dictionary.putOpt("id", AdobeStorageUtils.generateUuid());
            }
            this._rootNode = AdobeDCXMutableManifestNode.createRootNodeFromDict(jSONObject, this);
            verify();
            buildHashes();
            this.isDirty = false;
        } catch (JSONException e2) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "AdobeDCXManifest", "cxManifestCreation-init failed - reason:" + e2.getMessage(), "manifest data:" + jSONObject.toString());
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
    }

    private boolean removeArrayIfEmptyWithName(String str, JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() != 0) {
            return false;
        }
        jSONObject.remove(str);
        return true;
    }

    private void recursiveRemoveEmptyArrays(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        removeArrayIfEmptyWithName(AdobeCommunityConstants.AdobeCommunityResourceLinkKey, jSONObject);
        removeArrayIfEmptyWithName("components", jSONObject);
        if (!removeArrayIfEmptyWithName("children", jSONObject) && (jSONArrayOptJSONArray = jSONObject.optJSONArray("children")) != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    recursiveRemoveEmptyArrays(jSONObjectOptJSONObject);
                }
            }
        }
    }

    private static List<JSONObject> asList(JSONArray jSONArray) {
        int length = jSONArray.length();
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null) {
                arrayList.add(jSONObjectOptJSONObject);
            }
        }
        return arrayList;
    }

    private static JSONArray remove(int i, JSONArray jSONArray) {
        List<JSONObject> listAsList = asList(jSONArray);
        listAsList.remove(i);
        JSONArray jSONArray2 = new JSONArray();
        Iterator<JSONObject> it = listAsList.iterator();
        while (it.hasNext()) {
            jSONArray2.put(it.next());
        }
        return jSONArray2;
    }

    private static JSONArray insert(int i, JSONObject jSONObject, JSONArray jSONArray) {
        List<JSONObject> listAsList = asList(jSONArray);
        listAsList.add(i, jSONObject);
        JSONArray jSONArray2 = new JSONArray();
        Iterator<JSONObject> it = listAsList.iterator();
        while (it.hasNext()) {
            jSONArray2.put(it.next());
        }
        return jSONArray2;
    }

    private void recursiveReset(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("components");
        if (jSONArrayOptJSONArray != null) {
            JSONArray jSONArray = jSONArrayOptJSONArray;
            for (int length = jSONArrayOptJSONArray.length() - 1; length >= 0; length--) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(length);
                String strOptString = jSONObjectOptJSONObject.optString("state", null);
                if (strOptString != null && (strOptString.equals(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete) || strOptString.equals(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete))) {
                    JSONArray jSONArrayRemove = remove(length, jSONArray);
                    try {
                        jSONObject.putOpt("components", jSONArrayRemove);
                    } catch (JSONException e2) {
                        AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
                    }
                    String strOptString2 = jSONObjectOptJSONObject.optString("id", null);
                    this._absolutePaths.remove(this._allComponents.get(strOptString2).getAbsolutePath().toLowerCase());
                    this._allComponents.remove(strOptString2);
                    jSONArray = jSONArrayRemove;
                } else {
                    jSONObjectOptJSONObject.remove("etag");
                    jSONObjectOptJSONObject.remove(AdobeCommunityConstants.AdobeCommunityResourceVersionKey);
                    jSONObjectOptJSONObject.remove("length");
                    jSONObjectOptJSONObject.remove(AdobeCommunityConstants.AdobeCommunityResourceMD5Key);
                    try {
                        jSONObjectOptJSONObject.putOpt("state", AdobeDCXConstants.AdobeDCXAssetStateModified);
                    } catch (JSONException e3) {
                        AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
                    }
                }
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i = 0; i < jSONArrayOptJSONArray2.length(); i++) {
                recursiveReset(jSONArrayOptJSONArray2.optJSONObject(i));
            }
        }
    }

    private void resetWithId(String str) {
        this._dictionary.remove("etag");
        if (str != null) {
            internalSetCompositeId(str);
        }
        try {
            this._dictionary.put("state", AdobeDCXConstants.AdobeDCXAssetStateModified);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
        recursiveReset(this._rootNode.getDictionary());
        setEtag(null);
        setVersion(null);
        setCompositeHref(null);
        this.isDirty = true;
    }

    private JSONObject findNodeById(String str) {
        if (str.equals(this._rootNode.getNodeId())) {
            return this._rootNode.getDictionary();
        }
        AdobeDCXManifestNode adobeDCXManifestNode = this._allChildren.get(str);
        if (adobeDCXManifestNode != null) {
            return adobeDCXManifestNode.getDictionary();
        }
        return null;
    }

    private long indexOfChildWithId(String str, JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            String strOptString = jSONArray.optJSONObject(i).optString("id", null);
            if (strOptString != null && strOptString.equals(str)) {
                return i;
            }
        }
        return -1L;
    }

    private JSONObject findParentOfNodeById(String str, AdobeDCXIndexWrapper adobeDCXIndexWrapper) {
        AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfChild;
        AdobeDCXManifestNode adobeDCXManifestNode = this._allChildren.get(str);
        if (adobeDCXManifestNode == null || (adobeDCXManifestNodeFindParentOfChild = findParentOfChild(adobeDCXManifestNode, adobeDCXIndexWrapper)) == null || adobeDCXManifestNodeFindParentOfChild.getDictionary() == null) {
            return null;
        }
        return adobeDCXManifestNodeFindParentOfChild.getDictionary();
    }

    @SuppressLint({"Assert"})
    @Deprecated
    private AdobeDCXMutableManifestNode insertChild(AdobeDCXManifestNode adobeDCXManifestNode, JSONObject jSONObject, long j, String str, String str2) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Node must not be null");
        }
        String nodeId = adobeDCXManifestNode.getNodeId();
        if (!$assertionsDisabled && nodeId == null) {
            throw new AssertionError("Node must have an id");
        }
        if (this._allChildren.get(nodeId) != null) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorDuplicateId, "Duplicate node id: " + nodeId);
        }
        String lowerCase = adobeDCXManifestNode.getPath() == null ? null : AdobeDCXUtils.stringByAppendingLastPathComponent(str, adobeDCXManifestNode.getPath()).toLowerCase();
        if (lowerCase != null && this._absolutePaths.opt(lowerCase) != null) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorDuplicatePath, "Duplicate absolute path: " + lowerCase);
        }
        if (lowerCase != null && !AdobeDCXUtils.isValidAbsPath(lowerCase)) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, "Absolute paths cannot begin with /manifest or /mimetype: " + lowerCase);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(adobeDCXManifestNode.getDictionary());
        if (jSONArrayOptJSONArray == null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObjectDeepMutableCopyOfDictionary);
            try {
                jSONObject.putOpt("children", jSONArray);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
                return null;
            }
        } else {
            if (!$assertionsDisabled && j > jSONArrayOptJSONArray.length()) {
                throw new AssertionError("Index is out of bounds");
            }
            try {
                jSONObject.putOpt("children", insert((int) j, jSONObjectDeepMutableCopyOfDictionary, jSONArrayOptJSONArray));
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
                return null;
            }
        }
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode(jSONObjectDeepMutableCopyOfDictionary, this, str, str2);
        if (lowerCase != null) {
            try {
                this._absolutePaths.putOpt(lowerCase, adobeDCXMutableManifestNode);
            } catch (JSONException e4) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e4);
                return null;
            }
        }
        this._allChildren.put(nodeId, adobeDCXMutableManifestNode);
        markAsModifiedAndDirty();
        return adobeDCXMutableManifestNode;
    }

    private AdobeDCXMutableManifestNode moveChild(AdobeDCXManifestNode adobeDCXManifestNode, JSONObject jSONObject, long j) throws AdobeDCXException {
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode;
        AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
        JSONObject jSONObjectFindParentOfNodeById = findParentOfNodeById(adobeDCXManifestNode.getNodeId(), adobeDCXIndexWrapper);
        if (!$assertionsDisabled && jSONObjectFindParentOfNodeById == null) {
            throw new AssertionError("Couldn't find the specified node to move");
        }
        List<AdobeDCXManifestNode> arrayList = new ArrayList<>();
        List<AdobeDCXManifestNode> arrayList2 = new ArrayList<>();
        if (jSONObjectFindParentOfNodeById != jSONObject) {
            LinkedHashMap<String, AdobeDCXComponent> linkedHashMap = new LinkedHashMap<>();
            LinkedHashMap<String, AdobeDCXManifestNode> linkedHashMap2 = new LinkedHashMap<>();
            JSONObject jSONObject2 = new JSONObject();
            AdobeStorageCopyUtils.addEntriesFromComponentsMap(this._allComponents, linkedHashMap);
            AdobeStorageCopyUtils.addEntriesFromChildrenMap(this._allChildren, linkedHashMap2);
            AdobeStorageCopyUtils.addEntriesFromDictionary(this._absolutePaths, jSONObject2);
            if (!recursivelyRemoveNode(adobeDCXManifestNode, linkedHashMap2, linkedHashMap, jSONObject2, null, arrayList2)) {
                return null;
            }
            AdobeDCXManifestNode adobeDCXManifestNode2 = this._allChildren.get(jSONObject.optString("id"));
            adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode(adobeDCXManifestNode.getDictionary(), this, parentPathForDescendantsOf(adobeDCXManifestNode2), adobeDCXManifestNode2.getNodeId());
            if (!recursivelyAddNode(adobeDCXMutableManifestNode, adobeDCXMutableManifestNode.getDictionary(), false, linkedHashMap2, linkedHashMap, jSONObject2, null, null, arrayList)) {
                return null;
            }
            this._absolutePaths = jSONObject2;
            this._allComponents = linkedHashMap;
            this._allChildren = linkedHashMap2;
        } else {
            adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode(adobeDCXManifestNode.getDictionary(), this, adobeDCXManifestNode.getParentPath(), adobeDCXManifestNode.getParentId());
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectFindParentOfNodeById.optJSONArray("children");
        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject((int) adobeDCXIndexWrapper.index);
        try {
            jSONObjectFindParentOfNodeById.putOpt("children", remove((int) adobeDCXIndexWrapper.index, jSONArrayOptJSONArray));
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray2 == null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObjectOptJSONObject);
            try {
                jSONObject.putOpt("children", jSONArray);
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
            }
        } else {
            try {
                jSONObject.putOpt("children", insert((int) j, jSONObjectOptJSONObject, jSONArrayOptJSONArray2));
            } catch (JSONException e4) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e4);
            }
        }
        updateDCXNodesWithAddedChildren(arrayList, arrayList2);
        markAsModifiedAndDirty();
        return adobeDCXMutableManifestNode;
    }

    private void removeAllChildrenAt(JSONObject jSONObject, ArrayList<AdobeDCXComponent> arrayList) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < jSONArrayOptJSONArray.length()) {
                    ArrayList arrayList2 = new ArrayList();
                    recursivelyRemoveNode(this._allChildren.get(jSONArrayOptJSONArray.optJSONObject(i2).optString("id")), this._allChildren, this._allComponents, this._absolutePaths, arrayList, arrayList2);
                    updateDCXNodesWithAddedChildren(null, arrayList2);
                    i = i2 + 1;
                } else {
                    jSONObject.remove("children");
                    markAsModifiedAndDirty();
                    return;
                }
            }
        }
    }

    private ArrayList<AdobeDCXComponent> createComponentListFromArray(JSONArray jSONArray, String str, String str2) {
        ArrayList<AdobeDCXComponent> arrayList = new ArrayList<>();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(AdobeDCXComponent.createComponentFromDictionary(jSONArray.optJSONObject(i), this, str, str2));
            }
        }
        return arrayList;
    }

    private AdobeDCXComponent updateComponent(AdobeDCXComponent adobeDCXComponent, JSONObject jSONObject, long j) throws AdobeDCXException {
        String componentId = adobeDCXComponent.getComponentId();
        if (!$assertionsDisabled && componentId == null) {
            throw new AssertionError("Component must have an id");
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("components");
        if (j == -1) {
            j = indexOfComponentWithId(componentId, jSONArrayOptJSONArray);
        }
        if (!$assertionsDisabled && j == -1) {
            throw new AssertionError("Component with id " + componentId + " not found");
        }
        AdobeDCXManifestNode adobeDCXManifestNode = this._allChildren.get(jSONObject.optString("id"));
        JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(adobeDCXComponent.getDictionary());
        AdobeDCXComponent adobeDCXComponentCreateComponentFromDictionary = AdobeDCXComponent.createComponentFromDictionary(jSONObjectDeepMutableCopyOfDictionary, this, parentPathForDescendantsOf(adobeDCXManifestNode), adobeDCXManifestNode.getNodeId());
        AdobeDCXComponent adobeDCXComponent2 = this._allComponents.get(adobeDCXComponent.getComponentId());
        if (adobeDCXComponent2.getPath() == null || !adobeDCXComponent2.getPath().equals(adobeDCXComponentCreateComponentFromDictionary.getPath())) {
            if (adobeDCXComponentCreateComponentFromDictionary.getPath() == null || !AdobeDCXUtils.isValidPath(adobeDCXComponentCreateComponentFromDictionary.getPath())) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, "Invalid path: " + adobeDCXComponentCreateComponentFromDictionary.getPath());
            }
            if (adobeDCXComponentCreateComponentFromDictionary.getAbsolutePath() != null && !AdobeDCXUtils.isValidAbsPath(adobeDCXComponentCreateComponentFromDictionary.getAbsolutePath())) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, "Absolute paths cannot begin with /manifest or /mimetype: %s" + adobeDCXComponentCreateComponentFromDictionary.getAbsolutePath());
            }
            if (adobeDCXComponentCreateComponentFromDictionary.getAbsolutePath() != null && this._absolutePaths.opt(adobeDCXComponentCreateComponentFromDictionary.getAbsolutePath().toLowerCase()) != null) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorDuplicatePath, "Dupliacte path:" + adobeDCXComponentCreateComponentFromDictionary.getAbsolutePath());
            }
            this._absolutePaths.remove(adobeDCXComponent2.getAbsolutePath().toLowerCase());
        }
        try {
            jSONObject.putOpt("components", insert((int) j, jSONObjectDeepMutableCopyOfDictionary, remove((int) j, jSONArrayOptJSONArray)));
            this._absolutePaths.remove(this._allComponents.get(componentId).getAbsolutePath().toLowerCase());
            this._allComponents.put(componentId, adobeDCXComponentCreateComponentFromDictionary);
            this._absolutePaths.put(adobeDCXComponentCreateComponentFromDictionary.getAbsolutePath().toLowerCase(), adobeDCXComponentCreateComponentFromDictionary);
            markAsModifiedAndDirty();
            return adobeDCXComponentCreateComponentFromDictionary;
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
            return null;
        }
    }

    private AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, JSONObject jSONObject, String str, boolean z) throws AdobeDCXException {
        String str2;
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Component must not be null");
        }
        String componentId = adobeDCXComponent.getComponentId();
        JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(adobeDCXComponent.getDictionary());
        if (str != null) {
            try {
                jSONObjectDeepMutableCopyOfDictionary.putOpt("path", str);
                String strGenerateUuid = AdobeStorageUtils.generateUuid();
                jSONObjectDeepMutableCopyOfDictionary.putOpt("id", strGenerateUuid);
                jSONObjectDeepMutableCopyOfDictionary.remove("etag");
                jSONObjectDeepMutableCopyOfDictionary.remove(AdobeCommunityConstants.AdobeCommunityResourceVersionKey);
                jSONObjectDeepMutableCopyOfDictionary.putOpt("state", AdobeDCXConstants.AdobeDCXAssetStateModified);
                str2 = strGenerateUuid;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
                return null;
            }
        } else {
            str2 = componentId;
        }
        if (!$assertionsDisabled && str2 == null) {
            throw new AssertionError("Component must have an id");
        }
        String strOptString = jSONObjectDeepMutableCopyOfDictionary.optString("path", null);
        if (!AdobeDCXUtils.isValidPath(strOptString)) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, "Invalid path: " + strOptString);
        }
        AdobeDCXComponent adobeDCXComponent2 = this._allComponents.get(str2);
        if (!z && adobeDCXComponent2 != null) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorDuplicateId, "Duplicate id: " + str2);
        }
        AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
        if (z) {
            jSONObject = findNodeOfComponentById(str2, adobeDCXIndexWrapper);
            if (!$assertionsDisabled && jSONObject == null) {
                throw new AssertionError("Couldn't find parent node of component.");
            }
        } else {
            adobeDCXIndexWrapper.index = jSONObject.length();
        }
        AdobeDCXManifestNode adobeDCXManifestNode = this._allChildren.get(jSONObject.optString("id"));
        AdobeDCXComponent adobeDCXComponentCreateComponentFromDictionary = AdobeDCXComponent.createComponentFromDictionary(jSONObjectDeepMutableCopyOfDictionary, this, parentPathForDescendantsOf(adobeDCXManifestNode), adobeDCXManifestNode.getNodeId());
        String lowerCase = adobeDCXComponentCreateComponentFromDictionary.getAbsolutePath().toLowerCase();
        String lowerCase2 = z ? adobeDCXComponent2.getAbsolutePath().toLowerCase() : null;
        if (lowerCase != null && !AdobeDCXUtils.isValidAbsPath(lowerCase)) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, "Absolute paths cannot begin with /manifest or /mimetype: %s" + lowerCase);
        }
        if ((!z || !lowerCase.equals(lowerCase2)) && this._absolutePaths.opt(lowerCase) != null) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorDuplicatePath, "Duplicate absoulte path: " + lowerCase);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("components");
        if (jSONArrayOptJSONArray == null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObjectDeepMutableCopyOfDictionary);
            try {
                jSONObject.putOpt("components", jSONArray);
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
                return null;
            }
        } else if (z) {
            try {
                jSONObject.putOpt("components", insert((int) adobeDCXIndexWrapper.index, jSONObjectDeepMutableCopyOfDictionary, remove((int) adobeDCXIndexWrapper.index, jSONArrayOptJSONArray)));
            } catch (JSONException e4) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e4);
                return null;
            }
        } else {
            jSONArrayOptJSONArray.put(jSONObjectDeepMutableCopyOfDictionary);
        }
        this._allComponents.put(str2, adobeDCXComponentCreateComponentFromDictionary);
        try {
            this._absolutePaths.put(lowerCase, adobeDCXComponentCreateComponentFromDictionary);
            if (lowerCase2 != null && !lowerCase.equals(lowerCase2)) {
                this._absolutePaths.remove(lowerCase2);
            }
            markAsModifiedAndDirty();
            return adobeDCXComponentCreateComponentFromDictionary;
        } catch (JSONException e5) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e5);
            return null;
        }
    }

    private AdobeDCXComponent removeComponent(AdobeDCXComponent adobeDCXComponent, JSONObject jSONObject, long j) {
        String componentId = adobeDCXComponent.getComponentId();
        if (!$assertionsDisabled && componentId == null) {
            throw new AssertionError("Component must have an id");
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("components");
        if (j == -1) {
            j = indexOfComponentWithId(componentId, jSONArrayOptJSONArray);
        }
        if (!$assertionsDisabled && j == -1) {
            throw new AssertionError("Component with id " + componentId + " not found");
        }
        JSONArray jSONArrayRemove = remove((int) j, jSONArrayOptJSONArray);
        try {
            jSONObject.putOpt("components", jSONArrayRemove);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
        if (jSONArrayRemove.length() == 0) {
            jSONObject.remove("components");
        }
        this._allComponents.remove(componentId);
        this._absolutePaths.remove(adobeDCXComponent.getAbsolutePath().toLowerCase());
        markAsModifiedAndDirty();
        return adobeDCXComponent;
    }

    private void removeAllComponentsAt(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("components");
        if (jSONArrayOptJSONArray != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < jSONArrayOptJSONArray.length()) {
                    String strOptString = jSONArrayOptJSONArray.optJSONObject(i2).optString("id");
                    this._absolutePaths.remove(this._allComponents.get(strOptString).getAbsolutePath().toLowerCase());
                    this._allComponents.remove(strOptString);
                    i = i2 + 1;
                } else {
                    jSONObject.remove("components");
                    markAsModifiedAndDirty();
                    return;
                }
            }
        }
    }

    private void recursiveRemoveAllComponentsAt(JSONObject jSONObject) {
        removeAllComponentsAt(jSONObject);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                recursiveRemoveAllComponentsAt(jSONArrayOptJSONArray.optJSONObject(i));
            }
        }
    }

    private long indexOfComponentWithId(String str, JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            String strOptString = jSONArray.optJSONObject(i).optString("id", null);
            if (strOptString != null && strOptString.equals(str)) {
                return i;
            }
        }
        return -1L;
    }

    public void componentsDescendedFromParent(AdobeDCXManifestNode adobeDCXManifestNode, List<AdobeDCXComponent> list) {
        recursiveComponentsDescendedFrom(adobeDCXManifestNode._dict, list);
    }

    void recursiveComponentsDescendedFrom(JSONObject jSONObject, List<AdobeDCXComponent> list) {
        if (!$assertionsDisabled && list == null) {
            throw new AssertionError("resultArray must not be nil.");
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("components");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                AdobeDCXComponent adobeDCXComponent = this._allComponents.get(jSONArrayOptJSONArray.optJSONObject(i).optString("id"));
                if (!$assertionsDisabled && adobeDCXComponent == null) {
                    throw new AssertionError("A corresponding component object should always exist in the manifest's hash table.");
                }
                list.add(adobeDCXComponent);
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                recursiveComponentsDescendedFrom(jSONArrayOptJSONArray2.optJSONObject(i2), list);
            }
        }
    }

    private JSONObject findNodeOfComponentById(String str, AdobeDCXIndexWrapper adobeDCXIndexWrapper) {
        AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent;
        AdobeDCXComponent adobeDCXComponent = this._allComponents.get(str);
        if (adobeDCXComponent != null && (adobeDCXManifestNodeFindParentOfComponent = findParentOfComponent(adobeDCXComponent)) != null) {
            JSONObject dictionary = adobeDCXManifestNodeFindParentOfComponent.getDictionary();
            JSONArray jSONArrayOptJSONArray = dictionary != null ? dictionary.optJSONArray("components") : null;
            if (jSONArrayOptJSONArray != null) {
                long jIndexOfComponentWithId = indexOfComponentWithId(str, jSONArrayOptJSONArray);
                if (jIndexOfComponentWithId != -1) {
                    adobeDCXIndexWrapper.index = jIndexOfComponentWithId;
                    if (adobeDCXManifestNodeFindParentOfComponent.getDictionary() != null) {
                        return adobeDCXManifestNodeFindParentOfComponent.getDictionary();
                    }
                }
            }
        }
        return null;
    }

    private void internalSetCompositeId(String str) {
        try {
            this._dictionary.put("id", str);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
        this._allChildren.remove(this._rootNode.getNodeId());
        this._rootNode.setNodeId(str);
        this._allChildren.put(this._rootNode.getNodeId(), this._rootNode);
        JSONObject dictionary = this._rootNode.getDictionary();
        JSONArray jSONArrayOptJSONArray = dictionary.optJSONArray("components");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                try {
                    AdobeDCXComponent adobeDCXComponentCreateComponentFromDictionary = AdobeDCXComponent.createComponentFromDictionary(jSONArrayOptJSONArray.getJSONObject(i), this, URIUtil.SLASH, str);
                    this._allComponents.put(adobeDCXComponentCreateComponentFromDictionary.getComponentId(), adobeDCXComponentCreateComponentFromDictionary);
                    this._absolutePaths.put(adobeDCXComponentCreateComponentFromDictionary.getAbsolutePath().toLowerCase(), adobeDCXComponentCreateComponentFromDictionary);
                } catch (JSONException e3) {
                    AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
                }
            }
        }
        JSONArray jSONArrayOptJSONArray2 = dictionary.optJSONArray("children");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                try {
                    AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeFromDictionary = AdobeDCXMutableManifestNode.createNodeFromDictionary(jSONArrayOptJSONArray2.getJSONObject(i2), this, URIUtil.SLASH, str);
                    this._allChildren.put(adobeDCXMutableManifestNodeCreateNodeFromDictionary.getNodeId(), adobeDCXMutableManifestNodeCreateNodeFromDictionary);
                    if (adobeDCXMutableManifestNodeCreateNodeFromDictionary.getPath() != null) {
                        this._absolutePaths.put(adobeDCXMutableManifestNodeCreateNodeFromDictionary.getAbsolutePath().toLowerCase(), adobeDCXMutableManifestNodeCreateNodeFromDictionary);
                    }
                } catch (JSONException e4) {
                    AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e4);
                }
            }
        }
    }

    private long recursiveGetAbsoluteIndexOfNodeId(String str, JSONObject jSONObject, AdobeDCXIndexWrapper adobeDCXIndexWrapper) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject.optString("id").equals(str)) {
                    return adobeDCXIndexWrapper.index;
                }
                adobeDCXIndexWrapper.index++;
                long jRecursiveGetAbsoluteIndexOfNodeId = recursiveGetAbsoluteIndexOfNodeId(str, jSONObjectOptJSONObject, adobeDCXIndexWrapper);
                if (jRecursiveGetAbsoluteIndexOfNodeId != -1) {
                    return jRecursiveGetAbsoluteIndexOfNodeId;
                }
            }
        }
        return -1L;
    }

    private ArrayList<AdobeDCXManifestNode> createChildListFromArray(JSONArray jSONArray, String str, String str2) {
        ArrayList<AdobeDCXManifestNode> arrayList = new ArrayList<>();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(new AdobeDCXMutableManifestNode(jSONArray.optJSONObject(i), this, str, str2));
            }
        }
        return arrayList;
    }

    private boolean assertBlock(ArrayList<String> arrayList, boolean z, String str, Object... objArr) {
        if (z) {
            return true;
        }
        arrayList.add(String.format(str, objArr));
        return false;
    }

    private void recursivelyVerifyIntegrityFromNodeDict(JSONObject jSONObject, String str, LinkedHashMap<String, AdobeDCXManifestNode> linkedHashMap, LinkedHashMap<String, AdobeDCXComponent> linkedHashMap2, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, ArrayList<String> arrayList) {
        String strStringByAppendingLastPathComponent;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= jSONArrayOptJSONArray.length()) {
                    break;
                }
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                String strOptString = jSONObjectOptJSONObject.optString("id", null);
                if (strOptString == null) {
                    arrayList.add("Encountered a node without an id.");
                } else if (jSONObject4.opt(strOptString) != null) {
                    arrayList.add("Encountered node " + strOptString + " a second time.");
                } else {
                    try {
                        jSONObject4.putOpt(strOptString, strOptString);
                    } catch (JSONException e2) {
                        AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
                    }
                    AdobeDCXManifestNode adobeDCXManifestNode = linkedHashMap.get(strOptString);
                    if (adobeDCXManifestNode == null) {
                        arrayList.add("Node " + strOptString + " is not in cache");
                    } else {
                        linkedHashMap.remove(strOptString);
                        if (!adobeDCXManifestNode.getParentPath().equals(str)) {
                            arrayList.add("Node " + strOptString + " has the wrong parent path " + adobeDCXManifestNode.getParentPath() + " (expected: " + str + ")");
                        }
                        if (adobeDCXManifestNode.getPath() != null) {
                            strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str, adobeDCXManifestNode.getPath());
                            if (!adobeDCXManifestNode.getAbsolutePath().equals(strStringByAppendingLastPathComponent)) {
                                arrayList.add("Node " + strOptString + " has the wrong parent path " + adobeDCXManifestNode.getAbsolutePath() + " (expected: " + strStringByAppendingLastPathComponent + ")");
                            }
                            if (jSONObject2.opt(strStringByAppendingLastPathComponent.toLowerCase()) == null) {
                                arrayList.add("Node " + strOptString + "'s absolute path " + strStringByAppendingLastPathComponent + " missing from cache.");
                            } else {
                                jSONObject2.remove(strStringByAppendingLastPathComponent.toLowerCase());
                            }
                        } else {
                            strStringByAppendingLastPathComponent = str;
                        }
                        recursivelyVerifyIntegrityFromNodeDict(jSONObjectOptJSONObject, strStringByAppendingLastPathComponent, linkedHashMap, linkedHashMap2, jSONObject2, jSONObject3, jSONObject4, arrayList);
                    }
                }
                i = i2 + 1;
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("components");
        if (jSONArrayOptJSONArray2 != null) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 < jSONArrayOptJSONArray2.length()) {
                    String strOptString2 = jSONArrayOptJSONArray2.optJSONObject(i4).optString("id", null);
                    if (strOptString2 == null) {
                        arrayList.add("Encountered a component without an id");
                    } else if (jSONObject3.opt(strOptString2) != null) {
                        arrayList.add("Encountered component " + strOptString2 + " a second time.");
                    } else {
                        try {
                            jSONObject3.putOpt(strOptString2, strOptString2);
                        } catch (JSONException e3) {
                            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
                        }
                        AdobeDCXComponent adobeDCXComponent = linkedHashMap2.get(strOptString2);
                        if (adobeDCXComponent == null) {
                            arrayList.add("Component " + strOptString2 + " is not in cache");
                        } else {
                            linkedHashMap2.remove(strOptString2);
                            if (!adobeDCXComponent.getParentPath().equals(str)) {
                                arrayList.add("Component " + strOptString2 + " has the wrong parent path " + adobeDCXComponent.getParentPath() + " (expected: " + str + ")");
                            }
                            if (adobeDCXComponent.getPath() == null) {
                                arrayList.add("Component " + strOptString2 + " doesn't have a path");
                            } else {
                                String strStringByAppendingLastPathComponent2 = AdobeDCXUtils.stringByAppendingLastPathComponent(str, adobeDCXComponent.getPath());
                                if (!adobeDCXComponent.getAbsolutePath().equals(strStringByAppendingLastPathComponent2)) {
                                    arrayList.add("Component " + strOptString2 + " has the wrong absolute path " + adobeDCXComponent.getAbsolutePath() + " (expected: " + strStringByAppendingLastPathComponent2 + ")");
                                }
                                if (jSONObject2.opt(adobeDCXComponent.getAbsolutePath().toLowerCase()) == null) {
                                    arrayList.add("Component " + strOptString2 + "'s absolute path " + adobeDCXComponent.getAbsolutePath() + " missing from cache.");
                                } else {
                                    jSONObject2.remove(adobeDCXComponent.getAbsolutePath().toLowerCase());
                                }
                            }
                        }
                    }
                    i3 = i4 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private String parentPathForDescendantsOf(AdobeDCXManifestNode adobeDCXManifestNode) {
        return adobeDCXManifestNode == null ? URIUtil.SLASH : adobeDCXManifestNode.getPath() == null ? adobeDCXManifestNode.getParentPath() : adobeDCXManifestNode.getAbsolutePath();
    }

    final JSONObject getDictionary() {
        return this._dictionary;
    }

    public final Map<String, AdobeDCXComponent> getAllComponents() {
        return this._allComponents;
    }

    public final Map<String, AdobeDCXManifestNode> getAllChildren() {
        return this._allChildren;
    }

    public AdobeDCXManifestNode getChildWithAbsolutePath(String str) {
        Object objOpt = this._absolutePaths.opt(str.toLowerCase());
        if (!(objOpt instanceof AdobeDCXManifestNode)) {
            objOpt = null;
        }
        return (AdobeDCXManifestNode) objOpt;
    }

    AdobeDCXManifestNode findParentOfChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXIndexWrapper adobeDCXIndexWrapper) {
        AdobeDCXManifestNode adobeDCXManifestNode2;
        String parentId = adobeDCXManifestNode.getParentId();
        if (parentId == null) {
            return null;
        }
        if (parentId.equals(this._rootNode.getNodeId())) {
            adobeDCXManifestNode2 = this._rootNode;
        } else {
            adobeDCXManifestNode2 = this._allChildren.get(adobeDCXManifestNode.getParentId());
        }
        if (adobeDCXManifestNode2 != null && adobeDCXIndexWrapper != null) {
            JSONArray jSONArrayOptJSONArray = adobeDCXManifestNode2.getDictionary().optJSONArray("children");
            if (jSONArrayOptJSONArray != null) {
                long jIndexOfChildWithId = indexOfChildWithId(adobeDCXManifestNode.getNodeId(), jSONArrayOptJSONArray);
                if (jIndexOfChildWithId == -1) {
                    adobeDCXManifestNode2 = null;
                } else {
                    adobeDCXIndexWrapper.index = jIndexOfChildWithId;
                }
            } else {
                adobeDCXManifestNode2 = null;
            }
        }
        return adobeDCXManifestNode2;
    }

    public AdobeDCXManifest(JSONObject jSONObject) throws AdobeDCXException {
        init(jSONObject);
    }

    public AdobeDCXManifest(String str, String str2) throws AdobeDCXException {
        String strGenerateUuid = AdobeStorageUtils.generateUuid();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey, 6L);
            jSONObject.put("name", str);
            jSONObject.put("type", str2);
            jSONObject.put("id", strGenerateUuid);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
        init(jSONObject);
    }

    public AdobeDCXManifest(String str) throws AdobeDCXException {
        JSONObject jSONObject = null;
        if (str == null) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorMissingManifest, "Missing Data");
        }
        try {
            jSONObject = new JSONObject(str);
            e = null;
        } catch (JSONException e2) {
            e = e2;
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "AdobeDCXManifest", "dcxManifestCreation failed - reason:" + e.getMessage(), "manifest data:" + str);
        }
        if (jSONObject == null) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidManifest, "Invalid JSON", e);
        }
        recursiveRemoveEmptyArrays(jSONObject);
        init(jSONObject);
    }

    public String getLocalData() {
        JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(this._rootNode.getDictionary());
        AdobeStorageErrorUtils.verifyArgument(this._rootNode.getDictionary().optString("id").equals(this._dictionary.optString("id")), "RootNode Id is not equal to the composite Id");
        AdobeStorageCopyUtils.addEntriesFromDictionary(this._dictionary, jSONObjectDeepMutableCopyOfDictionary);
        return jSONObjectDeepMutableCopyOfDictionary.toString();
    }

    public String getRemoteData() {
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject != null) {
            this._dictionary.remove("local");
        }
        JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(this._rootNode.getDictionary());
        AdobeStorageErrorUtils.verifyArgument(this._rootNode.getDictionary().optString("id").equals(this._dictionary.optString("id")), "RootNode Id is not equal to the composite Id");
        AdobeStorageCopyUtils.addEntriesFromDictionary(this._dictionary, jSONObjectDeepMutableCopyOfDictionary);
        String string = jSONObjectDeepMutableCopyOfDictionary.toString();
        if (jSONObjectOptJSONObject != null) {
            try {
                this._dictionary.putOpt("local", jSONObjectOptJSONObject);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXManifest", null, e2);
            }
        }
        return string;
    }

    boolean writeToFile(String str, boolean z) throws AdobeDCXException {
        Exception e2;
        if (z) {
            String strGenerateUuid = AdobeStorageUtils.generateUuid();
            JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
            if (jSONObjectOptJSONObject != null) {
                try {
                    jSONObjectOptJSONObject.put(AdobeDCXConstantsPrivate.AdobeDCXManifestSaveIdManifestKey, strGenerateUuid);
                    e2 = null;
                } catch (JSONException e3) {
                    AdobeDCXUtils.logAnalytics("csdk_android_dcx", "DCXManifest-writeToFile", "reason:" + e3.getMessage(), "saveID:" + strGenerateUuid);
                    e2 = e3;
                }
            } else {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(AdobeDCXConstantsPrivate.AdobeDCXManifestSaveIdManifestKey, strGenerateUuid);
                    this._dictionary.put("local", jSONObject);
                    e2 = null;
                } catch (JSONException e4) {
                    AdobeDCXUtils.logAnalytics("csdk_android_dcx", "DCXManifest-writeToFile1", "reason:" + e4.getMessage(), "saveID:" + strGenerateUuid);
                    e2 = e4;
                }
            }
        } else {
            e2 = null;
        }
        Object objOpt = this._dictionary.opt(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey);
        if (objOpt == null || !(objOpt instanceof Number)) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "DCXManifest-writeToFile", "manifest-format-version missing", this._dictionary.toString());
        }
        String localData = getLocalData();
        if (localData != null && e2 == null) {
            try {
                if (AdobeDCXUtils.fWrite(str, localData).booleanValue()) {
                    this.isDirty = false;
                    return true;
                }
            } catch (IOException e5) {
                e2 = e5;
            }
        }
        throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorManifestWriteFailure, null, e2, str);
    }

    void resetIdentityWithId(String str) {
        if (str == null) {
            str = AdobeStorageUtils.generateUuid();
        }
        resetWithId(str);
    }

    void resetBinding() {
        resetWithId(null);
    }

    static AdobeDCXManifest createManifestWithName(String str, String str2) throws AdobeDCXException {
        return new AdobeDCXManifest(str, str2);
    }

    public static AdobeDCXManifest createManifestWithContentsOfFile(String str) throws AdobeDCXException {
        try {
            String strFRead = AdobeDCXUtils.fRead(str);
            if (strFRead == null) {
                AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Failure inside createManifestWithContentsOfFile-1 path= " + str);
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorManifestReadFailure, "Empty manifest file", null, str);
            }
            try {
                return new AdobeDCXManifest(strFRead);
            } catch (AdobeDCXException e2) {
                AdobeDCXUtils.logAnalytics("csdk_android_dcx", "createManifestWithContentsOfFile", "dcxManifestCreation failed - reason:" + e2.getMessage(), "manifest data:" + strFRead);
                AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Failure inside createManifestWithContentsOfFile-2 path= " + str);
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidManifest, e2.getDescription(), e2, str);
            }
        } catch (FileNotFoundException e3) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXManifest.createManifestWithContentsOfFile", e3.getMessage(), e3);
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorManifestReadFailure, "Manifest not found", e3, str);
        } catch (UnsupportedEncodingException e4) {
            AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Failure inside fread path= " + str);
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "createManifestWithContentsOfFile", "freadFailed - reason:" + e4.getMessage(), "manifest data:" + ((String) null));
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidManifest, "Manifest unsupported encoding", e4, str);
        } catch (IOException e5) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXManifest.createManifestWithContentsOfFile", e5.getMessage(), e5);
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorManifestReadFailure, "Manifest IO exception ", e5, str);
        }
    }

    public AdobeDCXComponent getComponentWithAbsolutePath(String str) {
        Object objOpt = this._absolutePaths.opt(str.toLowerCase());
        if (!(objOpt instanceof AdobeDCXComponent)) {
            objOpt = null;
        }
        return (AdobeDCXComponent) objOpt;
    }

    AdobeDCXManifestNode findParentOfComponent(AdobeDCXComponent adobeDCXComponent) {
        if (adobeDCXComponent == null || adobeDCXComponent._parentId == null) {
            return null;
        }
        return this._allChildren.get(adobeDCXComponent._parentId);
    }

    public List<AdobeDCXComponent> getComponents() {
        return createComponentListFromArray(this._rootNode.getDictionary().optJSONArray("components"), parentPathForDescendantsOf(null), getRootNode().getNodeId());
    }

    public List<AdobeDCXComponent> getComponentsOfChild(AdobeDCXManifestNode adobeDCXManifestNode) {
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Node must not be null");
        }
        JSONObject jSONObjectFindNodeById = findNodeById(adobeDCXManifestNode.getNodeId());
        if (jSONObjectFindNodeById == null) {
            return null;
        }
        return createComponentListFromArray(jSONObjectFindNodeById.optJSONArray("components"), parentPathForDescendantsOf(adobeDCXManifestNode), adobeDCXManifestNode.getNodeId());
    }

    AdobeDCXComponent updateComponent(AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Component must not be null");
        }
        if (!$assertionsDisabled && adobeDCXComponent.getComponentId() == null) {
            throw new AssertionError("Component must have an id");
        }
        AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
        JSONObject jSONObjectFindNodeOfComponentById = findNodeOfComponentById(adobeDCXComponent.getComponentId(), adobeDCXIndexWrapper);
        if ($assertionsDisabled || jSONObjectFindNodeOfComponentById != null) {
            return updateComponent(adobeDCXComponent, jSONObjectFindNodeOfComponentById, adobeDCXIndexWrapper.index);
        }
        throw new AssertionError("Component with id " + adobeDCXComponent.getComponentId() + " not found");
    }

    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest, String str) throws AdobeDCXException {
        AdobeDCXComponent adobeDCXComponentAddComponent = addComponent(adobeDCXComponent, this._rootNode.getDictionary(), str, false);
        if (adobeDCXComponentAddComponent != null && adobeDCXManifest != null) {
            updateSourceHrefOfComponent(adobeDCXComponentAddComponent, adobeDCXComponent, adobeDCXManifest);
        }
        return adobeDCXComponentAddComponent;
    }

    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXManifestNode adobeDCXManifestNode, String str) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Node must not be null");
        }
        JSONObject jSONObjectFindNodeById = findNodeById(adobeDCXManifestNode.getNodeId());
        AdobeStorageErrorUtils.verifyState(jSONObjectFindNodeById != null, "Node with id " + adobeDCXManifestNode.getNodeId() + " not found\nManifest contains node: " + this._allChildren.containsKey(adobeDCXManifestNode.getNodeId()));
        AdobeDCXComponent adobeDCXComponentAddComponent = addComponent(adobeDCXComponent, jSONObjectFindNodeById, str, false);
        if (adobeDCXComponentAddComponent != null && adobeDCXManifest != null) {
            updateSourceHrefOfComponent(adobeDCXComponentAddComponent, adobeDCXComponent, adobeDCXManifest);
        }
        return adobeDCXComponentAddComponent;
    }

    AdobeDCXComponent replaceComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest) throws AdobeDCXException {
        return addComponent(adobeDCXComponent, (JSONObject) null, (String) null, true);
    }

    AdobeDCXComponent moveComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifestNode adobeDCXManifestNode) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Component must not be null");
        }
        AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
        JSONObject jSONObjectFindNodeOfComponentById = findNodeOfComponentById(adobeDCXComponent.getComponentId(), adobeDCXIndexWrapper);
        if (!$assertionsDisabled && jSONObjectFindNodeOfComponentById == null) {
            throw new AssertionError("Component with id " + adobeDCXComponent.getComponentId() + " not found");
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectFindNodeOfComponentById.optJSONArray("components");
        JSONObject dictionary = adobeDCXManifestNode == null ? this._rootNode.getDictionary() : findNodeById(adobeDCXManifestNode.getNodeId());
        if (!$assertionsDisabled && dictionary == null) {
            throw new AssertionError("Node with id " + (adobeDCXManifestNode != null ? adobeDCXManifestNode.getNodeId() : null) + " not found");
        }
        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject((int) adobeDCXIndexWrapper.index);
        AdobeDCXComponent adobeDCXComponentCreateComponentFromDictionary = AdobeDCXComponent.createComponentFromDictionary(jSONObjectOptJSONObject, this, parentPathForDescendantsOf(adobeDCXManifestNode), adobeDCXManifestNode == null ? this._rootNode.getNodeId() : adobeDCXManifestNode.getNodeId());
        String lowerCase = adobeDCXComponentCreateComponentFromDictionary.getAbsolutePath().toLowerCase();
        String lowerCase2 = adobeDCXComponent.getAbsolutePath().toLowerCase();
        if (lowerCase != null && !AdobeDCXUtils.isValidAbsPath(lowerCase)) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, "Absolute paths cannot begin with /manifest or /mimetype: %s" + lowerCase);
        }
        if (!lowerCase.equals(lowerCase2)) {
            if (this._absolutePaths.opt(lowerCase) != null) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorDuplicatePath, "Duplicate absolute path:" + lowerCase);
            }
            this._absolutePaths.remove(lowerCase2);
        }
        try {
            this._absolutePaths.putOpt(lowerCase, adobeDCXComponentCreateComponentFromDictionary);
            this._allComponents.put(adobeDCXComponentCreateComponentFromDictionary.getComponentId(), adobeDCXComponentCreateComponentFromDictionary);
            try {
                jSONObjectFindNodeOfComponentById.putOpt("components", remove((int) adobeDCXIndexWrapper.index, jSONArrayOptJSONArray));
                JSONArray jSONArrayOptJSONArray2 = dictionary.optJSONArray("components");
                if (jSONArrayOptJSONArray2 == null) {
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(jSONObjectOptJSONObject);
                    try {
                        dictionary.putOpt("components", jSONArray);
                    } catch (JSONException e2) {
                        AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
                        return null;
                    }
                } else {
                    jSONArrayOptJSONArray2.put(jSONObjectOptJSONObject);
                }
                markAsModifiedAndDirty();
                return adobeDCXComponentCreateComponentFromDictionary;
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
                return null;
            }
        } catch (JSONException e4) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXManifest.moveComponent", e4.getMessage(), e4);
            return null;
        }
    }

    AdobeDCXComponent markComponentForDeletion(AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Component must not be null");
        }
        AdobeDCXMutableComponent mutableCopy = adobeDCXComponent.getMutableCopy();
        mutableCopy.setState(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete);
        return updateComponent(mutableCopy);
    }

    AdobeDCXComponent setComponent(AdobeDCXComponent adobeDCXComponent, boolean z) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Component must not be null");
        }
        AdobeDCXMutableComponent mutableCopy = adobeDCXComponent.getMutableCopy();
        if (z) {
            mutableCopy.setState(AdobeDCXConstants.AdobeDCXAssetStateModified);
        } else {
            mutableCopy.setState(AdobeDCXConstants.AdobeDCXAssetStateUnmodified);
        }
        return updateComponent(mutableCopy);
    }

    boolean componentIsBound(AdobeDCXComponent adobeDCXComponent) {
        if ($assertionsDisabled || adobeDCXComponent != null) {
            return isBound() && adobeDCXComponent.getEtag() != null && adobeDCXComponent.getEtag().length() > 0;
        }
        throw new AssertionError("Component must not be null");
    }

    AdobeDCXComponent removeComponent(AdobeDCXComponent adobeDCXComponent) {
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Component must not be null");
        }
        AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
        JSONObject jSONObjectFindNodeOfComponentById = findNodeOfComponentById(adobeDCXComponent.getComponentId(), adobeDCXIndexWrapper);
        if ($assertionsDisabled || jSONObjectFindNodeOfComponentById != null) {
            return removeComponent(adobeDCXComponent, jSONObjectFindNodeOfComponentById, adobeDCXIndexWrapper.index);
        }
        throw new AssertionError("Component with id " + adobeDCXComponent.getComponentId() + " not found");
    }

    void removeAllComponents() {
        recursiveRemoveAllComponentsAt(this._rootNode.getDictionary());
    }

    void removeAllComponentsFromRoot() {
        removeAllComponentsAt(this._rootNode.getDictionary());
    }

    void removeAllComponentsFromChild(AdobeDCXManifestNode adobeDCXManifestNode) {
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Node must not be null");
        }
        JSONObject jSONObjectFindNodeById = findNodeById(adobeDCXManifestNode.getNodeId());
        if (!$assertionsDisabled && jSONObjectFindNodeById == null) {
            throw new AssertionError("Node with id " + adobeDCXManifestNode.getNodeId() + " not found");
        }
        removeAllComponentsAt(jSONObjectFindNodeById);
    }

    public List<AdobeDCXManifestNode> getChildren() {
        return createChildListFromArray(this._rootNode.getDictionary().optJSONArray("children"), URIUtil.SLASH, getRootNode().getNodeId());
    }

    public List<AdobeDCXManifestNode> getChildrenOf(AdobeDCXManifestNode adobeDCXManifestNode) {
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Node must not be null");
        }
        JSONObject jSONObjectFindNodeById = findNodeById(adobeDCXManifestNode.getNodeId());
        if (jSONObjectFindNodeById == null) {
            return new ArrayList();
        }
        return createChildListFromArray(jSONObjectFindNodeById.optJSONArray("children"), parentPathForDescendantsOf(adobeDCXManifestNode), adobeDCXManifestNode.getNodeId());
    }

    private void copyChildrenAndComponentsTo(JSONObject jSONObject, JSONObject jSONObject2) {
        Object objOpt = jSONObject2.opt("children");
        if (objOpt != null) {
            try {
                jSONObject.putOpt("children", objOpt);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
            }
        } else {
            jSONObject.remove("children");
        }
        Object objOpt2 = jSONObject2.opt("components");
        if (objOpt2 != null) {
            try {
                jSONObject.putOpt("components", objOpt2);
                return;
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
                return;
            }
        }
        jSONObject.remove("components");
    }

    public AdobeDCXMutableManifestNode updateChild(AdobeDCXManifestNode adobeDCXManifestNode) throws AdobeDCXException {
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode;
        AdobeDCXNode weakDCXNode;
        AdobeDCXNode weakDCXNode2;
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Node must not be null");
        }
        String nodeId = adobeDCXManifestNode.getNodeId();
        if (!$assertionsDisabled && nodeId == null) {
            throw new AssertionError("Node must have an id");
        }
        if (nodeId.equals(getRootNode().getNodeId())) {
            if (!$assertionsDisabled && !adobeDCXManifestNode.getPath().equals(getRootNode().getPath())) {
                throw new AssertionError("Cannot update the path of the root node");
            }
            AdobeDCXMutableManifestNode rootNode = getRootNode();
            JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(adobeDCXManifestNode.getDictionary());
            copyChildrenAndComponentsTo(jSONObjectDeepMutableCopyOfDictionary, getRootNode().getDictionary());
            adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode(jSONObjectDeepMutableCopyOfDictionary, "", (String) null);
            adobeDCXMutableManifestNode.setIsRoot(true);
            this._rootNode = adobeDCXMutableManifestNode;
            this._allChildren.put(this._rootNode.getNodeId(), this._rootNode);
            try {
                this._absolutePaths.putOpt(URIUtil.SLASH, this._rootNode);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
            }
            if (rootNode.getWeakDCXNode() != null && (weakDCXNode2 = rootNode.getWeakDCXNode()) != null) {
                weakDCXNode2.setMutableManifestNode(this._rootNode);
                this._rootNode.setWeakDCXNode(weakDCXNode2);
            }
        } else {
            AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
            JSONObject jSONObjectFindParentOfNodeById = findParentOfNodeById(nodeId, adobeDCXIndexWrapper);
            if (jSONObjectFindParentOfNodeById == null) {
                return null;
            }
            if (!$assertionsDisabled && jSONObjectFindParentOfNodeById == null) {
                throw new AssertionError("Child node with id " + nodeId + " could not be found in manifest.");
            }
            JSONArray jSONArrayOptJSONArray = jSONObjectFindParentOfNodeById.optJSONArray("children");
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject((int) adobeDCXIndexWrapper.index);
            AdobeDCXManifestNode adobeDCXManifestNode2 = this._allChildren.get(jSONObjectFindParentOfNodeById.optString("id"));
            AdobeDCXMutableManifestNode adobeDCXMutableManifestNode2 = (AdobeDCXMutableManifestNode) this._allChildren.get(nodeId);
            if (!$assertionsDisabled && adobeDCXMutableManifestNode2 == null) {
                throw new AssertionError(String.format("Child node with id %s could not be found in manifest.", nodeId));
            }
            JSONObject jSONObjectDeepMutableCopyOfDictionary2 = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(adobeDCXManifestNode.getDictionary());
            copyChildrenAndComponentsTo(jSONObjectDeepMutableCopyOfDictionary2, jSONObjectOptJSONObject);
            adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode(jSONObjectDeepMutableCopyOfDictionary2, this, parentPathForDescendantsOf(adobeDCXManifestNode2), adobeDCXManifestNode2.getNodeId());
            LinkedHashMap<String, AdobeDCXComponent> linkedHashMap = null;
            LinkedHashMap<String, AdobeDCXManifestNode> linkedHashMap2 = null;
            JSONObject jSONObject = null;
            String path = adobeDCXManifestNode.getPath();
            if (path != null && !AdobeDCXUtils.isValidPath(path)) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, "Invalid path: " + path);
            }
            String strOptString = jSONObjectOptJSONObject.optString("path", null);
            if ((path != null || strOptString != null) && (path == null || !path.equals(strOptString))) {
                AdobeDCXManifestNode adobeDCXManifestNode3 = this._allChildren.get(nodeId);
                linkedHashMap = new LinkedHashMap<>();
                linkedHashMap2 = new LinkedHashMap<>();
                jSONObject = new JSONObject();
                AdobeStorageCopyUtils.addEntriesFromComponentsMap(this._allComponents, linkedHashMap);
                AdobeStorageCopyUtils.addEntriesFromChildrenMap(this._allChildren, linkedHashMap2);
                AdobeStorageCopyUtils.addEntriesFromDictionary(this._absolutePaths, jSONObject);
                List<AdobeDCXManifestNode> arrayList = new ArrayList<>();
                List<AdobeDCXManifestNode> arrayList2 = new ArrayList<>();
                if (!recursivelyRemoveNode(adobeDCXManifestNode3, linkedHashMap2, linkedHashMap, jSONObject, null, arrayList) || !recursivelyAddNode(adobeDCXMutableManifestNode, jSONObjectDeepMutableCopyOfDictionary2, false, linkedHashMap2, linkedHashMap, jSONObject, null, null, arrayList2)) {
                    return null;
                }
                updateDCXNodesWithAddedChildren(arrayList2, arrayList);
            } else if (adobeDCXMutableManifestNode2.getWeakDCXNode() != null && (weakDCXNode = adobeDCXMutableManifestNode2.getWeakDCXNode()) != null) {
                weakDCXNode.setMutableManifestNode(adobeDCXMutableManifestNode);
                adobeDCXMutableManifestNode.setWeakDCXNode(weakDCXNode);
            }
            try {
                jSONObjectFindParentOfNodeById.putOpt("children", insert((int) adobeDCXIndexWrapper.index, jSONObjectDeepMutableCopyOfDictionary2, remove((int) adobeDCXIndexWrapper.index, jSONArrayOptJSONArray)));
                if (linkedHashMap2 != null) {
                    this._allChildren = linkedHashMap2;
                    this._allComponents = linkedHashMap;
                    this._absolutePaths = jSONObject;
                } else {
                    this._allChildren.put(nodeId, adobeDCXMutableManifestNode);
                    if (adobeDCXMutableManifestNode.getPath() != null) {
                        if (!$assertionsDisabled && strOptString == null) {
                            throw new AssertionError("Previous node should have an existing path if we are in this branch.");
                        }
                        String lowerCase = adobeDCXMutableManifestNode.getAbsolutePath().toLowerCase();
                        if (lowerCase != null) {
                            this._absolutePaths.put(lowerCase, adobeDCXMutableManifestNode);
                        }
                    }
                }
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
                return null;
            }
        }
        markAsModifiedAndDirty();
        return adobeDCXMutableManifestNode;
    }

    boolean recursivelyAddNode(AdobeDCXManifestNode adobeDCXManifestNode, JSONObject jSONObject, boolean z, LinkedHashMap<String, AdobeDCXManifestNode> linkedHashMap, LinkedHashMap<String, AdobeDCXComponent> linkedHashMap2, JSONObject jSONObject2, List<AdobeDCXComponent> list, List<String> list2, List<AdobeDCXManifestNode> list3) throws AdobeDCXException {
        String strOptString = jSONObject.optString("id");
        if (linkedHashMap.get(strOptString) != null) {
            AdobeLogger.log(Level.ERROR, "AdobeDCXManifest.recursivelyAddNode", "Childe node with id " + strOptString + " already exists");
            return false;
        }
        linkedHashMap.put(strOptString, adobeDCXManifestNode);
        if (adobeDCXManifestNode.getPath() != null) {
            String lowerCase = adobeDCXManifestNode.getAbsolutePath().toLowerCase();
            if (lowerCase != null && !AdobeDCXUtils.isValidAbsPath(lowerCase)) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, "Absolute paths cannot begin with /manifest or /mimetype %s" + lowerCase);
            }
            if (jSONObject2.opt(lowerCase) != null) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorDuplicatePath, "Child node with absolute path " + lowerCase + " already exists");
            }
            try {
                jSONObject2.putOpt(lowerCase, adobeDCXManifestNode);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
                return false;
            }
        }
        String strParentPathForDescendantsOf = parentPathForDescendantsOf(adobeDCXManifestNode);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= jSONArrayOptJSONArray.length()) {
                    break;
                }
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                if (z) {
                    try {
                        jSONObjectOptJSONObject.putOpt("id", AdobeStorageUtils.generateUuid());
                    } catch (JSONException e3) {
                        AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
                        return false;
                    }
                }
                if (recursivelyAddNode(new AdobeDCXMutableManifestNode(jSONObjectOptJSONObject, this, strParentPathForDescendantsOf, adobeDCXManifestNode.getNodeId()), jSONObjectOptJSONObject, z, linkedHashMap, linkedHashMap2, jSONObject2, list, list2, list3)) {
                    i = i2 + 1;
                } else {
                    return false;
                }
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("components");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray2.optJSONObject(i3);
                if (list2 != null) {
                    list2.add(jSONObjectOptJSONObject2.optString("id"));
                }
                if (z) {
                    try {
                        jSONObjectOptJSONObject2.putOpt("id", AdobeStorageUtils.generateUuid());
                        jSONObjectOptJSONObject2.remove("etag");
                        jSONObjectOptJSONObject2.remove(AdobeCommunityConstants.AdobeCommunityResourceVersionKey);
                        jSONObjectOptJSONObject2.putOpt("state", AdobeDCXConstants.AdobeDCXAssetStateModified);
                    } catch (JSONException e4) {
                        AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e4);
                        return false;
                    }
                }
                AdobeDCXComponent adobeDCXComponentCreateComponentFromDictionary = AdobeDCXComponent.createComponentFromDictionary(jSONObjectOptJSONObject2, this, strParentPathForDescendantsOf, adobeDCXManifestNode.getNodeId());
                if (linkedHashMap2.get(adobeDCXComponentCreateComponentFromDictionary.getComponentId()) != null) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorDuplicateId, "Component with id " + adobeDCXComponentCreateComponentFromDictionary.getComponentId() + " already exists.");
                }
                if (list != null) {
                    list.add(adobeDCXComponentCreateComponentFromDictionary);
                }
                linkedHashMap2.put(adobeDCXComponentCreateComponentFromDictionary.getComponentId(), adobeDCXComponentCreateComponentFromDictionary);
                String lowerCase2 = adobeDCXComponentCreateComponentFromDictionary.getAbsolutePath().toLowerCase();
                if (lowerCase2 != null && !AdobeDCXUtils.isValidAbsPath(lowerCase2)) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, "Absolute paths cannot begin with /manifest or /mimetype: %s" + lowerCase2);
                }
                if (jSONObject2.opt(lowerCase2) != null) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorDuplicatePath, "Component with absolute path " + lowerCase2 + " already exists.");
                }
                try {
                    jSONObject2.putOpt(lowerCase2, adobeDCXComponentCreateComponentFromDictionary);
                } catch (JSONException e5) {
                    AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e5);
                    return false;
                }
            }
        }
        if (list3 != null) {
            list3.add(adobeDCXManifestNode);
        }
        return true;
    }

    boolean recursivelyRemoveNode(AdobeDCXManifestNode adobeDCXManifestNode, LinkedHashMap<String, AdobeDCXManifestNode> linkedHashMap, LinkedHashMap<String, AdobeDCXComponent> linkedHashMap2, JSONObject jSONObject, List<AdobeDCXComponent> list, List<AdobeDCXManifestNode> list2) {
        String nodeId = adobeDCXManifestNode.getNodeId();
        JSONObject jSONObjectFindNodeById = findNodeById(nodeId);
        linkedHashMap.remove(nodeId);
        if (list2 != null) {
            list2.add(adobeDCXManifestNode);
        }
        if (adobeDCXManifestNode.getPath() != null) {
            jSONObject.remove(adobeDCXManifestNode.getAbsolutePath().toLowerCase());
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectFindNodeById.optJSONArray("children");
        if (jSONArrayOptJSONArray != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= jSONArrayOptJSONArray.length()) {
                    break;
                }
                if (recursivelyRemoveNode(linkedHashMap.get(jSONArrayOptJSONArray.optJSONObject(i2).optString("id")), linkedHashMap, linkedHashMap2, jSONObject, list, list2)) {
                    i = i2 + 1;
                } else {
                    return false;
                }
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObjectFindNodeById.optJSONArray("components");
        if (jSONArrayOptJSONArray2 != null) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= jSONArrayOptJSONArray2.length()) {
                    break;
                }
                AdobeDCXComponent adobeDCXComponent = linkedHashMap2.get(jSONArrayOptJSONArray2.optJSONObject(i4).optString("id"));
                linkedHashMap2.remove(adobeDCXComponent.getComponentId());
                jSONObject.remove(adobeDCXComponent.getAbsolutePath().toLowerCase());
                if (list != null) {
                    list.add(adobeDCXComponent);
                }
                i3 = i4 + 1;
            }
        }
        return true;
    }

    public AdobeDCXManifestNode addChild(AdobeDCXManifestNode adobeDCXManifestNode) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Node must not be null");
        }
        long length = 0;
        JSONArray jSONArrayOptJSONArray = this._rootNode.getDictionary().optJSONArray("children");
        if (jSONArrayOptJSONArray != null) {
            length = jSONArrayOptJSONArray.length();
        }
        return insertChild(adobeDCXManifestNode, this._rootNode.getDictionary(), length, parentPathForDescendantsOf(null), getRootNode().getNodeId());
    }

    public AdobeDCXManifestNode addChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXManifestNode adobeDCXManifestNode2) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Node must not be null");
        }
        JSONObject jSONObjectFindNodeById = findNodeById(adobeDCXManifestNode2.getNodeId());
        if (!$assertionsDisabled && jSONObjectFindNodeById == null) {
            throw new AssertionError("Parent node with id " + adobeDCXManifestNode2.getNodeId() + " could not be found");
        }
        long length = 0;
        JSONArray jSONArrayOptJSONArray = jSONObjectFindNodeById.optJSONArray("children");
        if (jSONArrayOptJSONArray != null) {
            length = jSONArrayOptJSONArray.length();
        }
        return insertChild(adobeDCXManifestNode, jSONObjectFindNodeById, length, parentPathForDescendantsOf(adobeDCXManifestNode2), adobeDCXManifestNode2.getNodeId());
    }

    AdobeDCXManifestNode insertChild(AdobeDCXManifestNode adobeDCXManifestNode, long j) throws AdobeDCXException {
        if ($assertionsDisabled || adobeDCXManifestNode != null) {
            return insertChild(adobeDCXManifestNode, this._rootNode.getDictionary(), j, parentPathForDescendantsOf(null), getRootNode().getNodeId());
        }
        throw new AssertionError("Node must not be null");
    }

    AdobeDCXManifestNode insertChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXManifestNode adobeDCXManifestNode2, long j) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Node must not be null");
        }
        JSONObject jSONObjectFindNodeById = findNodeById(adobeDCXManifestNode2.getNodeId());
        if ($assertionsDisabled || jSONObjectFindNodeById != null) {
            return insertChild(adobeDCXManifestNode, jSONObjectFindNodeById, j, parentPathForDescendantsOf(adobeDCXManifestNode2), adobeDCXManifestNode2.getNodeId());
        }
        throw new AssertionError("Parent node with id " + adobeDCXManifestNode2.getNodeId() + " could not be found");
    }

    public AdobeDCXManifestNode insertChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXManifest adobeDCXManifest, AdobeDCXManifestNode adobeDCXManifestNode2, long j, boolean z, String str, String str2, boolean z2, List<AdobeDCXComponent> list, List<String> list2, List<AdobeDCXComponent> list3) throws AdobeDCXException {
        JSONObject jSONObject;
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeFromDictionary;
        AdobeDCXComponent adobeDCXComponent;
        AdobeDCXManifestNode adobeDCXManifestNode3;
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Node must not be null");
        }
        if (!$assertionsDisabled && adobeDCXManifest == null) {
            throw new AssertionError("Manifest must not be null");
        }
        boolean z3 = adobeDCXManifestNode.getNodeId() == getRootNode().getNodeId();
        if (z3) {
            if (!$assertionsDisabled && str != null && !new String(URIUtil.SLASH).equals(str)) {
                throw new AssertionError(String.format("Attempted to replace root node with an invalid path %s it can only be \"/\"", str));
            }
            if (!$assertionsDisabled && str2 != null && !str2.equals(getRootNode().getNodeId())) {
                throw new AssertionError("Changing the ID of the root node during a replacement is not permitted.");
            }
        } else if (!$assertionsDisabled && str != null && !AdobeDCXUtils.isValidPath(str)) {
            throw new AssertionError("Invalid path: " + str);
        }
        JSONObject jSONObjectFindNodeById = adobeDCXManifest.findNodeById(adobeDCXManifestNode.getNodeId());
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Couldn't find node.");
        }
        JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObjectFindNodeById);
        if (z3) {
            jSONObjectDeepMutableCopyOfDictionary.remove("path");
        } else if (str != null) {
            try {
                jSONObjectDeepMutableCopyOfDictionary.putOpt("path", str);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
                return null;
            }
        }
        if (str2 != null) {
            try {
                jSONObjectDeepMutableCopyOfDictionary.putOpt("id", str2);
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e3);
                return null;
            }
        } else if ((str != null || z2) && !z) {
            try {
                jSONObjectDeepMutableCopyOfDictionary.putOpt("id", AdobeStorageUtils.generateUuid());
            } catch (JSONException e4) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e4);
                return null;
            }
        }
        String strOptString = jSONObjectDeepMutableCopyOfDictionary.optString("id", null);
        AdobeDCXManifestNode adobeDCXManifestNode4 = this._allChildren.get(strOptString);
        if (z) {
            if (!$assertionsDisabled && adobeDCXManifestNode4 == null) {
                throw new AssertionError("Couldn't find existing node.");
            }
        } else if (adobeDCXManifestNode4 != null) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorDuplicateId, "Childe node with id " + strOptString + " already exists.");
        }
        AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
        adobeDCXIndexWrapper.index = j;
        if (!z) {
            JSONObject jSONObjectFindNodeById2 = adobeDCXManifestNode2 != null ? findNodeById(adobeDCXManifestNode2.getNodeId()) : this._rootNode.getDictionary();
            if (!$assertionsDisabled && jSONObjectFindNodeById2 == null) {
                throw new AssertionError("Can't find new parent");
            }
            jSONObject = jSONObjectFindNodeById2;
        } else if (z3) {
            jSONObject = null;
        } else {
            JSONObject jSONObjectFindParentOfNodeById = findParentOfNodeById(strOptString, adobeDCXIndexWrapper);
            if (!$assertionsDisabled && jSONObjectFindParentOfNodeById == null) {
                throw new AssertionError("Can't find existing parent");
            }
            jSONObject = jSONObjectFindParentOfNodeById;
            adobeDCXManifestNode2 = this._allChildren.get(jSONObjectFindParentOfNodeById.optString("id"));
        }
        String strParentPathForDescendantsOf = parentPathForDescendantsOf(adobeDCXManifestNode2);
        if (z3) {
            adobeDCXMutableManifestNodeCreateNodeFromDictionary = new AdobeDCXMutableManifestNode(jSONObjectDeepMutableCopyOfDictionary, "", (String) null);
            adobeDCXMutableManifestNodeCreateNodeFromDictionary.setIsRoot(true);
        } else {
            adobeDCXMutableManifestNodeCreateNodeFromDictionary = AdobeDCXMutableManifestNode.createNodeFromDictionary(jSONObjectDeepMutableCopyOfDictionary, this, strParentPathForDescendantsOf, adobeDCXManifestNode2 == null ? getRootNode().getNodeId() : adobeDCXManifestNode2.getNodeId());
        }
        if (adobeDCXMutableManifestNodeCreateNodeFromDictionary.getAbsolutePath() != null && !z3 && !AdobeDCXUtils.isValidAbsPath(adobeDCXMutableManifestNodeCreateNodeFromDictionary.getAbsolutePath())) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, String.format("Absolute paths cannot begin with /manifest or /mimetype: %s", adobeDCXMutableManifestNodeCreateNodeFromDictionary.getAbsolutePath()));
        }
        if (adobeDCXMutableManifestNodeCreateNodeFromDictionary.getPath() != null && (adobeDCXManifestNode3 = (AdobeDCXManifestNode) this._absolutePaths.opt(adobeDCXMutableManifestNodeCreateNodeFromDictionary.getAbsolutePath().toLowerCase())) != null) {
            if (!adobeDCXManifestNode3.getNodeId().equals(adobeDCXManifestNode4 != null ? adobeDCXManifestNode4.getNodeId() : null)) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorDuplicatePath, "Child node with absolute path " + adobeDCXMutableManifestNodeCreateNodeFromDictionary.getAbsolutePath().toLowerCase() + " already exists.");
            }
        }
        LinkedHashMap<String, AdobeDCXComponent> linkedHashMap = new LinkedHashMap<>();
        LinkedHashMap<String, AdobeDCXManifestNode> linkedHashMap2 = new LinkedHashMap<>();
        JSONObject jSONObject2 = new JSONObject();
        AdobeStorageCopyUtils.addEntriesFromComponentsMap(this._allComponents, linkedHashMap);
        AdobeStorageCopyUtils.addEntriesFromChildrenMap(this._allChildren, linkedHashMap2);
        AdobeStorageCopyUtils.addEntriesFromDictionary(this._absolutePaths, jSONObject2);
        List<AdobeDCXManifestNode> arrayList = new ArrayList<>();
        List<AdobeDCXManifestNode> arrayList2 = new ArrayList<>();
        if (adobeDCXManifestNode4 != null && !recursivelyRemoveNode(adobeDCXManifestNode4, linkedHashMap2, linkedHashMap, jSONObject2, list3, arrayList2)) {
            return null;
        }
        if (!recursivelyAddNode(adobeDCXMutableManifestNodeCreateNodeFromDictionary, jSONObjectDeepMutableCopyOfDictionary, str != null || z2, linkedHashMap2, linkedHashMap, jSONObject2, list, list2, arrayList)) {
            return null;
        }
        if (jSONObject != null) {
            try {
                if (z) {
                    jSONObject.optJSONArray("children").put((int) adobeDCXIndexWrapper.index, jSONObjectDeepMutableCopyOfDictionary);
                } else {
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
                    if (jSONArrayOptJSONArray == null) {
                        JSONArray jSONArray = new JSONArray();
                        jSONArray.put(jSONObjectDeepMutableCopyOfDictionary);
                        jSONObject.putOpt("children", jSONArray);
                    } else {
                        if (j > jSONArrayOptJSONArray.length() - 1) {
                            j = jSONArrayOptJSONArray.length();
                        }
                        jSONObject.putOpt("children", insert((int) j, jSONObjectDeepMutableCopyOfDictionary, jSONArrayOptJSONArray));
                    }
                }
            } catch (JSONException e5) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e5);
                return null;
            }
        }
        LinkedHashMap linkedHashMap3 = (LinkedHashMap) this._allComponents.clone();
        this._allChildren = linkedHashMap2;
        this._allComponents = linkedHashMap;
        this._absolutePaths = jSONObject2;
        if (z3) {
            this._rootNode = adobeDCXMutableManifestNodeCreateNodeFromDictionary;
        }
        updateDCXNodesWithAddedChildren(arrayList, arrayList2);
        markAsModifiedAndDirty();
        if (list3 != null) {
            Iterator<AdobeDCXComponent> it = list3.iterator();
            while (it.hasNext()) {
                setSourceHref(null, it.next());
            }
        }
        if (list != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= list.size()) {
                    break;
                }
                AdobeDCXComponent adobeDCXComponent2 = list.get(i2);
                if (linkedHashMap3.get(adobeDCXComponent2.getComponentId()) == null && (adobeDCXComponent = adobeDCXManifest.getAllComponents().get(list2.get(i2))) != null) {
                    updateSourceHrefOfComponent(adobeDCXComponent2, adobeDCXComponent, adobeDCXManifest);
                }
                i = i2 + 1;
            }
        }
        return this._allChildren.get(strOptString);
    }

    AdobeDCXManifestNode moveChild(AdobeDCXManifestNode adobeDCXManifestNode, long j) throws AdobeDCXException {
        AdobeStorageErrorUtils.verifyArgument(adobeDCXManifestNode != null, "Node must not be null");
        AdobeStorageErrorUtils.verifyArgument(adobeDCXManifestNode.isRoot() ? false : true, "Root Node cannot be moved");
        return moveChild(adobeDCXManifestNode, this._rootNode.getDictionary(), j);
    }

    AdobeDCXManifestNode moveChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXManifestNode adobeDCXManifestNode2, long j) throws AdobeDCXException {
        AdobeStorageErrorUtils.verifyArgument(adobeDCXManifestNode != null, "Node must not be null");
        AdobeStorageErrorUtils.verifyArgument(adobeDCXManifestNode.isRoot() ? false : true, "Root Node cannot be moved");
        JSONObject jSONObjectFindNodeById = findNodeById(adobeDCXManifestNode2.getNodeId());
        if ($assertionsDisabled || jSONObjectFindNodeById != null) {
            return moveChild(adobeDCXManifestNode, jSONObjectFindNodeById, j);
        }
        throw new AssertionError("Parent node with id " + adobeDCXManifestNode2.getNodeId() + " could not be found");
    }

    AdobeDCXManifestNode removeChild(AdobeDCXManifestNode adobeDCXManifestNode, ArrayList<AdobeDCXComponent> arrayList) {
        AdobeStorageErrorUtils.verifyArgument(adobeDCXManifestNode != null, "Node must not be null");
        AdobeStorageErrorUtils.verifyArgument(!adobeDCXManifestNode.isRoot(), "Root Node cannot be removed");
        String nodeId = adobeDCXManifestNode.getNodeId();
        AdobeStorageErrorUtils.verifyArgument(nodeId != null, "Node must have an id");
        AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
        JSONObject jSONObjectFindParentOfNodeById = findParentOfNodeById(nodeId, adobeDCXIndexWrapper);
        AdobeStorageErrorUtils.verifyState(jSONObjectFindParentOfNodeById != null, "Child node with id " + nodeId + " could not be found.\nManifest contains node: " + this._allChildren.containsKey(nodeId) + "\nParent Id: " + adobeDCXManifestNode.getParentId() + ".\nManifest contains parent node: " + this._allChildren.containsKey(adobeDCXManifestNode.getParentId()));
        JSONArray jSONArrayOptJSONArray = jSONObjectFindParentOfNodeById.optJSONArray("children");
        ArrayList arrayList2 = new ArrayList();
        recursivelyRemoveNode(adobeDCXManifestNode, this._allChildren, this._allComponents, this._absolutePaths, arrayList, arrayList2);
        JSONArray jSONArrayRemove = remove((int) adobeDCXIndexWrapper.index, jSONArrayOptJSONArray);
        try {
            jSONObjectFindParentOfNodeById.putOpt("children", jSONArrayRemove);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
        }
        if (jSONArrayRemove.length() == 0) {
            jSONObjectFindParentOfNodeById.remove("children");
        }
        updateDCXNodesWithAddedChildren(null, arrayList2);
        markAsModifiedAndDirty();
        return adobeDCXManifestNode;
    }

    void removeAllChildrenWithRemovedComponents(ArrayList<AdobeDCXComponent> arrayList) {
        removeAllChildrenAt(this._rootNode.getDictionary(), arrayList);
    }

    void removeAllChildrenFromParent(AdobeDCXManifestNode adobeDCXManifestNode, ArrayList<AdobeDCXComponent> arrayList) {
        removeAllChildrenAt(findNodeById(adobeDCXManifestNode.getNodeId()), arrayList);
    }

    long getAbsoluteIndexOf(AdobeDCXManifestNode adobeDCXManifestNode) {
        if (adobeDCXManifestNode.isRoot()) {
            return -1L;
        }
        AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
        adobeDCXIndexWrapper.index = 0L;
        return recursiveGetAbsoluteIndexOfNodeId(adobeDCXManifestNode.getNodeId(), this._rootNode.getDictionary(), adobeDCXIndexWrapper);
    }

    protected AdobeDCXNode getDcxNodeWithId(String str) {
        AdobeDCXManifestNode adobeDCXManifestNode = this._allChildren.get(str);
        if (adobeDCXManifestNode == null) {
            return null;
        }
        if (!$assertionsDisabled && !(adobeDCXManifestNode instanceof AdobeDCXMutableManifestNode)) {
            throw new AssertionError("Node type differs from what is expected.");
        }
        AdobeDCXNode weakDCXNode = ((AdobeDCXMutableManifestNode) adobeDCXManifestNode).getWeakDCXNode();
        if (weakDCXNode != null) {
            return weakDCXNode;
        }
        AdobeDCXNode adobeDCXNode = new AdobeDCXNode((AdobeDCXMutableManifestNode) adobeDCXManifestNode, (AdobeDCXBranchCoreProtocol) null);
        ((AdobeDCXMutableManifestNode) adobeDCXManifestNode).setWeakDCXNode(adobeDCXNode);
        return adobeDCXNode;
    }

    protected AdobeDCXNode getDcxNodeWithAbsolutePath(String str) {
        AdobeDCXManifestNode childWithAbsolutePath = getChildWithAbsolutePath(str);
        if (childWithAbsolutePath == null) {
            return null;
        }
        if (!$assertionsDisabled && !(childWithAbsolutePath instanceof AdobeDCXMutableManifestNode)) {
            throw new AssertionError("Node type differs from what is expected.");
        }
        AdobeDCXNode weakDCXNode = ((AdobeDCXMutableManifestNode) childWithAbsolutePath).getWeakDCXNode();
        if (weakDCXNode == null) {
            AdobeDCXNode adobeDCXNode = new AdobeDCXNode((AdobeDCXMutableManifestNode) childWithAbsolutePath, (AdobeDCXBranchCoreProtocol) null);
            ((AdobeDCXMutableManifestNode) childWithAbsolutePath).setWeakDCXNode(adobeDCXNode);
            return adobeDCXNode;
        }
        return weakDCXNode;
    }

    public AdobeDCXManifest getCopy() throws AdobeDCXException {
        return new AdobeDCXManifest(getLocalData());
    }

    public AdobeDCXManifest getCopyWithoutLocal() throws AdobeDCXException {
        String localData = getLocalData();
        try {
            JSONObject jSONObject = new JSONObject(localData);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("local");
            if (jSONObjectOptJSONObject != null) {
                jSONObjectOptJSONObject.remove("compositeHref");
                jSONObjectOptJSONObject.remove("etag");
                jSONObjectOptJSONObject.remove(AdobeCommunityConstants.AdobeCommunityResourceVersionKey);
                jSONObjectOptJSONObject.remove("archivalState");
                jSONObjectOptJSONObject.remove("readOnly");
                jSONObjectOptJSONObject.remove("collaboration");
                jSONObjectOptJSONObject.remove(AdobeDCXConstantsPrivate.AdobeDCXManifestSaveIdManifestKey);
            }
            recursiveRemoveEmptyArrays(jSONObject);
            return new AdobeDCXManifest(jSONObject);
        } catch (JSONException e2) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "AdobeDCXManifest", "dcxManifestCopy failed - reason:" + e2.getMessage(), "manifest data:" + localData);
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidManifest, "Invalid JSON", e2);
        }
    }

    public static void updateUnmanagedComponents(AdobeDCXManifest adobeDCXManifest, AdobeDCXManifest adobeDCXManifest2) {
        AdobeDCXComponent adobeDCXComponent;
        String uCIDOfComponent;
        for (Map.Entry<String, AdobeDCXComponent> entry : adobeDCXManifest._allComponents.entrySet()) {
            String key = entry.getKey();
            AdobeDCXComponent value = entry.getValue();
            if (adobeDCXManifest2 == null) {
                adobeDCXComponent = null;
            } else {
                adobeDCXComponent = adobeDCXManifest2._allComponents.get(key);
            }
            if (adobeDCXComponent != null && value.getEtag().equals(adobeDCXComponent.getEtag()) && (uCIDOfComponent = adobeDCXManifest2.getUCIDOfComponent(adobeDCXComponent)) != null) {
                adobeDCXManifest.setUCIDForComponent(uCIDOfComponent, value);
            }
        }
    }

    static SimpleDateFormat getDateFormatter() {
        return staticDateFormatter;
    }

    public static Date convertToDate(String str, String str2) {
        try {
            return new SimpleDateFormat(str).parse(str2);
        } catch (ParseException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXManifest.class.getSimpleName(), null, e2);
            return null;
        }
    }

    public static Date parseDate(String str) {
        String strSubstring;
        String strSubstring2;
        String[] strArr = {"yyyy-MM-dd'T'HH:mm:ss'Z'", "yyyy-MM-dd'T'HH:mm:ss.SSSSSS'Z'", "yyyy-MM-dd'T'HH:mm:ssZ", "yyyy-MM-dd'T'HH:mm:ss.SSSSSSZ"};
        if (str != null && !str.endsWith("Z")) {
            if (str.contains("+")) {
                strSubstring = str.substring(0, str.lastIndexOf(43));
                strSubstring2 = str.substring(str.lastIndexOf(43));
            } else {
                strSubstring = str.substring(0, str.lastIndexOf(45));
                strSubstring2 = str.substring(str.lastIndexOf(45));
            }
            str = strSubstring + (strSubstring2.substring(0, strSubstring2.indexOf(58)) + strSubstring2.substring(strSubstring2.indexOf(58) + 1));
        }
        if (str == null) {
            return null;
        }
        Date dateConvertToDate = null;
        for (int i = 0; i < strArr.length && dateConvertToDate == null; i++) {
            dateConvertToDate = convertToDate(strArr[i], str);
        }
        return dateConvertToDate;
    }

    ArrayList<String> verifyIntegrityWithLogging(boolean z, String str) {
        String str2;
        AdobeDCXNode weakDCXNode;
        ArrayList<String> arrayList = new ArrayList<>();
        LinkedHashMap<String, AdobeDCXComponent> linkedHashMap = new LinkedHashMap<>();
        AdobeStorageCopyUtils.addEntriesFromComponentsMap(this._allComponents, linkedHashMap);
        LinkedHashMap<String, AdobeDCXManifestNode> linkedHashMap2 = new LinkedHashMap<>();
        AdobeStorageCopyUtils.addEntriesFromChildrenMap(this._allChildren, linkedHashMap2);
        JSONObject jSONObject = new JSONObject();
        AdobeStorageCopyUtils.addEntriesFromDictionary(this._absolutePaths, jSONObject);
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        Iterator<AdobeDCXManifestNode> it = this._allChildren.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            AdobeDCXManifestNode next = it.next();
            if (!(next instanceof AdobeDCXMutableManifestNode)) {
                arrayList.add("allChildren contains a child node that is not of type AdobeDCXMutableManifestNode.");
                break;
            }
            if (((AdobeDCXMutableManifestNode) next).getWeakDCXNode() != null && (weakDCXNode = ((AdobeDCXMutableManifestNode) next).getWeakDCXNode()) != null && weakDCXNode.getMutableManifestNode() != next) {
                arrayList.add(String.format("AdobeDCXNode %s refers to a manifest node that does not match what is stored in the allChildren table.", weakDCXNode.getNodeId()));
            }
        }
        linkedHashMap2.remove(this._rootNode.getNodeId());
        jSONObject.remove(URIUtil.SLASH);
        if (!this._rootNode.isRoot()) {
            arrayList.add("Root node must have isRoot flag set.");
        }
        if (this._rootNode.getDictionary().opt("path") != null) {
            arrayList.add("Root node must not have a path.");
        }
        recursivelyVerifyIntegrityFromNodeDict(this._rootNode.getDictionary(), URIUtil.SLASH, linkedHashMap2, linkedHashMap, jSONObject, jSONObject2, jSONObject3, arrayList);
        Iterator<Map.Entry<String, AdobeDCXManifestNode>> it2 = linkedHashMap2.entrySet().iterator();
        while (it2.hasNext()) {
            arrayList.add("Node " + it2.next().getKey() + " is in cache but not in DOM.");
        }
        Iterator<Map.Entry<String, AdobeDCXComponent>> it3 = linkedHashMap.entrySet().iterator();
        while (it3.hasNext()) {
            arrayList.add("Component " + it3.next().getKey() + " is in cache but not in DOM.");
        }
        if (jSONObject.keys() != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                arrayList.add("Path " + itKeys.next() + " is in cache but not in DOM.");
            }
        }
        if (z && !arrayList.isEmpty()) {
            if (str != null) {
                str2 = "Branch " + str + " of composite " + getCompositeId() + " shows " + arrayList.size() + " inconsistencies:";
            } else {
                str2 = "Manifest " + getCompositeId() + " shows " + arrayList.size() + " inconsistencies:";
            }
            arrayList.add(0, str2);
            StringBuilder sb = new StringBuilder();
            Iterator<String> it4 = arrayList.iterator();
            while (it4.hasNext()) {
                sb.append(it4.next() + "\n   ");
            }
            AdobeLogger.log(Level.DEBUG, "DCX", "**************************************************\n" + sb.toString() + "\n**************************************************");
        }
        return arrayList;
    }

    private void markAsModifiedAndDirty() {
        if (getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified)) {
            setCompositeState(AdobeDCXConstants.AdobeDCXAssetStateModified);
        } else {
            this.isDirty = true;
        }
    }

    public Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException("Yet to be implemented");
    }

    public String getSnapshotData() {
        JSONObject jSONObjectOptJSONObject = this._dictionary.optJSONObject("local");
        if (jSONObjectOptJSONObject != null) {
            this._dictionary.remove("local");
        }
        JSONObject jSONObjectRecursiveSnapshotCopyOfNodeDict = recursiveSnapshotCopyOfNodeDict(this._rootNode.getDictionary());
        if (!$assertionsDisabled && !this._rootNode.getDictionary().optString("id").equals(this._dictionary.optString("id"))) {
            throw new AssertionError("RootNode Id is not equal to the composite Id");
        }
        AdobeStorageCopyUtils.addEntriesFromDictionary(this._dictionary, jSONObjectRecursiveSnapshotCopyOfNodeDict);
        String string = jSONObjectRecursiveSnapshotCopyOfNodeDict.toString();
        if (jSONObjectOptJSONObject != null) {
            try {
                this._dictionary.put("local", jSONObjectOptJSONObject);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXManifest", null, e2);
            }
        }
        return string;
    }

    private static JSONObject recursiveSnapshotCopyOfNodeDict(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObject);
        JSONArray jSONArrayOptJSONArray = jSONObjectDeepMutableCopyOfDictionary.optJSONArray("components");
        if (jSONArrayOptJSONArray != null) {
            JSONArray jSONArrayDeepMutableCopyOfArray = AdobeStorageCopyUtils.deepMutableCopyOfArray(jSONArrayOptJSONArray);
            try {
                jSONObjectDeepMutableCopyOfDictionary.put("components", jSONArrayDeepMutableCopyOfArray);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXManifest", null, e2);
            }
            for (int i = 0; i < jSONArrayDeepMutableCopyOfArray.length(); i++) {
                JSONObject jSONObject2 = (JSONObject) jSONArrayDeepMutableCopyOfArray.opt(i);
                jSONObject2.remove("etag");
                jSONObject2.remove(AdobeCommunityConstants.AdobeCommunityResourceVersionKey);
                jSONObject2.remove("state");
                jSONObject2.remove(AdobeCommunityConstants.AdobeCommunityResourceMD5Key);
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObjectDeepMutableCopyOfDictionary.optJSONArray("children");
        if (jSONArrayOptJSONArray2 != null) {
            JSONArray jSONArray = new JSONArray();
            try {
                jSONObjectDeepMutableCopyOfDictionary.put("children", jSONArray);
            } catch (JSONException e3) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXManifest", null, e3);
            }
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                jSONArray.put(recursiveSnapshotCopyOfNodeDict(jSONArrayOptJSONArray2.optJSONObject(i2)));
            }
        }
        return jSONObjectDeepMutableCopyOfDictionary;
    }

    private void updateDCXNodesWithAddedChildren(List<AdobeDCXManifestNode> list, List<AdobeDCXManifestNode> list2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(list == null ? 0 : list.size());
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = (AdobeDCXMutableManifestNode) list.get(i);
                String nodeId = adobeDCXMutableManifestNode.getNodeId();
                if (nodeId != null) {
                    linkedHashMap.put(nodeId, adobeDCXMutableManifestNode);
                }
            }
        }
        if (list2 != null) {
            for (int i2 = 0; i2 < list2.size(); i2++) {
                AdobeDCXMutableManifestNode adobeDCXMutableManifestNode2 = (AdobeDCXMutableManifestNode) list2.get(i2);
                AdobeDCXNode weakDCXNode = adobeDCXMutableManifestNode2.getWeakDCXNode();
                if (weakDCXNode != null) {
                    AdobeDCXMutableManifestNode adobeDCXMutableManifestNode3 = (AdobeDCXMutableManifestNode) linkedHashMap.get(adobeDCXMutableManifestNode2.getNodeId());
                    if (adobeDCXMutableManifestNode3 != null) {
                        weakDCXNode.setMutableManifestNode(adobeDCXMutableManifestNode3);
                        adobeDCXMutableManifestNode3.setWeakDCXNode(weakDCXNode);
                    } else {
                        weakDCXNode.unbindFromHost();
                    }
                    adobeDCXMutableManifestNode2.setWeakDCXNode(null);
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination
    public boolean isSameLocation(AdobeDCXManifest adobeDCXManifest) {
        if (this == adobeDCXManifest) {
            return true;
        }
        if (adobeDCXManifest == null) {
            return false;
        }
        if (getCompositeId() != null) {
            if (getCompositeId().equals(adobeDCXManifest.getCompositeId())) {
                return true;
            }
        } else if (adobeDCXManifest.getCompositeId() == null) {
            return true;
        }
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination
    public String getId() {
        if (getCompositeId() != null) {
            return getCompositeId();
        }
        return null;
    }

    public void setHostCompositeId(String str) {
        this.hostCompositeId = str;
    }

    public String getHostCompositeId() {
        return this.hostCompositeId;
    }
}
