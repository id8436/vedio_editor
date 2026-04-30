package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.util.Base64;
import com.adobe.creativesdk.foundation.adobeinternal.remix.AdobeRemixData;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.xmp.XMPConst;
import com.adobe.xmp.XMPDateTime;
import com.adobe.xmp.XMPDateTimeFactory;
import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPIterator;
import com.adobe.xmp.XMPMeta;
import com.adobe.xmp.XMPPathFactory;
import com.adobe.xmp.XMPUtils;
import com.adobe.xmp.impl.XMPIteratorImpl;
import com.adobe.xmp.impl.XMPMetaImpl;
import com.adobe.xmp.impl.XMPNode;
import com.adobe.xmp.impl.XMPNodeUtils;
import com.adobe.xmp.impl.xpath.XMPPathParser;
import com.adobe.xmp.options.IteratorOptions;
import com.adobe.xmp.options.PropertyOptions;
import com.adobe.xmp.properties.XMPProperty;
import com.adobe.xmp.properties.XMPPropertyInfo;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXMutableMetadata extends AdobeDCXMetadata {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !AdobeDCXMutableMetadata.class.desiredAssertionStatus();
    }

    AdobeDCXMutableMetadata() {
    }

    AdobeDCXMutableMetadata(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException, XMPException {
        super(adobeDCXCompositeBranch, adobeDCXComponent);
    }

    public AdobeDCXMutableMetadata(AdobeDCXMetadata adobeDCXMetadata, String str, String str2) {
        super(adobeDCXMetadata, str, str2);
    }

    public AdobeDCXMutableMetadata(AdobeDCXManifest adobeDCXManifest) {
        super(adobeDCXManifest);
    }

    public AdobeDCXMutableMetadata(XMPMeta xMPMeta) {
        super(xMPMeta);
    }

    public void setManifest(AdobeDCXManifest adobeDCXManifest) {
    }

    public void setPropertyWithSchema(String str, String str2, String str3) throws AdobeDCXMetadataException {
        try {
            makeDirty().setProperty(AdobeDCXUtils.convertToUTF8(str), AdobeDCXUtils.convertToUTF8(str2), AdobeDCXUtils.convertToUTF8(str3), null);
        } catch (XMPException e2) {
            AdobeDCXMetadata.handleXMPError(e2);
        }
    }

    public void setLocalizedPropertyWithSchema(String str, String str2, String str3) throws AdobeDCXMetadataException {
        try {
            XMPMeta xMPMetaMakeDirty = makeDirty();
            xMPMetaMakeDirty.deleteProperty(AdobeDCXUtils.convertToUTF8(str), AdobeDCXUtils.convertToUTF8(str2));
            xMPMetaMakeDirty.setLocalizedText(AdobeDCXUtils.convertToUTF8(str), AdobeDCXUtils.convertToUTF8(str2), XMPConst.X_DEFAULT, XMPConst.X_DEFAULT, AdobeDCXUtils.convertToUTF8(str3));
        } catch (XMPException e2) {
            AdobeDCXMetadata.handleXMPError(e2);
        }
    }

    public void setPropertyWithPath(AdobeDCXMetadataPath adobeDCXMetadataPath, String str) throws AdobeDCXMetadataException {
        try {
            makeDirty().setProperty(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), AdobeDCXUtils.convertToUTF8(str), null);
        } catch (XMPException e2) {
            AdobeDCXMetadata.handleXMPError(e2);
        }
    }

    public void setPropertyWithPath(AdobeDCXMetadataPath adobeDCXMetadataPath, String str, int i) throws AdobeDCXMetadataException {
        try {
            makeDirty().setProperty(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), AdobeDCXUtils.convertToUTF8(str), new PropertyOptions(i));
        } catch (XMPException e2) {
            AdobeDCXMetadata.handleXMPError(e2);
        }
    }

    public void setLocalizedPropertyWithPath(AdobeDCXMetadataPath adobeDCXMetadataPath, String str) throws AdobeDCXMetadataException {
        try {
            XMPMeta xMPMetaMakeDirty = makeDirty();
            xMPMetaMakeDirty.deleteProperty(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()));
            xMPMetaMakeDirty.setLocalizedText(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), XMPConst.X_DEFAULT, XMPConst.X_DEFAULT, AdobeDCXUtils.convertToUTF8(str));
        } catch (XMPException e2) {
            AdobeDCXMetadata.handleXMPError(e2);
        }
    }

    public void setLocalizedPropertyWithPath(AdobeDCXMetadataPath adobeDCXMetadataPath, String str, int i) throws AdobeDCXMetadataException {
        try {
            XMPMeta xMPMetaMakeDirty = makeDirty();
            xMPMetaMakeDirty.deleteProperty(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()));
            xMPMetaMakeDirty.setLocalizedText(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), XMPConst.X_DEFAULT, XMPConst.X_DEFAULT, AdobeDCXUtils.convertToUTF8(str), new PropertyOptions(i));
        } catch (XMPException e2) {
            AdobeDCXMetadata.handleXMPError(e2);
        }
    }

    public void appendToOrderedArrayWithPath(AdobeDCXMetadataPath adobeDCXMetadataPath, String str) throws AdobeDCXMetadataException {
        try {
            makeDirty().appendArrayItem(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), new PropertyOptions(1024), AdobeDCXUtils.convertToUTF8(str), null);
        } catch (XMPException e2) {
            AdobeDCXMetadata.handleXMPError(e2);
        }
    }

    public void appendToUnorderedArrayWithPath(AdobeDCXMetadataPath adobeDCXMetadataPath, String str) throws AdobeDCXMetadataException {
        try {
            makeDirty().appendArrayItem(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), new PropertyOptions(512), AdobeDCXUtils.convertToUTF8(str), null);
        } catch (XMPException e2) {
            AdobeDCXMetadata.handleXMPError(e2);
        }
    }

    public void appendStructItemToOrderedArrayWithPath(AdobeDCXMetadataPath adobeDCXMetadataPath) throws AdobeDCXMetadataException {
        try {
            makeDirty().appendArrayItem(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), new PropertyOptions(1024), null, new PropertyOptions().setStruct(true));
        } catch (XMPException e2) {
            AdobeDCXMetadata.handleXMPError(e2);
        }
    }

    public void appendStructItemToUnorderedArrayWithPath(AdobeDCXMetadataPath adobeDCXMetadataPath) throws AdobeDCXMetadataException {
        try {
            makeDirty().appendArrayItem(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), new PropertyOptions(512), null, new PropertyOptions().setStruct(true));
        } catch (XMPException e2) {
            AdobeDCXMetadata.handleXMPError(e2);
        }
    }

    public void deletePropertyWithPath(AdobeDCXMetadataPath adobeDCXMetadataPath) {
        makeDirty().deleteProperty(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()));
    }

    public void deletePropertyWithSchema(String str, String str2) {
        makeDirty().deleteProperty(AdobeDCXUtils.convertToUTF8(str), AdobeDCXUtils.convertToUTF8(str2));
    }

    public void copySubTree(AdobeDCXMetadata adobeDCXMetadata, AdobeDCXMetadataPath adobeDCXMetadataPath, AdobeDCXMetadataPath adobeDCXMetadataPath2) {
        duplicateSubtree(adobeDCXMetadata.getXMPMeta(), makeDirty(), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath2.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath2.getName()));
    }

    public void assignNewDocumentId() {
        XMPMeta xMPMetaMakeDirty = makeDirty();
        try {
            String propertyString = xMPMetaMakeDirty.getPropertyString(XMPConst.NS_XMP_MM, "InstanceID");
            String strConvertToUTF8 = AdobeDCXUtils.convertToUTF8(AdobeStorageUtils.generateUuid());
            xMPMetaMakeDirty.deleteProperty(XMPConst.NS_XMP_MM, "DocumentID");
            xMPMetaMakeDirty.deleteProperty(XMPConst.NS_XMP_MM, "InstanceID");
            xMPMetaMakeDirty.setProperty(XMPConst.NS_XMP_MM, "DocumentID", strConvertToUTF8);
            xMPMetaMakeDirty.setProperty(XMPConst.NS_XMP_MM, "InstanceID", strConvertToUTF8);
            XMPProperty structField = xMPMetaMakeDirty.getStructField(XMPConst.NS_XMP_MM, historyLast, XMPConst.TYPE_RESOURCEEVENT, "instanceID");
            String value = structField != null ? structField.getValue() : "";
            if (value != null && value.equals(propertyString)) {
                xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP_MM, historyLast, XMPConst.TYPE_RESOURCEEVENT, "instanceID", strConvertToUTF8);
                xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP_MM, historyLast, XMPConst.TYPE_RESOURCEEVENT, "documentID", strConvertToUTF8);
            }
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.assignNewDocumentId", e2.getMessage());
        }
    }

    static boolean lessThanOperator(XMPDateTime xMPDateTime, XMPDateTime xMPDateTime2) {
        if (xMPDateTime.hasDate() && xMPDateTime2.hasDate()) {
            return xMPDateTime.getYear() < xMPDateTime2.getYear() || xMPDateTime.getMonth() < xMPDateTime2.getMonth() || xMPDateTime.getDay() < xMPDateTime2.getDay() || xMPDateTime.getHour() < xMPDateTime2.getHour() || xMPDateTime.getMinute() < xMPDateTime2.getMinute() || xMPDateTime.getSecond() < xMPDateTime2.getSecond() || xMPDateTime.getNanoSecond() < xMPDateTime2.getNanoSecond();
        }
        return false;
    }

    static XMPDateTime getNextHistoryDate(XMPMeta xMPMeta, Integer num) {
        try {
            XMPProperty structField = xMPMeta.getStructField(XMPConst.NS_XMP_MM, XMPPathFactory.composeArrayItemPath("History", num.intValue()), XMPConst.TYPE_RESOURCEEVENT, "when");
            if (structField != null && structField.getValue() != null) {
                return XMPUtils.convertToDate(structField.getValue());
            }
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.getNextHistoryDate", e2.getMessage());
        }
        return null;
    }

    static void insertHistoryItem(XMPMeta xMPMeta, int i, XMPMeta xMPMeta2, int i2) {
        try {
            String strComposeArrayItemPath = XMPPathFactory.composeArrayItemPath("History", i2);
            String strComposeArrayItemPath2 = XMPPathFactory.composeArrayItemPath("History", i);
            XMPIterator it = xMPMeta2.iterator(XMPConst.NS_XMP_MM, strComposeArrayItemPath, null);
            if (it.next() != null) {
                xMPMeta.insertArrayItem(XMPConst.NS_XMP_MM, "History", i, null, new PropertyOptions().setStruct(true));
                while (it.hasNext()) {
                    XMPPropertyInfo xMPPropertyInfo = (XMPPropertyInfo) it.next();
                    String strSubstring = "";
                    String value = "";
                    if (xMPPropertyInfo != null) {
                        strSubstring = xMPPropertyInfo.getPath();
                        value = xMPPropertyInfo.getValue();
                    }
                    int iLastIndexOf = strSubstring.lastIndexOf(58);
                    if (iLastIndexOf != -1) {
                        strSubstring = strSubstring.substring(iLastIndexOf + 1);
                    }
                    xMPMeta.setStructField(XMPConst.NS_XMP_MM, strComposeArrayItemPath2, XMPConst.TYPE_RESOURCEEVENT, strSubstring, value);
                }
            }
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.insertHistoryItem", e2.getMessage());
        }
    }

    boolean mergeMetadataFrom(AdobeDCXMetadata adobeDCXMetadata, AdobeDCXMetadata adobeDCXMetadata2) {
        XMPDateTime nextHistoryDate;
        Integer numValueOf;
        Integer numValueOf2;
        XMPDateTime nextHistoryDate2;
        boolean z;
        boolean z2;
        XMPProperty property;
        if (!$assertionsDisabled && adobeDCXMetadata == null) {
            throw new AssertionError("from should not be null");
        }
        XMPMeta xMPMeta = adobeDCXMetadata.getXMPMeta();
        XMPMeta xMPMeta2 = adobeDCXMetadata2 != null ? adobeDCXMetadata2.getXMPMeta() : null;
        XMPMeta xMPMetaMakeDirty = makeDirty();
        boolean z3 = false;
        try {
            ArrayList<ArrayList> arrayList = new ArrayList();
            XMPIterator it = xMPMetaMakeDirty.iterator();
            while (it.hasNext()) {
                XMPPropertyInfo xMPPropertyInfo = (XMPPropertyInfo) it.next();
                String path = xMPPropertyInfo.getPath();
                String baseNS = ((XMPIteratorImpl) it).getBaseNS();
                String value = xMPPropertyInfo.getValue() == null ? "" : xMPPropertyInfo.getValue();
                int options = xMPPropertyInfo.getOptions().getOptions();
                if (path != null && !path.isEmpty()) {
                    if (baseNS.equals(XMPConst.NS_XMP_MM) && path.equals("xmpMM:History")) {
                        it.skipSubtree();
                    } else {
                        XMPProperty property2 = xMPMeta.getProperty(baseNS, path);
                        if (property2 != null) {
                            String value2 = property2.getValue();
                            int options2 = property2.getOptions() != null ? property2.getOptions().getOptions() : 0;
                            if (!value.equals(value2) || options != options2) {
                                boolean z4 = xMPMeta2 == null;
                                if (xMPMeta2 != null) {
                                    XMPProperty property3 = xMPMeta2.getProperty(baseNS, path);
                                    String value3 = property3 == null ? null : property3.getValue();
                                    int options3 = (property3 == null || property3.getOptions() == null) ? 0 : property3.getOptions().getOptions();
                                    if (value.equals(value3) && options == options3) {
                                        z4 = true;
                                    }
                                }
                                if (z4) {
                                    xMPMetaMakeDirty.setProperty(baseNS, path, value2, new PropertyOptions(options2));
                                    z2 = true;
                                } else {
                                    z2 = z3;
                                }
                                z3 = z2;
                            }
                        } else if (xMPMeta2 != null && (property = xMPMeta2.getProperty(baseNS, path)) != null) {
                            String value4 = property.getValue();
                            int options4 = property.getOptions() != null ? property.getOptions().getOptions() : 0;
                            if (value.equals(value4) && options == options4) {
                                it.skipSubtree();
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(baseNS);
                                arrayList2.add(path);
                                arrayList.add(arrayList2);
                                z3 = true;
                            }
                        }
                    }
                }
            }
            for (ArrayList arrayList3 : arrayList) {
                xMPMetaMakeDirty.deleteProperty((String) arrayList3.get(0), (String) arrayList3.get(1));
            }
            XMPIterator it2 = xMPMeta.iterator();
            while (it2.hasNext()) {
                XMPPropertyInfo xMPPropertyInfo2 = (XMPPropertyInfo) it2.next();
                String path2 = xMPPropertyInfo2.getPath();
                String baseNS2 = ((XMPIteratorImpl) it2).getBaseNS();
                String value5 = xMPPropertyInfo2.getValue() == null ? "" : xMPPropertyInfo2.getValue();
                int options5 = xMPPropertyInfo2.getOptions().getOptions();
                if (path2 != null && !path2.isEmpty()) {
                    if (baseNS2.equals(XMPConst.NS_XMP_MM) && path2.equals("xmpMM:History")) {
                        it2.skipSubtree();
                    } else {
                        if (xMPMetaMakeDirty.getProperty(baseNS2, path2) == null && xMPMeta2 != null && xMPMeta2.getProperty(baseNS2, path2) == null) {
                            xMPMetaMakeDirty.setProperty(baseNS2, path2, value5, new PropertyOptions(options5));
                            z = true;
                        } else {
                            z = z3;
                        }
                        z3 = z;
                    }
                }
            }
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.mergeMetadataFrom", e2.getMessage());
        }
        Integer num = 0;
        Integer num2 = 0;
        XMPDateTimeFactory.create();
        XMPDateTimeFactory.create();
        int iValueOf = Integer.valueOf(num.intValue() + 1);
        XMPDateTime nextHistoryDate3 = getNextHistoryDate(xMPMetaMakeDirty, iValueOf);
        if (nextHistoryDate3 == null) {
            iValueOf = 0;
        }
        Integer numValueOf3 = Integer.valueOf(num2.intValue() + 1);
        XMPDateTime nextHistoryDate4 = getNextHistoryDate(xMPMeta, numValueOf3);
        if (nextHistoryDate4 == null) {
            nextHistoryDate = nextHistoryDate3;
            numValueOf = 0;
            numValueOf2 = iValueOf;
            nextHistoryDate2 = nextHistoryDate4;
        } else {
            nextHistoryDate = nextHistoryDate3;
            numValueOf = numValueOf3;
            numValueOf2 = iValueOf;
            nextHistoryDate2 = nextHistoryDate4;
        }
        while (numValueOf2.intValue() > 0 && numValueOf.intValue() > 0) {
            if (lessThanOperator(nextHistoryDate2, nextHistoryDate)) {
                insertHistoryItem(xMPMetaMakeDirty, numValueOf2.intValue(), xMPMeta, numValueOf.intValue());
                numValueOf2 = Integer.valueOf(numValueOf2.intValue() + 1);
                numValueOf = Integer.valueOf(numValueOf.intValue() + 1);
                nextHistoryDate2 = getNextHistoryDate(xMPMeta, numValueOf);
                if (nextHistoryDate2 == null) {
                    numValueOf = 0;
                }
                z3 = true;
            } else {
                if (!lessThanOperator(nextHistoryDate2, nextHistoryDate) && (nextHistoryDate2 = getNextHistoryDate(xMPMeta, (numValueOf = Integer.valueOf(numValueOf.intValue() + 1)))) == null) {
                    numValueOf = 0;
                }
                numValueOf2 = Integer.valueOf(numValueOf2.intValue() + 1);
                nextHistoryDate = getNextHistoryDate(xMPMetaMakeDirty, numValueOf2);
                if (nextHistoryDate == null) {
                    numValueOf2 = 0;
                }
            }
        }
        while (numValueOf.intValue() > 0) {
            insertHistoryItem(xMPMetaMakeDirty, -1, xMPMeta, numValueOf.intValue());
            numValueOf = Integer.valueOf(numValueOf.intValue() + 1);
            if (getNextHistoryDate(xMPMeta, numValueOf) == null) {
                numValueOf = 0;
            }
            z3 = true;
        }
        if (z3) {
            appendHistoryEvent("merged");
        }
        return z3;
    }

    static int insertIngredientPantryItems(XMPMeta xMPMeta, XMPMeta xMPMeta2, String str, int i, Set<String> set) {
        int i2;
        int i3;
        try {
            IteratorOptions iteratorOptions = new IteratorOptions();
            XMPIterator it = xMPMeta2.iterator(XMPConst.NS_XMP_MM, str, iteratorOptions.setJustChildren(true));
            HashSet hashSet = new HashSet();
            while (it.hasNext()) {
                XMPPropertyInfo xMPPropertyInfo = (XMPPropertyInfo) it.next();
                String path = xMPPropertyInfo.getPath();
                String baseNS = ((XMPIteratorImpl) it).getBaseNS();
                if (xMPPropertyInfo.getValue() != null) {
                    xMPPropertyInfo.getValue();
                }
                xMPPropertyInfo.getOptions().getOptions();
                XMPProperty structField = xMPMeta2.getStructField(baseNS, path, XMPConst.TYPE_RESOURCEREF, "instanceID");
                String value = structField.getValue() == null ? "" : structField.getValue();
                structField.getOptions().getOptions();
                if (!value.isEmpty() && set.add(value)) {
                    hashSet.add(value);
                }
            }
            if (hashSet.isEmpty()) {
                return i;
            }
            XMPIterator it2 = xMPMeta2.iterator(XMPConst.NS_XMP_MM, "Pantry", iteratorOptions.setJustChildren(true));
            i2 = i;
            while (it2.hasNext()) {
                try {
                    XMPPropertyInfo xMPPropertyInfo2 = (XMPPropertyInfo) it2.next();
                    String path2 = xMPPropertyInfo2.getPath();
                    String baseNS2 = ((XMPIteratorImpl) it2).getBaseNS();
                    if (xMPPropertyInfo2.getValue() != null) {
                        xMPPropertyInfo2.getValue();
                    }
                    xMPPropertyInfo2.getOptions().getOptions();
                    XMPProperty structField2 = xMPMeta2.getStructField(baseNS2, path2, XMPConst.NS_XMP_MM, "InstanceID");
                    String value2 = structField2.getValue() == null ? "" : structField2.getValue();
                    if (value2.isEmpty() || !hashSet.contains(value2)) {
                        i3 = i2;
                    } else {
                        i = insertIngredientPantryItems(xMPMeta, xMPMeta2, path2 + XMPPathFactory.composeStructFieldPath(XMPConst.NS_XMP_MM, "Ingredients"), i2, set);
                        xMPMeta2.deleteProperty(baseNS2, path2 + XMPPathFactory.composeStructFieldPath(XMPConst.NS_XMP_MM, "Pantry"));
                        int i4 = i + 1;
                        try {
                            String strComposeArrayItemPath = XMPPathFactory.composeArrayItemPath("Pantry", i4);
                            xMPMeta.deleteProperty(XMPConst.NS_XMP_MM, strComposeArrayItemPath);
                            xMPMeta.setProperty(XMPConst.NS_XMP_MM, strComposeArrayItemPath, "", new PropertyOptions(256));
                            duplicateSubtree(xMPMeta2, xMPMeta, baseNS2, path2, XMPConst.NS_XMP_MM, strComposeArrayItemPath);
                            i3 = i4;
                        } catch (XMPException e2) {
                            e = e2;
                            i2 = i4;
                        }
                    }
                    i2 = i3;
                } catch (XMPException e3) {
                    e = e3;
                }
            }
            return i2;
        } catch (XMPException e4) {
            e = e4;
            i2 = i;
        }
        AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.insertIngredientPantryItems", e.getMessage());
        return i2;
    }

    static void addIngredient(XMPMeta xMPMeta, XMPMeta xMPMeta2, String str, String str2, String str3, String str4, boolean z) {
        boolean z2;
        int i;
        int i2;
        try {
            String value = xMPMeta2.getProperty(XMPConst.NS_XMP_MM, "InstanceID").getValue();
            String value2 = xMPMeta2.getProperty(XMPConst.NS_XMP_MM, "DocumentID").getValue();
            HashSet hashSet = new HashSet();
            XMPIterator it = xMPMeta.iterator(XMPConst.NS_XMP_MM, "Pantry", new IteratorOptions().setJustChildren(true));
            int i3 = 0;
            if (!z) {
                z2 = false;
                i = i3;
            } else {
                while (it.hasNext()) {
                    String path = ((XMPPropertyInfo) it.next()).getPath();
                    String baseNS = ((XMPIteratorImpl) it).getBaseNS();
                    String value3 = xMPMeta.getStructField(baseNS, path, XMPConst.NS_XMP_MM, "InstanceID") != null ? xMPMeta.getStructField(baseNS, path, XMPConst.NS_XMP_MM, "InstanceID").getValue() : null;
                    if (value.equals(value3)) {
                        z2 = true;
                        i = -1;
                        break;
                    } else {
                        if (value3 != null) {
                            hashSet.add(value3);
                            i2 = i3 + 1;
                        } else {
                            i2 = i3;
                        }
                        i3 = i2;
                    }
                }
                z2 = false;
                i = i3;
            }
            String value4 = xMPMeta2.getProperty(XMPConst.NS_XMP_MM, "ManageTo") != null ? xMPMeta2.getProperty(XMPConst.NS_XMP_MM, "ManageTo").getValue() : "";
            String value5 = xMPMeta2.getProperty(XMPConst.NS_XMP_MM, "ManageUI") != null ? xMPMeta2.getProperty(XMPConst.NS_XMP_MM, "ManageUI").getValue() : "";
            String strComposeArrayItemPath = XMPPathFactory.composeArrayItemPath("Ingredients", -1);
            xMPMeta.appendArrayItem(XMPConst.NS_XMP_MM, "Ingredients", new PropertyOptions(512), null, new PropertyOptions(256));
            xMPMeta.setStructField(XMPConst.NS_XMP_MM, strComposeArrayItemPath, XMPConst.TYPE_RESOURCEREF, "instanceID", value);
            xMPMeta.setStructField(XMPConst.NS_XMP_MM, strComposeArrayItemPath, XMPConst.TYPE_RESOURCEREF, "documentID", value2);
            if (str != null) {
                xMPMeta.setStructField(XMPConst.NS_XMP_MM, strComposeArrayItemPath, XMPConst.TYPE_RESOURCEREF, "fromPart", str);
                if (str2 != null) {
                    xMPMeta.setQualifier(XMPConst.NS_XMP_MM, strComposeArrayItemPath + XMPPathFactory.composeStructFieldPath(XMPConst.TYPE_RESOURCEREF, "fromPart"), XMPConst.TYPE_RESOURCEREF, "partDescription", str2);
                }
            }
            if (str3 != null) {
                xMPMeta.setStructField(XMPConst.NS_XMP_MM, strComposeArrayItemPath, XMPConst.TYPE_RESOURCEREF, "toPart", str3);
                if (str4 != null) {
                    xMPMeta.setQualifier(XMPConst.NS_XMP_MM, strComposeArrayItemPath + XMPPathFactory.composeStructFieldPath(XMPConst.TYPE_RESOURCEREF, "toPart"), XMPConst.TYPE_RESOURCEREF, "partDescription", str4);
                }
            }
            if (!value4.isEmpty()) {
                xMPMeta.setStructField(XMPConst.NS_XMP_MM, strComposeArrayItemPath, XMPConst.TYPE_RESOURCEREF, "manageTo", value4);
            }
            if (!value5.isEmpty()) {
                xMPMeta.setStructField(XMPConst.NS_XMP_MM, strComposeArrayItemPath, XMPConst.TYPE_RESOURCEREF, "manageUI", value5);
            }
            if (z2 || !z) {
                xMPMeta.dumpObject();
                return;
            }
            if (hashSet.isEmpty()) {
                xMPMeta.deleteProperty(XMPConst.NS_XMP_MM, "Pantry");
                xMPMeta.setProperty(XMPConst.NS_XMP_MM, "Pantry", "", new PropertyOptions(512));
            }
            XMPMeta xMPMeta3 = (XMPMeta) xMPMeta2.clone();
            int iInsertIngredientPantryItems = insertIngredientPantryItems(xMPMeta, xMPMeta3, "Ingredients", i, hashSet);
            xMPMeta3.deleteProperty(XMPConst.NS_XMP_MM, "Pantry");
            String strComposeArrayItemPath2 = XMPPathFactory.composeArrayItemPath("Pantry", iInsertIngredientPantryItems + 1);
            xMPMeta.deleteProperty(XMPConst.NS_XMP_MM, strComposeArrayItemPath2);
            xMPMeta.setProperty(XMPConst.NS_XMP_MM, strComposeArrayItemPath2, "", new PropertyOptions(256));
            duplicateSubtree(xMPMeta3, xMPMeta, null, null, XMPConst.NS_XMP_MM, strComposeArrayItemPath2);
            System.out.print(xMPMeta.dumpObject());
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.addIngredient", e2.getMessage());
        }
    }

    boolean addIngredient(AdobeDCXMetadata adobeDCXMetadata, String str, String str2, String str3, String str4) {
        addIngredient(makeDirty(), adobeDCXMetadata.getXMPMeta(), AdobeDCXUtils.convertToUTF8(str), AdobeDCXUtils.convertToUTF8(str2), AdobeDCXUtils.convertToUTF8(str3), AdobeDCXUtils.convertToUTF8(str4), false);
        return true;
    }

    boolean addIngredient(AdobeDCXMetadata adobeDCXMetadata, String str, String str2) {
        return addIngredient(adobeDCXMetadata, str, null, str2, null);
    }

    boolean addIngredientAndPantry(AdobeDCXMetadata adobeDCXMetadata, String str, String str2, String str3, String str4) {
        addIngredient(makeDirty(), adobeDCXMetadata.getXMPMeta(), AdobeDCXUtils.convertToUTF8(str), AdobeDCXUtils.convertToUTF8(str2), AdobeDCXUtils.convertToUTF8(str3), AdobeDCXUtils.convertToUTF8(str4), true);
        return true;
    }

    boolean addIngredientAndPantry(AdobeDCXMetadata adobeDCXMetadata, String str, String str2) {
        return addIngredientAndPantry(adobeDCXMetadata, str, null, str2, null);
    }

    void addOriginUrl(String str, String str2) throws AdobeDCXMetadataException {
        XMPMeta xMPMetaMakeDirty = makeDirty();
        if (str != null) {
            try {
                xMPMetaMakeDirty.deleteProperty(XMPConst.NS_XMP_MM, "ManageTo");
                xMPMetaMakeDirty.setProperty(XMPConst.NS_XMP_MM, "ManageTo", AdobeDCXUtils.convertToUTF8(str));
            } catch (XMPException e2) {
                handleXMPError(e2);
                return;
            }
        }
        if (str2 != null) {
            xMPMetaMakeDirty.deleteProperty(XMPConst.NS_XMP_MM, "ManageUI");
            xMPMetaMakeDirty.setProperty(XMPConst.NS_XMP_MM, "ManageUI", AdobeDCXUtils.convertToUTF8(str2));
        }
    }

    void addLicenseInfo(String str, String str2, String str3) {
        Object obj;
        String str4;
        if (str.equals(AdobeRemixData.AdobeRemixLicenseAttribution)) {
            str4 = "http://creativecommons.org/licenses/by/4.0/";
            obj = "Attribution";
        } else if (str.equals(AdobeRemixData.AdobeRemixLicenseShareAlike)) {
            str4 = "http://creativecommons.org/licenses/by-sa/4.0/";
            obj = "Attribution-ShareAlike";
        } else if (str.equals(AdobeRemixData.AdobeRemixLicenseNoDerivatives)) {
            str4 = "http://creativecommons.org/licenses/by-nd/4.0/";
            obj = "Attribution-NoDerivatives";
        } else if (str.equals(AdobeRemixData.AdobeRemixLicenseNonCommercial)) {
            str4 = "http://creativecommons.org/licenses/by-nc/4.0/";
            obj = "Attribution-NonCommercial";
        } else if (str.equals(AdobeRemixData.AdobeRemixLicenseNonCommercialShareAlike)) {
            str4 = "http://creativecommons.org/licenses/by-nc-sa/4.0/";
            obj = "Attribution-NonCommercial-ShareAlike";
        } else if (str.equals(AdobeRemixData.AdobeRemixLicenseNonCommercialNoDerivatives)) {
            str4 = "http://creativecommons.org/licenses/by-nc-nd/4.0/";
            obj = "Attribution-NonCommercial-NoDerivatives";
        } else {
            obj = null;
            str4 = null;
        }
        if (str4 != null) {
            try {
                setPropertyWithPath(AdobeDCXMetadataPath.getLicense(), str4);
            } catch (AdobeDCXMetadataException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.addLicenseInfo", e2.getMessage());
            }
        }
        if (str4 != null && obj != null) {
            try {
                setPropertyWithPath(AdobeDCXMetadataPath.getRightsMarked(), XMPConst.TRUESTR);
                String str5 = String.format("This work is licensed to the public under the Creative Commons %s license %s", obj, str4);
                setLocalizedPropertyWithPath(AdobeDCXMetadataPath.getUsageTerms(), str5);
                setLocalizedPropertyWithPath(AdobeDCXMetadataPath.getRights(), str5);
            } catch (AdobeDCXMetadataException e3) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.addLicenseInfo", e3.getMessage());
            }
        }
        if (str2 != null) {
            try {
                setPropertyWithPath(AdobeDCXMetadataPath.getAttributionURL(), str2);
            } catch (AdobeDCXMetadataException e4) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.addLicenseInfo", e4.getMessage());
            }
        }
        if (str3 != null) {
            try {
                setPropertyWithPath(AdobeDCXMetadataPath.getAttributionName(), str3);
            } catch (AdobeDCXMetadataException e5) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.addLicenseInfo", e5.getMessage());
            }
        }
    }

    void addTag(String str) throws AdobeDCXMetadataException {
        if (!hasTag(str)) {
            appendToUnorderedArrayWithPath(AdobeDCXMetadataPath.getSubject(), str);
        }
    }

    void addTags(ArrayList<String> arrayList) throws AdobeDCXMetadataException {
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                addTag(it.next());
            }
        }
    }

    static String fileMD5(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            String strMD5HashFromStream = AdobeStorageUtils.MD5HashFromStream(fileInputStream, true);
            fileInputStream.close();
            return strMD5HashFromStream;
        } catch (FileNotFoundException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.fileMD5", e2.getMessage());
            return null;
        } catch (IOException e3) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.fileMD5", e3.getMessage());
            return null;
        }
    }

    boolean ensureMinimalXMPForFile(String str, String str2, String str3) {
        XMPMeta xMPMetaMakeDirty = makeDirty();
        String string = new Date().toString();
        String strGenerateUuid = AdobeStorageUtils.generateUuid();
        String strConvertToUTF8 = AdobeDCXUtils.convertToUTF8(string);
        String strConvertToUTF82 = AdobeDCXUtils.convertToUTF8(strGenerateUuid);
        try {
            if (xMPMetaMakeDirty.getProperty(XMPConst.NS_XMP_MM, "DocumentID").getValue().isEmpty()) {
                String strFileMD5 = fileMD5(str);
                if (strFileMD5.isEmpty()) {
                    return false;
                }
                xMPMetaMakeDirty.deleteProperty(XMPConst.NS_XMP_MM, "DocumentID");
                xMPMetaMakeDirty.setProperty(XMPConst.NS_XMP_MM, "DocumentID", strFileMD5);
                xMPMetaMakeDirty.appendArrayItem(XMPConst.NS_XMP_MM, "History", new PropertyOptions(1024), null, new PropertyOptions(256));
                xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP_MM, historyLast, XMPConst.TYPE_RESOURCEEVENT, AdobeAnalyticsSDKReporter.AnalyticAction, "copied");
                xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP_MM, historyLast, XMPConst.TYPE_RESOURCEEVENT, "instanceID", strFileMD5);
                xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP_MM, historyLast, XMPConst.TYPE_RESOURCEEVENT, "when", strConvertToUTF8);
                if (str3 != null && str3.length() > 0) {
                    xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP_MM, historyLast, XMPConst.TYPE_RESOURCEEVENT, "softwareAgent", AdobeDCXUtils.convertToUTF8(str3));
                }
            }
            xMPMetaMakeDirty.deleteProperty(XMPConst.NS_XMP_MM, "InstanceID");
            xMPMetaMakeDirty.deleteProperty(XMPConst.NS_XMP, "MetadataDate");
            xMPMetaMakeDirty.setProperty(XMPConst.NS_XMP_MM, "InstanceID", strConvertToUTF82);
            xMPMetaMakeDirty.setProperty(XMPConst.NS_XMP, "MetadataDate", strConvertToUTF8);
            if (str2 != null && str2.length() > 0) {
                xMPMetaMakeDirty.deleteProperty(XMPConst.NS_DC, "format");
                xMPMetaMakeDirty.setProperty(XMPConst.NS_DC, "format", AdobeDCXUtils.convertToUTF8(str2));
            }
            xMPMetaMakeDirty.appendArrayItem(XMPConst.NS_XMP_MM, "History", new PropertyOptions(1024), null, new PropertyOptions(256));
            xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP_MM, historyLast, XMPConst.TYPE_RESOURCEEVENT, AdobeAnalyticsSDKReporter.AnalyticAction, "saved");
            xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP_MM, historyLast, XMPConst.TYPE_RESOURCEEVENT, "instanceID", strConvertToUTF82);
            xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP_MM, historyLast, XMPConst.TYPE_RESOURCEEVENT, "when", strConvertToUTF8);
            if (str3 != null && str3.length() > 0) {
                xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP_MM, historyLast, XMPConst.TYPE_RESOURCEEVENT, "softwareAgent", AdobeDCXUtils.convertToUTF8(str3));
            }
            return true;
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.ensureMinimalXMPForFile", e2.getMessage());
            return false;
        }
    }

    public static void duplicateSubtree(XMPMeta xMPMeta, XMPMeta xMPMeta2, String str, String str2, String str3, String str4) {
        XMPNode xMPNodeFindNode;
        XMPNode xMPNodeFindNode2;
        if (xMPMeta != null && xMPMeta2 != null) {
            try {
                XMPNode root = ((XMPMetaImpl) xMPMeta).getRoot();
                XMPNode root2 = ((XMPMetaImpl) xMPMeta2).getRoot();
                if (str == null) {
                    xMPNodeFindNode = root;
                } else if (str2 == null) {
                    xMPNodeFindNode = XMPNodeUtils.findSchemaNode(root, str, false);
                } else {
                    xMPNodeFindNode = XMPNodeUtils.findNode(root, XMPPathParser.expandXPath(str, str2), false, null);
                }
                if (str3 == null) {
                    xMPNodeFindNode2 = root2;
                } else if (str4 == null) {
                    xMPNodeFindNode2 = XMPNodeUtils.findSchemaNode(root2, str3, true);
                } else {
                    xMPNodeFindNode2 = XMPNodeUtils.findNode(root2, XMPPathParser.expandXPath(str3, str4), true, null);
                }
                Iterator itIterateChildren = xMPNodeFindNode.iterateChildren();
                while (itIterateChildren.hasNext()) {
                    XMPNode xMPNode = (XMPNode) itIterateChildren.next();
                    if (xMPNode.getOptions().isSchemaNode()) {
                        Iterator itIterateChildren2 = xMPNode.iterateChildren();
                        while (itIterateChildren2.hasNext()) {
                            xMPNodeFindNode2.addChild((XMPNode) itIterateChildren2.next());
                        }
                    } else {
                        xMPNodeFindNode2.addChild(xMPNode);
                    }
                }
            } catch (XMPException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableMetadata.duplicateSubtree", e2.getMessage());
            }
        }
    }

    void fixDerivedCompositeWithDocId(String str) {
        if (!getPropertyWithPath(AdobeDCXMetadataPath.getDocumentId()).getValue().equals(str)) {
            makeDerivedWithActionAndDocId("copied", str);
        }
    }

    boolean updateFile(String str) {
        return AdobeDCXFileMetadata.addMetadata(this, str);
    }

    void addJPEGThumbnail(byte[] bArr, int i, int i2) {
        XMPMeta xMPMetaMakeDirty = makeDirty();
        try {
            xMPMetaMakeDirty.appendArrayItem(XMPConst.NS_XMP, "Thumbnails", new PropertyOptions(2048), null, new PropertyOptions(256));
            String strComposeArrayItemPath = XMPPathFactory.composeArrayItemPath("Thumbnails", -1);
            xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP, strComposeArrayItemPath, XMPConst.TYPE_IMAGE, "format", "JPEG");
            xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP, strComposeArrayItemPath, XMPConst.TYPE_IMAGE, "width", XMPUtils.convertFromInteger(i));
            xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP, strComposeArrayItemPath, XMPConst.TYPE_IMAGE, "height", XMPUtils.convertFromInteger(i2));
            xMPMetaMakeDirty.setStructField(XMPConst.NS_XMP, strComposeArrayItemPath, XMPConst.TYPE_IMAGE, "image", new String(Base64.encode(bArr, 0), "UTF-8"));
        } catch (XMPException e2) {
            AdobeLogger.log(Level.ERROR, "AdobeDCXMutableMetadata#addJPEGThumbnail", e2.getMessage());
        } catch (UnsupportedEncodingException e3) {
            AdobeLogger.log(Level.ERROR, "AdobeDCXMutableMetadata#addJPEGThumbnail", e3.getMessage());
        }
    }

    void deleteThumbnails() {
        makeDirty().deleteProperty(XMPConst.NS_XMP, "Thumbnails");
    }

    void removeLicenseInfo() {
        deletePropertyWithPath(AdobeDCXMetadataPath.getLicense());
        deletePropertyWithPath(AdobeDCXMetadataPath.getRightsMarked());
        deletePropertyWithPath(AdobeDCXMetadataPath.getUsageTerms());
        deletePropertyWithPath(AdobeDCXMetadataPath.getRights());
        deletePropertyWithPath(AdobeDCXMetadataPath.getAttributionURL());
        deletePropertyWithPath(AdobeDCXMetadataPath.getAttributionName());
    }
}
