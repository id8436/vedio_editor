package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.content.Context;
import com.adobe.creativesdk.foundation.adobeinternal.remix.AdobeRemixData;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.xmp.XMPConst;
import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPMeta;
import com.adobe.xmp.XMPMetaFactory;
import com.adobe.xmp.XMPPathFactory;
import com.adobe.xmp.options.PropertyOptions;
import com.adobe.xmp.properties.XMPProperty;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXMetadata {
    static final String XMP_NS_CREATIVE_COMMONS = "http://creativecommons.org/ns#";
    static final String XMP_NS_XMP_ResourceEvent = "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#";
    private static final String compositeMetadataPseudoComponentID = "*composite*metadata*";
    static String historyLast = null;
    private static HashMap<String, String> licenseTypes = null;
    static final int serializationOptions = 80;
    static final String x_default = "x-default";
    protected SimpleDateFormat _staticDateFormatter;
    long cleanGeneration;
    private String componentId;
    long generation;
    String updatableHistoryId;
    private XMPMeta xmpMeta;
    private static String COMPONENT_PATH = "META-INF/metadata.xml";
    private static String componentPath = COMPONENT_PATH;
    private static String componentAbsolutePath = URIUtil.SLASH + COMPONENT_PATH;
    static String creatorTool = null;
    static String softwareAgent = null;

    SimpleDateFormat getStaticDateFormatter() {
        if (this._staticDateFormatter == null) {
            this._staticDateFormatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);
        }
        return this._staticDateFormatter;
    }

    public AdobeDCXMetadata() {
        this.xmpMeta = XMPMetaFactory.create();
        this.generation = 0L;
        this.cleanGeneration = 0L;
        this.componentId = null;
        registerNamespace(XMP_NS_CREATIVE_COMMONS, "cc");
        try {
            historyLast = XMPPathFactory.composeArrayItemPath("History", -1);
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadata.Constructor", e2.getMessage());
        }
    }

    public boolean isDirty() {
        return this.generation != this.cleanGeneration;
    }

    XMPMeta makeDirty() {
        this.xmpMeta = (XMPMeta) this.xmpMeta.clone();
        this.generation++;
        return this.xmpMeta;
    }

    public static AdobeDCXComponent getMetadataComponentInBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        return getMetadataComponentInBranchOrElement(adobeDCXCompositeBranch);
    }

    public static AdobeDCXComponent getMetadataComponentInBranchOrElement(AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol) {
        if (adobeDCXBranchCoreProtocol != null) {
            return adobeDCXBranchCoreProtocol.getBranchCore().getComponentWithAbsolutePath(componentAbsolutePath);
        }
        return null;
    }

    public static String getMetadataComponentAbsolutePath() {
        return componentAbsolutePath;
    }

    String convertToTZLocalDate(String str) {
        String str2;
        try {
            Date date = AdobeDCXManifest.getDateFormatter().parse(str);
            synchronized (getStaticDateFormatter()) {
                str2 = getStaticDateFormatter().format(date);
            }
            return str2;
        } catch (ParseException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadata.convertToTZLocalDate", e2.getMessage());
            return null;
        }
    }

    String convertToTZLocalDateOrNowIfNull(String str) {
        String str2;
        if (str != null) {
            return convertToTZLocalDate(str);
        }
        Date date = new Date();
        synchronized (getStaticDateFormatter()) {
            str2 = getStaticDateFormatter().format(date);
        }
        return str2;
    }

    AdobeDCXMetadata(AdobeDCXMetadata adobeDCXMetadata, String str) {
        this(adobeDCXMetadata, "copied", str);
    }

    AdobeDCXMetadata(AdobeDCXMetadata adobeDCXMetadata, String str, String str2) {
        this();
        this.xmpMeta = adobeDCXMetadata.getXMPMeta();
        adobeDCXMetadata.clearUpdatableHistory();
        makeDerivedWithActionAndDocId(str, str2);
    }

    protected void makeDerivedWithActionAndDocId(String str, String str2) {
        makeDirty();
        if (str2 == null) {
            str2 = AdobeStorageUtils.generateUuid();
        }
        String strConvertToUTF8 = AdobeDCXUtils.convertToUTF8(str2);
        try {
            String value = this.xmpMeta.getProperty(XMPConst.NS_XMP_MM, "DocumentID").getValue();
            String value2 = this.xmpMeta.getProperty(XMPConst.NS_XMP_MM, "OriginalDocumentID").getValue();
            String str3 = value2.isEmpty() ? value : value2;
            String value3 = this.xmpMeta.getProperty(XMPConst.NS_XMP_MM, "InstanceID").getValue();
            String value4 = this.xmpMeta.getProperty(XMPConst.NS_XMP, "ModifyDate").getValue();
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, "DerivedFrom", XMPConst.TYPE_RESOURCEREF, "documentID", value);
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, "DerivedFrom", XMPConst.TYPE_RESOURCEREF, "originalDocumentID", str3);
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, "DerivedFrom", XMPConst.TYPE_RESOURCEREF, "instanceID", value3);
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, "DerivedFrom", XMPConst.TYPE_RESOURCEREF, "lastModifyDate", value4);
            this.xmpMeta.deleteProperty(XMPConst.NS_XMP_MM, "DocumentID");
            this.xmpMeta.setProperty(XMPConst.NS_XMP_MM, "DocumentID", strConvertToUTF8);
            this.xmpMeta.deleteProperty(XMPConst.NS_XMP, "CreatorTool");
            this.xmpMeta.setProperty(XMPConst.NS_XMP, "CreatorTool", AdobeDCXUtils.convertToUTF8(getCreatorTool()));
            appendHistoryEvent(str);
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadata.Constructor", e2.getMessage());
        }
    }

    AdobeDCXMetadata(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException, XMPException {
        this((AdobeDCXBranchCoreProtocol) adobeDCXCompositeBranch, adobeDCXComponent);
    }

    private static String getFilePath(AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        return adobeDCXBranchCoreProtocol.getBranchCore().getPathForComponent(adobeDCXComponent);
    }

    private void initFromFilePathAndMetadataComponent(String str, AdobeDCXComponent adobeDCXComponent) throws XMPException {
        initFromFilePath(str);
        this.componentId = adobeDCXComponent.getAbsolutePath().equals(componentAbsolutePath) ? compositeMetadataPseudoComponentID : adobeDCXComponent.getComponentId();
    }

    AdobeDCXMetadata(AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, AdobeDCXComponent adobeDCXComponent) throws XMPException, AdobeDCXException {
        this();
        initFromFilePathAndMetadataComponent(getFilePath(adobeDCXBranchCoreProtocol, adobeDCXComponent), adobeDCXComponent);
    }

    AdobeDCXMetadata(String str) {
        this();
        try {
            initFromFilePath(str);
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadata.Constructor", e2.getMessage());
        }
    }

    void initFromFilePath(String str) throws XMPException {
        String string = null;
        try {
            string = AdobeDCXUtils.fRead(str).toString();
        } catch (IOException e2) {
            AdobeLogger.log(Level.ERROR, "dcxMetaData init failed", e2.getMessage());
        }
        initFromData(string);
    }

    private void initFromData(String str) throws XMPException {
        if (str == null) {
            throw new XMPException("null data in initFromData", -1);
        }
        this.xmpMeta = XMPMetaFactory.parseFromBuffer((str + IOUtils.LINE_SEPARATOR_UNIX).getBytes(Charsets.UTF_8));
        if (this.xmpMeta.getStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", AdobeAnalyticsSDKReporter.AnalyticAction).getValue() == "saved" && this.xmpMeta.getStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", "softwareAgent").getValue().equals(AdobeDCXUtils.convertToUTF8(getCreatorTool()))) {
            this.updatableHistoryId = this.xmpMeta.getStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", "instanceID").getValue();
        }
    }

    AdobeDCXMetadata(AdobeDCXManifest adobeDCXManifest) {
        this();
        makeDirty();
        String strConvertToUTF8 = AdobeDCXUtils.convertToUTF8(convertToTZLocalDateOrNowIfNull((String) adobeDCXManifest.get("created")));
        String strConvertToUTF82 = AdobeDCXUtils.convertToUTF8(convertToTZLocalDateOrNowIfNull((String) adobeDCXManifest.get(AdobeDCXConstants.AdobeDCXAssetStateModified)));
        String strConvertToUTF83 = AdobeDCXUtils.convertToUTF8(adobeDCXManifest.getCompositeId());
        String strConvertToUTF84 = AdobeDCXUtils.convertToUTF8(adobeDCXManifest.getType()) != null ? AdobeDCXUtils.convertToUTF8(adobeDCXManifest.getType()) : "";
        String strConvertToUTF85 = getSoftwareAgent() != null ? AdobeDCXUtils.convertToUTF8(getSoftwareAgent()) : AdobeDCXUtils.convertToUTF8(getCreatorTool());
        try {
            this.xmpMeta.setProperty(XMPConst.NS_XMP, "CreatorTool", AdobeDCXUtils.convertToUTF8(getCreatorTool()));
            this.xmpMeta.setProperty(XMPConst.NS_XMP, "CreateDate", strConvertToUTF8);
            this.xmpMeta.setProperty(XMPConst.NS_XMP, "ModifyDate", strConvertToUTF82);
            this.xmpMeta.setProperty(XMPConst.NS_XMP, "MetadataDate", strConvertToUTF82);
            if (strConvertToUTF84.length() > 0) {
                this.xmpMeta.setProperty(XMPConst.NS_DC, "format", strConvertToUTF84);
            }
            this.xmpMeta.setProperty(XMPConst.NS_XMP_MM, "DocumentID", strConvertToUTF83);
            this.xmpMeta.setProperty(XMPConst.NS_XMP_MM, "OriginalDocumentID", strConvertToUTF83);
            this.xmpMeta.setProperty(XMPConst.NS_XMP_MM, "InstanceID", strConvertToUTF83);
            this.xmpMeta.appendArrayItem(XMPConst.NS_XMP_MM, "History", new PropertyOptions(1024), null, new PropertyOptions(256));
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", AdobeAnalyticsSDKReporter.AnalyticAction, "created");
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", "instanceID", strConvertToUTF83);
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", "when", strConvertToUTF82);
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", "softwareAgent", strConvertToUTF85);
            this.componentId = compositeMetadataPseudoComponentID;
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadata.Constructor", e2.getMessage());
        }
    }

    @Deprecated
    AdobeDCXMetadata(AdobeDCXManifestNode adobeDCXManifestNode) {
        this();
        makeDirty();
        String strConvertToUTF8 = AdobeDCXUtils.convertToUTF8(getStaticDateFormatter().format(new Date()));
        String strConvertToUTF82 = AdobeDCXUtils.convertToUTF8(adobeDCXManifestNode.getNodeId());
        try {
            this.xmpMeta.setProperty(XMPConst.NS_XMP, "CreateDate", strConvertToUTF8);
            this.xmpMeta.setProperty(XMPConst.NS_XMP, "ModifyDate", strConvertToUTF8);
            this.xmpMeta.setProperty(XMPConst.NS_XMP, "MetadataDate", strConvertToUTF8);
            this.xmpMeta.setProperty(XMPConst.NS_XMP_MM, "DocumentID", strConvertToUTF82);
            this.xmpMeta.setProperty(XMPConst.NS_XMP_MM, "OriginalDocumentID", strConvertToUTF82);
            this.xmpMeta.setProperty(XMPConst.NS_XMP_MM, "InstanceID", strConvertToUTF82);
            this.xmpMeta.appendArrayItem(XMPConst.NS_XMP_MM, "History", new PropertyOptions(1024), null, new PropertyOptions(256));
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", AdobeAnalyticsSDKReporter.AnalyticAction, "created");
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", "instanceID", strConvertToUTF82);
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", "when", strConvertToUTF8);
            String strConvertToUTF83 = AdobeDCXUtils.convertToUTF8(getCreatorTool());
            this.xmpMeta.deleteProperty(XMPConst.NS_XMP, "CreatorTool");
            this.xmpMeta.setProperty(XMPConst.NS_XMP, "CreatorTool", strConvertToUTF83);
            this.componentId = compositeMetadataPseudoComponentID;
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadata.<init>(AdobeDCXNode)", e2.getMessage());
        }
    }

    AdobeDCXMetadata(AdobeDCXNode adobeDCXNode) {
        this(adobeDCXNode.getMutableManifestNode());
    }

    AdobeDCXMetadata(XMPMeta xMPMeta) {
        this.xmpMeta = xMPMeta;
    }

    AdobeDCXMetadata(AdobeDCXMetadata adobeDCXMetadata) {
        this(adobeDCXMetadata.getXMPMeta());
    }

    AdobeDCXMutableMetadata getMutableCopy() {
        return new AdobeDCXMutableMetadata(this.xmpMeta);
    }

    public AdobeDCXComponent saveInCompositeBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) throws AdobeDCXException {
        return saveInCompositeBranchOrElement(adobeDCXCompositeMutableBranch);
    }

    public AdobeDCXComponent saveInCompositeBranchOrElement(AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol) throws AdobeDCXException {
        AdobeDCXMutableComponent mutableCopy;
        if (this.componentId == compositeMetadataPseudoComponentID) {
            AdobeDCXComponent adobeDCXComponentUpdateOrCreateAsComponentOfNode = updateOrCreateAsComponentOfNode(adobeDCXBranchCoreProtocol.getBranchCore().getRoot(), adobeDCXBranchCoreProtocol, componentPath);
            if (adobeDCXComponentUpdateOrCreateAsComponentOfNode == null) {
                return null;
            }
            this.cleanGeneration = this.generation;
            return adobeDCXComponentUpdateOrCreateAsComponentOfNode;
        }
        if (this.componentId == null || (mutableCopy = adobeDCXBranchCoreProtocol.getBranchCore().getComponentWithId(this.componentId).getMutableCopy()) == null) {
            return null;
        }
        this.cleanGeneration = this.generation;
        return updateComponentInBranchOrElement(mutableCopy, adobeDCXBranchCoreProtocol);
    }

    String appendHistoryEvent(String str, Date date, boolean z) {
        String strConvertToUTF8;
        makeDirty();
        String strConvertToUTF82 = AdobeDCXUtils.convertToUTF8(str);
        String strConvertToUTF83 = AdobeDCXUtils.convertToUTF8(AdobeStorageUtils.generateUuid());
        String strConvertToUTF84 = getSoftwareAgent() != null ? AdobeDCXUtils.convertToUTF8(getSoftwareAgent()) : AdobeDCXUtils.convertToUTF8(getCreatorTool());
        synchronized (getStaticDateFormatter()) {
            strConvertToUTF8 = AdobeDCXUtils.convertToUTF8(getStaticDateFormatter().format(date));
        }
        try {
            this.xmpMeta.deleteProperty(XMPConst.NS_XMP, "ModifyDate");
            this.xmpMeta.deleteProperty(XMPConst.NS_XMP, "MetadataDate");
            this.xmpMeta.deleteProperty(XMPConst.NS_XMP_MM, "InstanceID");
            this.xmpMeta.setProperty(XMPConst.NS_XMP, "ModifyDate", strConvertToUTF8);
            this.xmpMeta.setProperty(XMPConst.NS_XMP, "MetadataDate", strConvertToUTF8);
            this.xmpMeta.setProperty(XMPConst.NS_XMP_MM, "InstanceID", strConvertToUTF83);
            this.xmpMeta.getProperty(XMPConst.NS_XMP_MM, "DocumentID");
            if (!z) {
                this.xmpMeta.appendArrayItem(XMPConst.NS_XMP_MM, "History", new PropertyOptions(1024), null, new PropertyOptions(256));
            }
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", AdobeAnalyticsSDKReporter.AnalyticAction, strConvertToUTF82);
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", "instanceID", strConvertToUTF83);
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", "when", strConvertToUTF8);
            this.xmpMeta.setStructField(XMPConst.NS_XMP_MM, historyLast, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#", "softwareAgent", strConvertToUTF84);
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadata.appendHistoryEvent", e2.getMessage());
        }
        return strConvertToUTF83;
    }

    void clearUpdatableHistory() {
        this.updatableHistoryId = "";
    }

    protected void appendHistoryEvent(String str) {
        appendHistoryEvent(str, new Date(), false);
    }

    AdobeDCXMetadata initForCopyDerivedFrom(AdobeDCXMetadata adobeDCXMetadata, String str) {
        return new AdobeDCXMetadata(adobeDCXMetadata, "copied", str);
    }

    XMPMeta getXMPMeta() {
        return this.xmpMeta;
    }

    static HashMap<String, String> licenseTypeLookup() {
        if (licenseTypes == null) {
            licenseTypes = new HashMap<>();
            licenseTypes.put("http://creativecommons.org/licenses/by/4.0/", AdobeRemixData.AdobeRemixLicenseAttribution);
            licenseTypes.put("http://creativecommons.org/licenses/by-sa/4.0/", AdobeRemixData.AdobeRemixLicenseShareAlike);
            licenseTypes.put("http://creativecommons.org/licenses/by-nd/4.0/", AdobeRemixData.AdobeRemixLicenseNoDerivatives);
            licenseTypes.put("http://creativecommons.org/licenses/by-nc/4.0/", AdobeRemixData.AdobeRemixLicenseNonCommercial);
            licenseTypes.put("http://creativecommons.org/licenses/by-nc-sa/4.0/", AdobeRemixData.AdobeRemixLicenseNonCommercialShareAlike);
            licenseTypes.put("http://creativecommons.org/licenses/by-nc-nd/4.0/", AdobeRemixData.AdobeRemixLicenseNonCommercialNoDerivatives);
        }
        return licenseTypes;
    }

    AdobeRemixData createRemixData() {
        String value = getPropertyWithPath(AdobeDCXMetadataPath.getLicense()) == null ? null : getPropertyWithPath(AdobeDCXMetadataPath.getLicense()).getValue();
        if (value != null) {
            value = licenseTypeLookup().get(value);
        }
        XMPProperty propertyWithPath = getPropertyWithPath(AdobeDCXMetadataPath.getAttributionURL());
        String value2 = propertyWithPath != null ? propertyWithPath.getValue() : null;
        XMPProperty propertyWithPath2 = getPropertyWithPath(AdobeDCXMetadataPath.getAttributionName());
        String value3 = propertyWithPath2 != null ? propertyWithPath2.getValue() : null;
        XMPProperty propertyWithPath3 = getPropertyWithPath(AdobeDCXMetadataPath.getManageTo());
        String value4 = propertyWithPath3 != null ? propertyWithPath3.getValue() : null;
        XMPProperty propertyWithPath4 = getPropertyWithPath(AdobeDCXMetadataPath.getManageUi());
        return new AdobeRemixData(value4, propertyWithPath4 != null ? propertyWithPath4.getValue() : null, value, value2, value3);
    }

    public static void setCreatorTool(String str) {
        creatorTool = str;
    }

    public static void setSoftwareAgent(String str) {
        softwareAgent = str;
    }

    public static String getSoftwareAgent() {
        return softwareAgent;
    }

    public static String getCreatorTool() {
        Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
        if (applicationContext != null) {
            creatorTool = applicationContext.getString(applicationContext.getApplicationInfo().labelRes);
        }
        return creatorTool;
    }

    public static void registerNamespace(String str, String str2) {
        try {
            XMPMetaFactory.getSchemaRegistry().registerNamespace(AdobeDCXUtils.convertToUTF8(str), AdobeDCXUtils.convertToUTF8(str2));
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadata.registerNamespace", e2.getMessage());
        }
    }

    public void dump() {
        System.out.println(AdobeDCXUtils.convertToUTF8(this.xmpMeta.dumpObject()));
    }

    String description() {
        return AdobeDCXUtils.convertToUTF8(this.xmpMeta.dumpObject());
    }

    public void dumpAsXMP() {
        System.out.println(AdobeDCXUtils.convertToUTF8(serializeAsString()));
    }

    public String serializeAsString() {
        try {
            return AdobeDCXUtils.convertToUTF8(XMPMetaFactory.serializeToString(this.xmpMeta, null));
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadata.serializeAsString", e2.getMessage());
            return null;
        }
    }

    String serializeToTempFile() {
        String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), AdobeStorageUtils.generateUuid());
        try {
            if (AdobeDCXUtils.fWrite(strStringByAppendingLastPathComponent, XMPMetaFactory.serializeToString(this.xmpMeta, null)).booleanValue()) {
                return strStringByAppendingLastPathComponent;
            }
            return null;
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadata.serializeToTempFile", e2.getMessage());
            return null;
        } catch (IOException e3) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadata.serializeToTempFile", e3.getMessage());
            return null;
        }
    }

    public XMPProperty getPropertyWithSchema(String str, String str2) throws AdobeDCXMetadataException {
        try {
            return this.xmpMeta.getProperty(AdobeDCXUtils.convertToUTF8(str), AdobeDCXUtils.convertToUTF8(str2));
        } catch (XMPException e2) {
            handleXMPError(e2);
            return null;
        }
    }

    public XMPProperty getLocalizedPropertyWithSchema(String str, String str2) throws AdobeDCXMetadataException {
        try {
            return this.xmpMeta.getLocalizedText(AdobeDCXUtils.convertToUTF8(str), AdobeDCXUtils.convertToUTF8(str2), "x-default", "x-default");
        } catch (XMPException e2) {
            handleXMPError(e2);
            return null;
        }
    }

    public XMPProperty getPropertyWithPath(AdobeDCXMetadataPath adobeDCXMetadataPath) {
        try {
            return this.xmpMeta.getProperty(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()));
        } catch (XMPException e2) {
            try {
                handleXMPError(e2);
                return null;
            } catch (AdobeDCXMetadataException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXMetadata.class.getSimpleName(), null, e3);
                return null;
            }
        }
    }

    public XMPProperty getPropertyWithPath(AdobeDCXMetadataPath adobeDCXMetadataPath, String str, String str2) throws AdobeDCXMetadataException {
        try {
            return this.xmpMeta.getQualifier(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), AdobeDCXUtils.convertToUTF8(str), AdobeDCXUtils.convertToUTF8(str2));
        } catch (XMPException e2) {
            handleXMPError(e2);
            return null;
        }
    }

    public XMPProperty getLocalizedPropertyWithPath(AdobeDCXMetadataPath adobeDCXMetadataPath) throws AdobeDCXMetadataException {
        try {
            return this.xmpMeta.getLocalizedText(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), "x-default", "x-default");
        } catch (XMPException e2) {
            handleXMPError(e2);
            return null;
        }
    }

    static void handleXMPError(XMPException xMPException) throws AdobeDCXMetadataException {
        AdobeDCXMetadataErrorCode adobeDCXMetadataErrorCode;
        switch (xMPException.getErrorCode()) {
            case 4:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.BADPARAM;
                break;
            case 5:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.BADVALUE;
                break;
            case 9:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.INTERNALFAILURE;
                break;
            case 101:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.BADSCHEMA;
                break;
            case 102:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.BADXPATH;
                break;
            case 103:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.BADOPTIONS;
                break;
            case 104:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.BADINDEX;
                break;
            case 107:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.BADSERIALIZE;
                break;
            case 201:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.BADXML;
                break;
            case 202:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.BADRDF;
                break;
            case 203:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.BADXMP;
                break;
            case 204:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.BADSTREAM;
                break;
            default:
                adobeDCXMetadataErrorCode = AdobeDCXMetadataErrorCode.UNKNOWN;
                break;
        }
        throw new AdobeDCXMetadataException(adobeDCXMetadataErrorCode, xMPException.getMessage());
    }

    public AdobeDCXComponent updateComponentInMutableBranch(AdobeDCXComponent adobeDCXComponent, AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        return updateComponentInBranchOrElement(adobeDCXComponent, adobeDCXCompositeMutableBranch);
    }

    public AdobeDCXComponent updateComponentInBranchOrElement(AdobeDCXComponent adobeDCXComponent, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol) {
        AdobeDCXComponent adobeDCXComponentUpdateComponent;
        String strSerializeToTempFile = serializeToTempFile();
        if (strSerializeToTempFile == null) {
            return null;
        }
        try {
            adobeDCXComponentUpdateComponent = adobeDCXBranchCoreProtocol.getBranchCore().updateComponent(adobeDCXComponent, strSerializeToTempFile, false);
        } catch (AdobeDCXException e2) {
            adobeDCXComponentUpdateComponent = null;
        }
        if (adobeDCXComponentUpdateComponent == null) {
            FileUtils.deleteQuietly(new File(strSerializeToTempFile));
            return null;
        }
        this.cleanGeneration = this.generation;
        this.componentId = adobeDCXComponentUpdateComponent.getComponentId();
        return adobeDCXComponentUpdateComponent;
    }

    AdobeDCXComponent updateOrCreateAsComponentOf(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, String str) throws AdobeDCXException {
        for (AdobeDCXComponent adobeDCXComponent : adobeDCXCompositeMutableBranch.getComponentsOf(adobeDCXManifestNode)) {
            if (adobeDCXComponent.getPath().equals(str)) {
                return updateComponentInMutableBranch(adobeDCXComponent, adobeDCXCompositeMutableBranch);
            }
        }
        return saveAsComponentOf(adobeDCXManifestNode, adobeDCXCompositeMutableBranch, str);
    }

    AdobeDCXComponent updateOrCreateAsComponentOfNode(AdobeDCXNode adobeDCXNode, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, String str) throws AdobeDCXException {
        for (AdobeDCXComponent adobeDCXComponent : adobeDCXBranchCoreProtocol.getBranchCore().getComponentsOfNode(adobeDCXNode)) {
            if (adobeDCXComponent.getPath().equals(str)) {
                return updateComponentInBranchOrElement(adobeDCXComponent, adobeDCXBranchCoreProtocol);
            }
        }
        return saveAsComponentOfNode(adobeDCXNode, adobeDCXBranchCoreProtocol, str);
    }

    public AdobeDCXComponent saveAsComponentOf(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, String str) throws AdobeDCXException {
        AdobeDCXComponent adobeDCXComponentAddComponent = null;
        String strSerializeToTempFile = serializeToTempFile();
        if (strSerializeToTempFile != null) {
            try {
                adobeDCXComponentAddComponent = adobeDCXCompositeMutableBranch.addComponent("xmp-metadata", (String) null, "application/rdf+xml", "metadata", str, adobeDCXManifestNode, strSerializeToTempFile, false, (String) null);
                this.cleanGeneration = this.generation;
                this.componentId = adobeDCXComponentAddComponent.getComponentId();
            } catch (AdobeDCXException e2) {
                FileUtils.deleteQuietly(new File(strSerializeToTempFile));
                throw e2;
            }
        }
        return adobeDCXComponentAddComponent;
    }

    @Deprecated
    public AdobeDCXComponent saveAsComponentOf(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, String str) throws AdobeDCXException {
        String strSerializeToTempFile = serializeToTempFile();
        if (strSerializeToTempFile == null) {
            return null;
        }
        AdobeDCXComponent adobeDCXComponentAddComponent = adobeDCXBranchCoreProtocol.getBranchCore().addComponent("xmp-metadata", (String) null, "application/rdf+xml", "metadata", str, adobeDCXManifestNode, strSerializeToTempFile, false, (String) null);
        if (adobeDCXComponentAddComponent == null) {
            FileUtils.deleteQuietly(new File(strSerializeToTempFile));
            return null;
        }
        this.cleanGeneration = this.generation;
        this.componentId = adobeDCXComponentAddComponent.getComponentId();
        return adobeDCXComponentAddComponent;
    }

    public AdobeDCXComponent saveAsComponentOfNode(AdobeDCXNode adobeDCXNode, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, String str) throws AdobeDCXException {
        String strSerializeToTempFile = serializeToTempFile();
        if (strSerializeToTempFile == null) {
            return null;
        }
        AdobeDCXComponent adobeDCXComponentAddComponent = adobeDCXBranchCoreProtocol.getBranchCore().addComponent("xmp-metadata", (String) null, "application/rdf+xml", "metadata", str, adobeDCXNode, strSerializeToTempFile, false, (String) null);
        if (adobeDCXComponentAddComponent == null) {
            FileUtils.deleteQuietly(new File(strSerializeToTempFile));
            return null;
        }
        this.cleanGeneration = this.generation;
        this.componentId = adobeDCXComponentAddComponent.getComponentId();
        return adobeDCXComponentAddComponent;
    }

    public boolean hasTag(String str) {
        AdobeDCXMetadataIterator adobeDCXMetadataIteratorIteratorFromXMP = AdobeDCXMetadataIterator.iteratorFromXMP(this, AdobeDCXMetadataPath.getSubject());
        while (adobeDCXMetadataIteratorIteratorFromXMP.next()) {
            if (str.equals(adobeDCXMetadataIteratorIteratorFromXMP._value)) {
                return true;
            }
        }
        return false;
    }

    void markAsCompositeMetadata() {
        this.componentId = compositeMetadataPseudoComponentID;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void appendSavedEvent() {
        /*
            r5 = this;
            r1 = 0
            r0 = 0
            com.adobe.xmp.XMPMeta r2 = r5.xmpMeta
            java.lang.String r3 = "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"
            java.lang.String r4 = "instanceID"
            boolean r2 = r2.doesPropertyExist(r3, r4)
            if (r2 == 0) goto L48
            com.adobe.xmp.XMPMeta r2 = r5.xmpMeta     // Catch: com.adobe.xmp.XMPException -> L3a
            java.lang.String r3 = "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"
            java.lang.String r4 = "instanceID"
            java.lang.String r0 = r2.getPropertyString(r3, r4)     // Catch: com.adobe.xmp.XMPException -> L3a
        L1c:
            java.lang.String r2 = r5.updatableHistoryId
            if (r0 == r2) goto L2a
            if (r0 == 0) goto L48
            java.lang.String r2 = r5.updatableHistoryId
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L48
        L2a:
            r0 = 1
        L2b:
            java.util.Date r1 = new java.util.Date
            r1.<init>()
            java.lang.String r2 = "saved"
            java.lang.String r0 = r5.appendHistoryEvent(r2, r1, r0)
            r5.updatableHistoryId = r0
            return
        L3a:
            r2 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r3 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.ERROR
            java.lang.String r4 = "AdobeDCXMetadata#appendSavedEvent"
            java.lang.String r2 = r2.getMessage()
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r3, r4, r2)
            goto L1c
        L48:
            r0 = r1
            goto L2b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMetadata.appendSavedEvent():void");
    }
}
