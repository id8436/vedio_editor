package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.xmp.XMPConst;
import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPPathFactory;
import com.behance.sdk.util.BehanceSDKPublishConstants;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXMetadataPath {
    private String _name;
    private String _schema;

    public String getSchema() {
        return this._schema;
    }

    public void setSchema(String str) {
        this._schema = str;
    }

    public String getName() {
        return this._name;
    }

    public void setName(String str) {
        this._name = str;
    }

    static AdobeDCXMetadataPath pathFromSchema(String str, String str2) {
        return new AdobeDCXMetadataPath(str, str2);
    }

    public AdobeDCXMetadataPath(String str, String str2) {
        this._schema = str;
        this._name = str2;
    }

    public AdobeDCXMetadataPath withSchema(String str, String str2) {
        return new AdobeDCXMetadataPath(this, str, str2);
    }

    public AdobeDCXMetadataPath(AdobeDCXMetadataPath adobeDCXMetadataPath, String str, String str2) {
        this._schema = adobeDCXMetadataPath.getSchema();
        try {
            this._name = AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName() + XMPPathFactory.composeStructFieldPath(AdobeDCXUtils.convertToUTF8(str), AdobeDCXUtils.convertToUTF8(str2)));
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadataPath.Constructor", e2.getMessage());
        }
    }

    public AdobeDCXMetadataPath(AdobeDCXMetadataPath adobeDCXMetadataPath, int i) {
        this._schema = adobeDCXMetadataPath.getSchema();
        try {
            this._name = AdobeDCXUtils.convertToUTF8(XMPPathFactory.composeArrayItemPath(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), i));
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadataPath.Constructor", e2.getMessage());
        }
    }

    public AdobeDCXMetadataPath withIndex(int i) {
        return new AdobeDCXMetadataPath(this, i);
    }

    public AdobeDCXMetadataPath(AdobeDCXMetadataPath adobeDCXMetadataPath) {
        this._schema = adobeDCXMetadataPath.getSchema();
        try {
            this._name = AdobeDCXUtils.convertToUTF8(XMPPathFactory.composeArrayItemPath(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), -1));
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadataPath.Constructor", e2.getMessage());
        }
    }

    public AdobeDCXMetadataPath lastItem() {
        return new AdobeDCXMetadataPath(this);
    }

    AdobeDCXMetadataPath replacePrefix(AdobeDCXMetadataPath adobeDCXMetadataPath, AdobeDCXMetadataPath adobeDCXMetadataPath2) {
        if (this._schema == null || !this._schema.equals(adobeDCXMetadataPath.getSchema()) || this._name == null || !this._name.startsWith(adobeDCXMetadataPath.getName())) {
            return null;
        }
        return new AdobeDCXMetadataPath(adobeDCXMetadataPath2.getSchema(), adobeDCXMetadataPath2.getName() + this._name.substring(adobeDCXMetadataPath.getName().length()));
    }

    public static AdobeDCXMetadataPath getDocumentId() {
        return pathFromSchema(XMPConst.NS_XMP_MM, "DocumentID");
    }

    public static AdobeDCXMetadataPath getInstanceId() {
        return pathFromSchema(XMPConst.NS_XMP_MM, "InstanceID");
    }

    public static AdobeDCXMetadataPath getDerivedFrom() {
        return pathFromSchema(XMPConst.NS_XMP_MM, "DerivedFrom");
    }

    public static AdobeDCXMetadataPath getOriginalDocumentId() {
        return pathFromSchema(XMPConst.NS_XMP_MM, "OriginalDocumentID");
    }

    public static AdobeDCXMetadataPath getHistory() {
        return pathFromSchema(XMPConst.NS_XMP_MM, "History");
    }

    public static AdobeDCXMetadataPath getIngredients() {
        return pathFromSchema(XMPConst.NS_XMP_MM, "Ingredients");
    }

    public static AdobeDCXMetadataPath getPantry() {
        return pathFromSchema(XMPConst.NS_XMP_MM, "Pantry");
    }

    public static AdobeDCXMetadataPath getManageTo() {
        return pathFromSchema(XMPConst.NS_XMP_MM, "ManageTo");
    }

    public static AdobeDCXMetadataPath getManageUi() {
        return pathFromSchema(XMPConst.NS_XMP_MM, "ManageUI");
    }

    public static AdobeDCXMetadataPath getCreatorTool() {
        return pathFromSchema(XMPConst.NS_XMP, "CreatorTool");
    }

    public static AdobeDCXMetadataPath getCreateDate() {
        return pathFromSchema(XMPConst.NS_XMP, "CreateDate");
    }

    public static AdobeDCXMetadataPath getModifyDate() {
        return pathFromSchema(XMPConst.NS_XMP, "ModifyDate");
    }

    public static AdobeDCXMetadataPath getMetadataDate() {
        return pathFromSchema(XMPConst.NS_XMP, "MetadataDate");
    }

    public static AdobeDCXMetadataPath getRightsMarked() {
        return pathFromSchema(XMPConst.NS_XMP_RIGHTS, "Marked");
    }

    public static AdobeDCXMetadataPath getUsageTerms() {
        return pathFromSchema(XMPConst.NS_XMP_RIGHTS, "UsageTerms");
    }

    public static AdobeDCXMetadataPath getFormat() {
        return pathFromSchema(XMPConst.NS_DC, "format");
    }

    public static AdobeDCXMetadataPath getSubject() {
        return pathFromSchema(XMPConst.NS_DC, "getSubject");
    }

    public static AdobeDCXMetadataPath getRights() {
        return pathFromSchema(XMPConst.NS_DC, "getRights");
    }

    public static AdobeDCXMetadataPath getCreator() {
        return pathFromSchema(XMPConst.NS_DC, "getCreator");
    }

    public static AdobeDCXMetadataPath getAttributionURL() {
        return pathFromSchema("http://creativecommons.org/ns#", "getAttributionURL");
    }

    public static AdobeDCXMetadataPath getAttributionName() {
        return pathFromSchema("http://creativecommons.org/ns#", "getAttributionName");
    }

    public static AdobeDCXMetadataPath getLicense() {
        return pathFromSchema("http://creativecommons.org/ns#", BehanceSDKPublishConstants.KEY_LICENSE);
    }
}
