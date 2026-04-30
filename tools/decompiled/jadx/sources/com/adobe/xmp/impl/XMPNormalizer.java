package com.adobe.xmp.impl;

import com.adobe.xmp.XMPConst;
import com.adobe.xmp.XMPDateTime;
import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPMeta;
import com.adobe.xmp.XMPUtils;
import com.adobe.xmp.impl.xpath.XMPPathParser;
import com.adobe.xmp.options.ParseOptions;
import com.adobe.xmp.options.PropertyOptions;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class XMPNormalizer {
    private static Map dcArrayForms;

    static {
        initDCArrays();
    }

    private XMPNormalizer() {
    }

    static XMPMeta process(XMPMetaImpl xMPMetaImpl, ParseOptions parseOptions) throws XMPException {
        XMPNode root = xMPMetaImpl.getRoot();
        touchUpDataModel(xMPMetaImpl);
        moveExplicitAliases(root, parseOptions);
        tweakOldXMP(root);
        deleteEmptySchemas(root);
        return xMPMetaImpl;
    }

    private static void tweakOldXMP(XMPNode xMPNode) throws XMPException {
        if (xMPNode.getName() != null && xMPNode.getName().length() >= 36) {
            String lowerCase = xMPNode.getName().toLowerCase();
            if (lowerCase.startsWith("uuid:")) {
                lowerCase = lowerCase.substring(5);
            }
            if (Utils.checkUUIDFormat(lowerCase)) {
                XMPNode xMPNodeFindNode = XMPNodeUtils.findNode(xMPNode, XMPPathParser.expandXPath(XMPConst.NS_XMP_MM, "InstanceID"), true, null);
                if (xMPNodeFindNode != null) {
                    xMPNodeFindNode.setOptions(null);
                    xMPNodeFindNode.setValue("uuid:" + lowerCase);
                    xMPNodeFindNode.removeChildren();
                    xMPNodeFindNode.removeQualifiers();
                    xMPNode.setName(null);
                    return;
                }
                throw new XMPException("Failure creating xmpMM:InstanceID", 9);
            }
        }
    }

    private static void touchUpDataModel(XMPMetaImpl xMPMetaImpl) throws XMPException {
        XMPNode xMPNodeFindChildNode;
        XMPNodeUtils.findSchemaNode(xMPMetaImpl.getRoot(), XMPConst.NS_DC, true);
        Iterator itIterateChildren = xMPMetaImpl.getRoot().iterateChildren();
        while (itIterateChildren.hasNext()) {
            XMPNode xMPNode = (XMPNode) itIterateChildren.next();
            if (XMPConst.NS_DC.equals(xMPNode.getName())) {
                normalizeDCArrays(xMPNode);
            } else if (XMPConst.NS_EXIF.equals(xMPNode.getName())) {
                fixGPSTimeStamp(xMPNode);
                XMPNode xMPNodeFindChildNode2 = XMPNodeUtils.findChildNode(xMPNode, "exif:UserComment", false);
                if (xMPNodeFindChildNode2 != null) {
                    repairAltText(xMPNodeFindChildNode2);
                }
            } else if (XMPConst.NS_DM.equals(xMPNode.getName())) {
                XMPNode xMPNodeFindChildNode3 = XMPNodeUtils.findChildNode(xMPNode, "xmpDM:copyright", false);
                if (xMPNodeFindChildNode3 != null) {
                    migrateAudioCopyright(xMPMetaImpl, xMPNodeFindChildNode3);
                }
            } else if (XMPConst.NS_XMP_RIGHTS.equals(xMPNode.getName()) && (xMPNodeFindChildNode = XMPNodeUtils.findChildNode(xMPNode, "xmpRights:UsageTerms", false)) != null) {
                repairAltText(xMPNodeFindChildNode);
            }
        }
    }

    private static void normalizeDCArrays(XMPNode xMPNode) throws XMPException {
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 <= xMPNode.getChildrenLength()) {
                XMPNode child = xMPNode.getChild(i2);
                PropertyOptions propertyOptions = (PropertyOptions) dcArrayForms.get(child.getName());
                if (propertyOptions != null) {
                    if (child.getOptions().isSimple()) {
                        XMPNode xMPNode2 = new XMPNode(child.getName(), propertyOptions);
                        child.setName(XMPConst.ARRAY_ITEM_NAME);
                        xMPNode2.addChild(child);
                        xMPNode.replaceChild(i2, xMPNode2);
                        if (propertyOptions.isArrayAltText() && !child.getOptions().getHasLanguage()) {
                            child.addQualifier(new XMPNode(XMPConst.XML_LANG, XMPConst.X_DEFAULT, null));
                        }
                    } else {
                        child.getOptions().setOption(7680, false);
                        child.getOptions().mergeWith(propertyOptions);
                        if (propertyOptions.isArrayAltText()) {
                            repairAltText(child);
                        }
                    }
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private static void repairAltText(XMPNode xMPNode) throws XMPException {
        if (xMPNode != null && xMPNode.getOptions().isArray()) {
            xMPNode.getOptions().setArrayOrdered(true).setArrayAlternate(true).setArrayAltText(true);
            Iterator itIterateChildren = xMPNode.iterateChildren();
            while (itIterateChildren.hasNext()) {
                XMPNode xMPNode2 = (XMPNode) itIterateChildren.next();
                if (xMPNode2.getOptions().isCompositeProperty()) {
                    itIterateChildren.remove();
                } else if (!xMPNode2.getOptions().getHasLanguage()) {
                    String value = xMPNode2.getValue();
                    if (value == null || value.length() == 0) {
                        itIterateChildren.remove();
                    } else {
                        xMPNode2.addQualifier(new XMPNode(XMPConst.XML_LANG, "x-repair", null));
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0119 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0109 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void moveExplicitAliases(com.adobe.xmp.impl.XMPNode r13, com.adobe.xmp.options.ParseOptions r14) throws com.adobe.xmp.XMPException {
        /*
            Method dump skipped, instruction units count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.xmp.impl.XMPNormalizer.moveExplicitAliases(com.adobe.xmp.impl.XMPNode, com.adobe.xmp.options.ParseOptions):void");
    }

    private static void transplantArrayItemAlias(Iterator it, XMPNode xMPNode, XMPNode xMPNode2) throws XMPException {
        if (xMPNode2.getOptions().isArrayAltText()) {
            if (xMPNode.getOptions().getHasLanguage()) {
                throw new XMPException("Alias to x-default already has a language qualifier", 203);
            }
            xMPNode.addQualifier(new XMPNode(XMPConst.XML_LANG, XMPConst.X_DEFAULT, null));
        }
        it.remove();
        xMPNode.setName(XMPConst.ARRAY_ITEM_NAME);
        xMPNode2.addChild(xMPNode);
    }

    private static void fixGPSTimeStamp(XMPNode xMPNode) throws XMPException {
        XMPNode xMPNodeFindChildNode = XMPNodeUtils.findChildNode(xMPNode, "exif:GPSTimeStamp", false);
        if (xMPNodeFindChildNode != null) {
            try {
                XMPDateTime xMPDateTimeConvertToDate = XMPUtils.convertToDate(xMPNodeFindChildNode.getValue());
                if (xMPDateTimeConvertToDate.getYear() == 0 && xMPDateTimeConvertToDate.getMonth() == 0 && xMPDateTimeConvertToDate.getDay() == 0) {
                    XMPNode xMPNodeFindChildNode2 = XMPNodeUtils.findChildNode(xMPNode, "exif:DateTimeOriginal", false);
                    if (xMPNodeFindChildNode2 == null) {
                        xMPNodeFindChildNode2 = XMPNodeUtils.findChildNode(xMPNode, "exif:DateTimeDigitized", false);
                    }
                    XMPDateTime xMPDateTimeConvertToDate2 = XMPUtils.convertToDate(xMPNodeFindChildNode2.getValue());
                    Calendar calendar = xMPDateTimeConvertToDate.getCalendar();
                    calendar.set(1, xMPDateTimeConvertToDate2.getYear());
                    calendar.set(2, xMPDateTimeConvertToDate2.getMonth());
                    calendar.set(5, xMPDateTimeConvertToDate2.getDay());
                    xMPNodeFindChildNode.setValue(XMPUtils.convertFromDate(new XMPDateTimeImpl(calendar)));
                }
            } catch (XMPException e2) {
            }
        }
    }

    private static void deleteEmptySchemas(XMPNode xMPNode) {
        Iterator itIterateChildren = xMPNode.iterateChildren();
        while (itIterateChildren.hasNext()) {
            if (!((XMPNode) itIterateChildren.next()).hasChildren()) {
                itIterateChildren.remove();
            }
        }
    }

    private static void compareAliasedSubtrees(XMPNode xMPNode, XMPNode xMPNode2, boolean z) throws XMPException {
        if (!xMPNode.getValue().equals(xMPNode2.getValue()) || xMPNode.getChildrenLength() != xMPNode2.getChildrenLength()) {
            throw new XMPException("Mismatch between alias and base nodes", 203);
        }
        if (!z && (!xMPNode.getName().equals(xMPNode2.getName()) || !xMPNode.getOptions().equals(xMPNode2.getOptions()) || xMPNode.getQualifierLength() != xMPNode2.getQualifierLength())) {
            throw new XMPException("Mismatch between alias and base nodes", 203);
        }
        Iterator itIterateChildren = xMPNode.iterateChildren();
        Iterator itIterateChildren2 = xMPNode2.iterateChildren();
        while (itIterateChildren.hasNext() && itIterateChildren2.hasNext()) {
            compareAliasedSubtrees((XMPNode) itIterateChildren.next(), (XMPNode) itIterateChildren2.next(), false);
        }
        Iterator itIterateQualifier = xMPNode.iterateQualifier();
        Iterator itIterateQualifier2 = xMPNode2.iterateQualifier();
        while (itIterateQualifier.hasNext() && itIterateQualifier2.hasNext()) {
            compareAliasedSubtrees((XMPNode) itIterateQualifier.next(), (XMPNode) itIterateQualifier2.next(), false);
        }
    }

    private static void migrateAudioCopyright(XMPMeta xMPMeta, XMPNode xMPNode) {
        try {
            XMPNode xMPNodeFindSchemaNode = XMPNodeUtils.findSchemaNode(((XMPMetaImpl) xMPMeta).getRoot(), XMPConst.NS_DC, true);
            String value = xMPNode.getValue();
            XMPNode xMPNodeFindChildNode = XMPNodeUtils.findChildNode(xMPNodeFindSchemaNode, "dc:rights", false);
            if (xMPNodeFindChildNode == null || !xMPNodeFindChildNode.hasChildren()) {
                xMPMeta.setLocalizedText(XMPConst.NS_DC, "rights", "", XMPConst.X_DEFAULT, String.valueOf("\n\n") + value, null);
            } else {
                int iLookupLanguageItem = XMPNodeUtils.lookupLanguageItem(xMPNodeFindChildNode, XMPConst.X_DEFAULT);
                if (iLookupLanguageItem < 0) {
                    xMPMeta.setLocalizedText(XMPConst.NS_DC, "rights", "", XMPConst.X_DEFAULT, xMPNodeFindChildNode.getChild(1).getValue(), null);
                    iLookupLanguageItem = XMPNodeUtils.lookupLanguageItem(xMPNodeFindChildNode, XMPConst.X_DEFAULT);
                }
                XMPNode child = xMPNodeFindChildNode.getChild(iLookupLanguageItem);
                String value2 = child.getValue();
                int iIndexOf = value2.indexOf("\n\n");
                if (iIndexOf < 0) {
                    if (!value.equals(value2)) {
                        child.setValue(String.valueOf(value2) + "\n\n" + value);
                    }
                } else if (!value2.substring(iIndexOf + 2).equals(value)) {
                    child.setValue(String.valueOf(value2.substring(0, iIndexOf + 2)) + value);
                }
            }
            xMPNode.getParent().removeChild(xMPNode);
        } catch (XMPException e2) {
        }
    }

    private static void initDCArrays() {
        dcArrayForms = new HashMap();
        PropertyOptions propertyOptions = new PropertyOptions();
        propertyOptions.setArray(true);
        dcArrayForms.put("dc:contributor", propertyOptions);
        dcArrayForms.put("dc:language", propertyOptions);
        dcArrayForms.put("dc:publisher", propertyOptions);
        dcArrayForms.put("dc:relation", propertyOptions);
        dcArrayForms.put("dc:subject", propertyOptions);
        dcArrayForms.put("dc:type", propertyOptions);
        PropertyOptions propertyOptions2 = new PropertyOptions();
        propertyOptions2.setArray(true);
        propertyOptions2.setArrayOrdered(true);
        dcArrayForms.put("dc:creator", propertyOptions2);
        dcArrayForms.put("dc:date", propertyOptions2);
        PropertyOptions propertyOptions3 = new PropertyOptions();
        propertyOptions3.setArray(true);
        propertyOptions3.setArrayOrdered(true);
        propertyOptions3.setArrayAlternate(true);
        propertyOptions3.setArrayAltText(true);
        dcArrayForms.put("dc:description", propertyOptions3);
        dcArrayForms.put("dc:rights", propertyOptions3);
        dcArrayForms.put("dc:title", propertyOptions3);
    }
}
