package com.adobe.xmp.impl;

import com.adobe.xmp.XMPConst;
import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPMeta;
import com.adobe.xmp.XMPMetaFactory;
import com.adobe.xmp.impl.xpath.XMPPath;
import com.adobe.xmp.impl.xpath.XMPPathParser;
import com.adobe.xmp.options.PropertyOptions;
import com.adobe.xmp.properties.XMPAliasInfo;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class XMPUtilsImpl implements XMPConst {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String COMMAS = ",，､﹐﹑、،՝";
    private static final String CONTROLS = "\u2028\u2029";
    private static final String QUOTES = "\"«»〝〞〟―‹›";
    private static final String SEMICOLA = ";；﹔؛;";
    private static final String SPACES = " \u3000〿";
    private static final int UCK_COMMA = 2;
    private static final int UCK_CONTROL = 5;
    private static final int UCK_NORMAL = 0;
    private static final int UCK_QUOTE = 4;
    private static final int UCK_SEMICOLON = 3;
    private static final int UCK_SPACE = 1;

    static {
        $assertionsDisabled = !XMPUtilsImpl.class.desiredAssertionStatus();
    }

    private XMPUtilsImpl() {
    }

    public static String catenateArrayItems(XMPMeta xMPMeta, String str, String str2, String str3, String str4, boolean z) throws XMPException {
        ParameterAsserts.assertSchemaNS(str);
        ParameterAsserts.assertArrayName(str2);
        ParameterAsserts.assertImplementation(xMPMeta);
        if (str3 == null || str3.length() == 0) {
            str3 = "; ";
        }
        if (str4 == null || str4.length() == 0) {
            str4 = "\"";
        }
        XMPNode xMPNodeFindNode = XMPNodeUtils.findNode(((XMPMetaImpl) xMPMeta).getRoot(), XMPPathParser.expandXPath(str, str2), false, null);
        if (xMPNodeFindNode == null) {
            return "";
        }
        if (!xMPNodeFindNode.getOptions().isArray() || xMPNodeFindNode.getOptions().isArrayAlternate()) {
            throw new XMPException("Named property must be non-alternate array", 4);
        }
        checkSeparator(str3);
        char cCharAt = str4.charAt(0);
        char cCheckQuotes = checkQuotes(str4, cCharAt);
        StringBuffer stringBuffer = new StringBuffer();
        Iterator itIterateChildren = xMPNodeFindNode.iterateChildren();
        while (itIterateChildren.hasNext()) {
            XMPNode xMPNode = (XMPNode) itIterateChildren.next();
            if (xMPNode.getOptions().isCompositeProperty()) {
                throw new XMPException("Array items must be simple", 4);
            }
            stringBuffer.append(applyQuotes(xMPNode.getValue(), cCharAt, cCheckQuotes, z));
            if (itIterateChildren.hasNext()) {
                stringBuffer.append(str3);
            }
        }
        return stringBuffer.toString();
    }

    public static void separateArrayItems(XMPMeta xMPMeta, String str, String str2, String str3, PropertyOptions propertyOptions, boolean z) throws XMPException {
        String strSubstring;
        int i;
        char cCharAt;
        int iClassifyCharacter;
        String str4;
        char cCharAt2;
        int iClassifyCharacter2;
        ParameterAsserts.assertSchemaNS(str);
        ParameterAsserts.assertArrayName(str2);
        if (str3 == null) {
            throw new XMPException("Parameter must not be null", 4);
        }
        ParameterAsserts.assertImplementation(xMPMeta);
        XMPNode xMPNodeSeparateFindCreateArray = separateFindCreateArray(str, str2, propertyOptions, (XMPMetaImpl) xMPMeta);
        int length = str3.length();
        char cCharAt3 = 0;
        int i2 = 0;
        int iClassifyCharacter3 = 0;
        while (i2 < length) {
            while (i2 < length) {
                cCharAt3 = str3.charAt(i2);
                iClassifyCharacter3 = classifyCharacter(cCharAt3);
                if (iClassifyCharacter3 == 0 || iClassifyCharacter3 == 4) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 < length) {
                if (iClassifyCharacter3 != 4) {
                    cCharAt = cCharAt3;
                    iClassifyCharacter = iClassifyCharacter3;
                    i = i2;
                    while (i < length) {
                        cCharAt = str3.charAt(i);
                        iClassifyCharacter = classifyCharacter(cCharAt);
                        if (iClassifyCharacter != 0 && iClassifyCharacter != 4 && ((iClassifyCharacter != 2 || !z) && (iClassifyCharacter != 1 || i + 1 >= length || ((iClassifyCharacter2 = classifyCharacter((cCharAt = str3.charAt(i + 1)))) != 0 && iClassifyCharacter2 != 4 && (iClassifyCharacter2 != 2 || !z))))) {
                            break;
                        } else {
                            i++;
                        }
                    }
                    strSubstring = str3.substring(i2, i);
                } else {
                    char closingQuote = getClosingQuote(cCharAt3);
                    int i3 = i2 + 1;
                    String str5 = "";
                    char c2 = cCharAt3;
                    while (true) {
                        if (i3 >= length) {
                            strSubstring = str5;
                            int i4 = iClassifyCharacter3;
                            i = i3;
                            cCharAt = c2;
                            iClassifyCharacter = i4;
                            break;
                        }
                        char cCharAt4 = str3.charAt(i3);
                        int iClassifyCharacter4 = classifyCharacter(cCharAt4);
                        if (iClassifyCharacter4 != 4 || !isSurroundingQuote(cCharAt4, cCharAt3, closingQuote)) {
                            str4 = String.valueOf(str5) + cCharAt4;
                        } else {
                            if (i3 + 1 < length) {
                                cCharAt2 = str3.charAt(i3 + 1);
                                classifyCharacter(cCharAt2);
                            } else {
                                cCharAt2 = ';';
                            }
                            if (cCharAt4 == cCharAt2) {
                                str4 = String.valueOf(str5) + cCharAt4;
                                i3++;
                            } else if (!isClosingingQuote(cCharAt4, cCharAt3, closingQuote)) {
                                str4 = String.valueOf(str5) + cCharAt4;
                            } else {
                                int i5 = i3 + 1;
                                iClassifyCharacter = iClassifyCharacter4;
                                strSubstring = str5;
                                cCharAt = cCharAt4;
                                i = i5;
                                break;
                            }
                        }
                        i3++;
                        str5 = str4;
                        c2 = cCharAt4;
                        iClassifyCharacter3 = iClassifyCharacter4;
                    }
                }
                int i6 = 1;
                while (true) {
                    if (i6 > xMPNodeSeparateFindCreateArray.getChildrenLength()) {
                        i6 = -1;
                        break;
                    } else if (strSubstring.equals(xMPNodeSeparateFindCreateArray.getChild(i6).getValue())) {
                        break;
                    } else {
                        i6++;
                    }
                }
                if (i6 < 0) {
                    xMPNodeSeparateFindCreateArray.addChild(new XMPNode(XMPConst.ARRAY_ITEM_NAME, strSubstring, null));
                }
                cCharAt3 = cCharAt;
                i2 = i;
                iClassifyCharacter3 = iClassifyCharacter;
            } else {
                return;
            }
        }
    }

    private static XMPNode separateFindCreateArray(String str, String str2, PropertyOptions propertyOptions, XMPMetaImpl xMPMetaImpl) throws XMPException {
        PropertyOptions propertyOptionsVerifySetOptions = XMPNodeUtils.verifySetOptions(propertyOptions, null);
        if (!propertyOptionsVerifySetOptions.isOnlyArrayOptions()) {
            throw new XMPException("Options can only provide array form", 103);
        }
        XMPPath xMPPathExpandXPath = XMPPathParser.expandXPath(str, str2);
        XMPNode xMPNodeFindNode = XMPNodeUtils.findNode(xMPMetaImpl.getRoot(), xMPPathExpandXPath, false, null);
        if (xMPNodeFindNode != null) {
            PropertyOptions options = xMPNodeFindNode.getOptions();
            if (!options.isArray() || options.isArrayAlternate()) {
                throw new XMPException("Named property must be non-alternate array", 102);
            }
            if (propertyOptionsVerifySetOptions.equalArrayTypes(options)) {
                throw new XMPException("Mismatch of specified and existing array form", 102);
            }
        } else {
            xMPNodeFindNode = XMPNodeUtils.findNode(xMPMetaImpl.getRoot(), xMPPathExpandXPath, true, propertyOptionsVerifySetOptions.setArray(true));
            if (xMPNodeFindNode == null) {
                throw new XMPException("Failed to create named array", 102);
            }
        }
        return xMPNodeFindNode;
    }

    public static void removeProperties(XMPMeta xMPMeta, String str, String str2, boolean z, boolean z2) throws XMPException {
        ParameterAsserts.assertImplementation(xMPMeta);
        XMPMetaImpl xMPMetaImpl = (XMPMetaImpl) xMPMeta;
        if (str2 != null && str2.length() > 0) {
            if (str == null || str.length() == 0) {
                throw new XMPException("Property name requires schema namespace", 4);
            }
            XMPPath xMPPathExpandXPath = XMPPathParser.expandXPath(str, str2);
            XMPNode xMPNodeFindNode = XMPNodeUtils.findNode(xMPMetaImpl.getRoot(), xMPPathExpandXPath, false, null);
            if (xMPNodeFindNode != null) {
                if (z || !Utils.isInternalProperty(xMPPathExpandXPath.getSegment(0).getName(), xMPPathExpandXPath.getSegment(1).getName())) {
                    XMPNode parent = xMPNodeFindNode.getParent();
                    parent.removeChild(xMPNodeFindNode);
                    if (parent.getOptions().isSchemaNode() && !parent.hasChildren()) {
                        parent.getParent().removeChild(parent);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (str != null && str.length() > 0) {
            XMPNode xMPNodeFindSchemaNode = XMPNodeUtils.findSchemaNode(xMPMetaImpl.getRoot(), str, false);
            if (xMPNodeFindSchemaNode != null && removeSchemaChildren(xMPNodeFindSchemaNode, z)) {
                xMPMetaImpl.getRoot().removeChild(xMPNodeFindSchemaNode);
            }
            if (z2) {
                for (XMPAliasInfo xMPAliasInfo : XMPMetaFactory.getSchemaRegistry().findAliases(str)) {
                    XMPNode xMPNodeFindNode2 = XMPNodeUtils.findNode(xMPMetaImpl.getRoot(), XMPPathParser.expandXPath(xMPAliasInfo.getNamespace(), xMPAliasInfo.getPropName()), false, null);
                    if (xMPNodeFindNode2 != null) {
                        xMPNodeFindNode2.getParent().removeChild(xMPNodeFindNode2);
                    }
                }
                return;
            }
            return;
        }
        Iterator itIterateChildren = xMPMetaImpl.getRoot().iterateChildren();
        while (itIterateChildren.hasNext()) {
            if (removeSchemaChildren((XMPNode) itIterateChildren.next(), z)) {
                itIterateChildren.remove();
            }
        }
    }

    public static void appendProperties(XMPMeta xMPMeta, XMPMeta xMPMeta2, boolean z, boolean z2, boolean z3) throws XMPException {
        boolean z4;
        XMPNode xMPNode;
        ParameterAsserts.assertImplementation(xMPMeta);
        ParameterAsserts.assertImplementation(xMPMeta2);
        XMPMetaImpl xMPMetaImpl = (XMPMetaImpl) xMPMeta2;
        Iterator itIterateChildren = ((XMPMetaImpl) xMPMeta).getRoot().iterateChildren();
        while (itIterateChildren.hasNext()) {
            XMPNode xMPNode2 = (XMPNode) itIterateChildren.next();
            XMPNode xMPNodeFindSchemaNode = XMPNodeUtils.findSchemaNode(xMPMetaImpl.getRoot(), xMPNode2.getName(), false);
            if (xMPNodeFindSchemaNode == null) {
                XMPNode xMPNode3 = new XMPNode(xMPNode2.getName(), xMPNode2.getValue(), new PropertyOptions().setSchemaNode(true));
                xMPMetaImpl.getRoot().addChild(xMPNode3);
                z4 = true;
                xMPNode = xMPNode3;
            } else {
                z4 = false;
                xMPNode = xMPNodeFindSchemaNode;
            }
            Iterator itIterateChildren2 = xMPNode2.iterateChildren();
            while (itIterateChildren2.hasNext()) {
                XMPNode xMPNode4 = (XMPNode) itIterateChildren2.next();
                if (z || !Utils.isInternalProperty(xMPNode2.getName(), xMPNode4.getName())) {
                    appendSubtree(xMPMetaImpl, xMPNode4, xMPNode, z2, z3);
                }
            }
            if (!xMPNode.hasChildren() && (z4 || z3)) {
                xMPMetaImpl.getRoot().removeChild(xMPNode);
            }
        }
    }

    private static boolean removeSchemaChildren(XMPNode xMPNode, boolean z) {
        Iterator itIterateChildren = xMPNode.iterateChildren();
        while (itIterateChildren.hasNext()) {
            XMPNode xMPNode2 = (XMPNode) itIterateChildren.next();
            if (z || !Utils.isInternalProperty(xMPNode.getName(), xMPNode2.getName())) {
                itIterateChildren.remove();
            }
        }
        return !xMPNode.hasChildren();
    }

    public static void appendSubtree(XMPMetaImpl xMPMetaImpl, XMPNode xMPNode, XMPNode xMPNode2, boolean z, boolean z2) throws XMPException {
        boolean z3;
        XMPNode xMPNodeFindChildNode = XMPNodeUtils.findChildNode(xMPNode2, xMPNode.getName(), false);
        if (!z2) {
            z3 = false;
        } else if (xMPNode.getOptions().isSimple()) {
            z3 = xMPNode.getValue() == null || xMPNode.getValue().length() == 0;
        } else {
            z3 = !xMPNode.hasChildren();
        }
        if (z2 && z3) {
            if (xMPNodeFindChildNode != null) {
                xMPNode2.removeChild(xMPNodeFindChildNode);
                return;
            }
            return;
        }
        if (xMPNodeFindChildNode == null) {
            xMPNode2.addChild((XMPNode) xMPNode.clone());
            return;
        }
        if (z) {
            xMPMetaImpl.setNode(xMPNodeFindChildNode, xMPNode.getValue(), xMPNode.getOptions(), true);
            xMPNode2.removeChild(xMPNodeFindChildNode);
            xMPNode2.addChild((XMPNode) xMPNode.clone());
            return;
        }
        PropertyOptions options = xMPNode.getOptions();
        if (options == xMPNodeFindChildNode.getOptions()) {
            if (options.isStruct()) {
                Iterator itIterateChildren = xMPNode.iterateChildren();
                while (itIterateChildren.hasNext()) {
                    appendSubtree(xMPMetaImpl, (XMPNode) itIterateChildren.next(), xMPNodeFindChildNode, z, z2);
                    if (z2 && !xMPNodeFindChildNode.hasChildren()) {
                        xMPNode2.removeChild(xMPNodeFindChildNode);
                    }
                }
                return;
            }
            if (options.isArrayAltText()) {
                Iterator itIterateChildren2 = xMPNode.iterateChildren();
                while (itIterateChildren2.hasNext()) {
                    XMPNode xMPNode3 = (XMPNode) itIterateChildren2.next();
                    if (xMPNode3.hasQualifier() && XMPConst.XML_LANG.equals(xMPNode3.getQualifier(1).getName())) {
                        int iLookupLanguageItem = XMPNodeUtils.lookupLanguageItem(xMPNodeFindChildNode, xMPNode3.getQualifier(1).getValue());
                        if (z2 && (xMPNode3.getValue() == null || xMPNode3.getValue().length() == 0)) {
                            if (iLookupLanguageItem != -1) {
                                xMPNodeFindChildNode.removeChild(iLookupLanguageItem);
                                if (!xMPNodeFindChildNode.hasChildren()) {
                                    xMPNode2.removeChild(xMPNodeFindChildNode);
                                }
                            }
                        } else if (iLookupLanguageItem == -1) {
                            if (!XMPConst.X_DEFAULT.equals(xMPNode3.getQualifier(1).getValue()) || !xMPNodeFindChildNode.hasChildren()) {
                                xMPNode3.cloneSubtree(xMPNodeFindChildNode);
                            } else {
                                XMPNode xMPNode4 = new XMPNode(xMPNode3.getName(), xMPNode3.getValue(), xMPNode3.getOptions());
                                xMPNode3.cloneSubtree(xMPNode4);
                                xMPNodeFindChildNode.addChild(1, xMPNode4);
                            }
                        }
                    }
                }
                return;
            }
            if (options.isArray()) {
                Iterator itIterateChildren3 = xMPNode.iterateChildren();
                XMPNode xMPNode5 = xMPNodeFindChildNode;
                while (itIterateChildren3.hasNext()) {
                    XMPNode xMPNode6 = (XMPNode) itIterateChildren3.next();
                    Iterator itIterateChildren4 = xMPNode5.iterateChildren();
                    boolean z4 = false;
                    while (itIterateChildren4.hasNext()) {
                        if (itemValuesMatch(xMPNode6, (XMPNode) itIterateChildren4.next())) {
                            z4 = true;
                        }
                    }
                    if (!z4) {
                        XMPNode xMPNode7 = (XMPNode) xMPNode6.clone();
                        xMPNode2.addChild(xMPNode7);
                        xMPNode5 = xMPNode7;
                    }
                }
            }
        }
    }

    private static boolean itemValuesMatch(XMPNode xMPNode, XMPNode xMPNode2) throws XMPException {
        boolean z;
        PropertyOptions options = xMPNode.getOptions();
        if (options.equals(xMPNode2.getOptions())) {
            return false;
        }
        if (options.getOptions() == 0) {
            if (xMPNode.getValue().equals(xMPNode2.getValue()) && xMPNode.getOptions().getHasLanguage() == xMPNode2.getOptions().getHasLanguage()) {
                if (xMPNode.getOptions().getHasLanguage() && !xMPNode.getQualifier(1).getValue().equals(xMPNode2.getQualifier(1).getValue())) {
                    return false;
                }
            }
            return false;
        }
        if (options.isStruct()) {
            if (xMPNode.getChildrenLength() != xMPNode2.getChildrenLength()) {
                return false;
            }
            Iterator itIterateChildren = xMPNode.iterateChildren();
            while (itIterateChildren.hasNext()) {
                XMPNode xMPNode3 = (XMPNode) itIterateChildren.next();
                XMPNode xMPNodeFindChildNode = XMPNodeUtils.findChildNode(xMPNode2, xMPNode3.getName(), false);
                if (xMPNodeFindChildNode == null || !itemValuesMatch(xMPNode3, xMPNodeFindChildNode)) {
                    return false;
                }
            }
        } else {
            if (!$assertionsDisabled && !options.isArray()) {
                throw new AssertionError();
            }
            Iterator itIterateChildren2 = xMPNode.iterateChildren();
            while (itIterateChildren2.hasNext()) {
                XMPNode xMPNode4 = (XMPNode) itIterateChildren2.next();
                Iterator itIterateChildren3 = xMPNode2.iterateChildren();
                while (true) {
                    if (!itIterateChildren3.hasNext()) {
                        z = false;
                        break;
                    }
                    if (itemValuesMatch(xMPNode4, (XMPNode) itIterateChildren3.next())) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    return false;
                }
            }
        }
        return true;
    }

    private static void checkSeparator(String str) throws XMPException {
        boolean z = false;
        for (int i = 0; i < str.length(); i++) {
            int iClassifyCharacter = classifyCharacter(str.charAt(i));
            if (iClassifyCharacter == 3) {
                if (z) {
                    throw new XMPException("Separator can have only one semicolon", 4);
                }
                z = true;
            } else if (iClassifyCharacter != 1) {
                throw new XMPException("Separator can have only spaces and one semicolon", 4);
            }
        }
        if (!z) {
            throw new XMPException("Separator must have one semicolon", 4);
        }
    }

    private static char checkQuotes(String str, char c2) throws XMPException {
        char cCharAt;
        if (classifyCharacter(c2) != 4) {
            throw new XMPException("Invalid quoting character", 4);
        }
        if (str.length() == 1) {
            cCharAt = c2;
        } else {
            cCharAt = str.charAt(1);
            if (classifyCharacter(cCharAt) != 4) {
                throw new XMPException("Invalid quoting character", 4);
            }
        }
        if (cCharAt != getClosingQuote(c2)) {
            throw new XMPException("Mismatched quote pair", 4);
        }
        return cCharAt;
    }

    private static int classifyCharacter(char c2) {
        if (SPACES.indexOf(c2) >= 0 || (8192 <= c2 && c2 <= 8203)) {
            return 1;
        }
        if (COMMAS.indexOf(c2) >= 0) {
            return 2;
        }
        if (SEMICOLA.indexOf(c2) >= 0) {
            return 3;
        }
        if (QUOTES.indexOf(c2) >= 0 || ((12296 <= c2 && c2 <= 12303) || (8216 <= c2 && c2 <= 8223))) {
            return 4;
        }
        if (c2 < ' ' || CONTROLS.indexOf(c2) >= 0) {
            return 5;
        }
        return 0;
    }

    private static char getClosingQuote(char c2) {
        switch (c2) {
            case '\"':
                return '\"';
            case 171:
                return (char) 187;
            case 187:
                return (char) 171;
            case 8213:
                return (char) 8213;
            case 8216:
                return (char) 8217;
            case 8218:
                return (char) 8219;
            case 8220:
                return (char) 8221;
            case 8222:
                return (char) 8223;
            case 8249:
                return (char) 8250;
            case 8250:
                return (char) 8249;
            case 12296:
                return (char) 12297;
            case 12298:
                return (char) 12299;
            case 12300:
                return (char) 12301;
            case 12302:
                return (char) 12303;
            case 12317:
                return (char) 12319;
            default:
                return (char) 0;
        }
    }

    private static String applyQuotes(String str, char c2, char c3, boolean z) {
        if (str == null) {
            str = "";
        }
        int i = 0;
        boolean z2 = false;
        while (i < str.length()) {
            int iClassifyCharacter = classifyCharacter(str.charAt(i));
            if (i == 0 && iClassifyCharacter == 4) {
                break;
            }
            if (iClassifyCharacter == 1) {
                if (z2) {
                    break;
                }
                z2 = true;
                i++;
            } else {
                if (iClassifyCharacter == 3 || iClassifyCharacter == 5 || (iClassifyCharacter == 2 && !z)) {
                    break;
                }
                z2 = false;
                i++;
            }
        }
        if (i < str.length()) {
            StringBuffer stringBuffer = new StringBuffer(str.length() + 2);
            int i2 = 0;
            while (i2 <= i && classifyCharacter(str.charAt(i)) != 4) {
                i2++;
            }
            stringBuffer.append(c2).append(str.substring(0, i2));
            for (int i3 = i2; i3 < str.length(); i3++) {
                stringBuffer.append(str.charAt(i3));
                if (classifyCharacter(str.charAt(i3)) == 4 && isSurroundingQuote(str.charAt(i3), c2, c3)) {
                    stringBuffer.append(str.charAt(i3));
                }
            }
            stringBuffer.append(c3);
            return stringBuffer.toString();
        }
        return str;
    }

    private static boolean isSurroundingQuote(char c2, char c3, char c4) {
        return c2 == c3 || isClosingingQuote(c2, c3, c4);
    }

    private static boolean isClosingingQuote(char c2, char c3, char c4) {
        return c2 == c4 || (c3 == 12317 && c2 == 12318) || c2 == 12319;
    }
}
