package com.adobe.xmp.impl;

import com.adobe.xmp.XMPConst;
import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPMeta;
import com.adobe.xmp.XMPMetaFactory;
import com.adobe.xmp.options.SerializeOptions;
import com.google.gdata.data.analytics.Engagement;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class XMPSerializerRDF {
    private static final int DEFAULT_PAD = 2048;
    private static final String PACKET_HEADER = "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>";
    private static final String PACKET_TRAILER = "<?xpacket end=\"";
    private static final String PACKET_TRAILER2 = "\"?>";
    static final Set RDF_ATTR_QUALIFIER = new HashSet(Arrays.asList(XMPConst.XML_LANG, "rdf:resource", "rdf:ID", "rdf:bagID", "rdf:nodeID"));
    private static final String RDF_EMPTY_STRUCT = "<rdf:Description/>";
    private static final String RDF_RDF_END = "</rdf:RDF>";
    private static final String RDF_RDF_START = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">";
    private static final String RDF_SCHEMA_END = "</rdf:Description>";
    private static final String RDF_SCHEMA_START = "<rdf:Description rdf:about=";
    private static final String RDF_STRUCT_END = "</rdf:Description>";
    private static final String RDF_STRUCT_START = "<rdf:Description";
    private static final String RDF_XMPMETA_END = "</x:xmpmeta>";
    private static final String RDF_XMPMETA_START = "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"";
    private SerializeOptions options;
    private CountOutputStream outputStream;
    private int padding;
    private int unicodeSize = 1;
    private OutputStreamWriter writer;
    private XMPMetaImpl xmp;

    public void serialize(XMPMeta xMPMeta, OutputStream outputStream, SerializeOptions serializeOptions) throws XMPException {
        try {
            this.outputStream = new CountOutputStream(outputStream);
            this.writer = new OutputStreamWriter(this.outputStream, serializeOptions.getEncoding());
            this.xmp = (XMPMetaImpl) xMPMeta;
            this.options = serializeOptions;
            this.padding = serializeOptions.getPadding();
            this.writer = new OutputStreamWriter(this.outputStream, serializeOptions.getEncoding());
            checkOptionsConsistence();
            String strSerializeAsRDF = serializeAsRDF();
            this.writer.flush();
            addPadding(strSerializeAsRDF.length());
            write(strSerializeAsRDF);
            this.writer.flush();
            this.outputStream.close();
        } catch (IOException e2) {
            throw new XMPException("Error writing to the OutputStream", 0);
        }
    }

    private void addPadding(int i) throws XMPException, IOException {
        if (this.options.getExactPacketLength()) {
            int bytesWritten = this.outputStream.getBytesWritten() + (this.unicodeSize * i);
            if (bytesWritten > this.padding) {
                throw new XMPException("Can't fit into specified packet size", 107);
            }
            this.padding -= bytesWritten;
        }
        this.padding /= this.unicodeSize;
        int length = this.options.getNewline().length();
        if (this.padding >= length) {
            this.padding -= length;
            while (this.padding >= length + 100) {
                writeChars(100, ' ');
                writeNewline();
                this.padding -= length + 100;
            }
            writeChars(this.padding, ' ');
            writeNewline();
            return;
        }
        writeChars(this.padding, ' ');
    }

    protected void checkOptionsConsistence() throws XMPException {
        if (this.options.getEncodeUTF16BE() | this.options.getEncodeUTF16LE()) {
            this.unicodeSize = 2;
        }
        if (this.options.getExactPacketLength()) {
            if (this.options.getOmitPacketWrapper() | this.options.getIncludeThumbnailPad()) {
                throw new XMPException("Inconsistent options for exact size serialize", 103);
            }
            if ((this.options.getPadding() & (this.unicodeSize - 1)) != 0) {
                throw new XMPException("Exact size must be a multiple of the Unicode element", 103);
            }
            return;
        }
        if (this.options.getReadOnlyPacket()) {
            if (this.options.getOmitPacketWrapper() | this.options.getIncludeThumbnailPad()) {
                throw new XMPException("Inconsistent options for read-only packet", 103);
            }
            this.padding = 0;
        } else if (this.options.getOmitPacketWrapper()) {
            if (this.options.getIncludeThumbnailPad()) {
                throw new XMPException("Inconsistent options for non-packet serialize", 103);
            }
            this.padding = 0;
        } else {
            if (this.padding == 0) {
                this.padding = this.unicodeSize * 2048;
            }
            if (this.options.getIncludeThumbnailPad() && !this.xmp.doesPropertyExist(XMPConst.NS_XMP, "Thumbnails")) {
                this.padding += this.unicodeSize * 10000;
            }
        }
    }

    private String serializeAsRDF() throws XMPException, IOException {
        int i = 0;
        if (!this.options.getOmitPacketWrapper()) {
            writeIndent(0);
            write(PACKET_HEADER);
            writeNewline();
        }
        if (!this.options.getOmitXmpMetaElement()) {
            writeIndent(0);
            write(RDF_XMPMETA_START);
            if (!this.options.getOmitVersionAttribute()) {
                write(XMPMetaFactory.getVersionInfo().getMessage());
            }
            write("\">");
            writeNewline();
            i = 1;
        }
        writeIndent(i);
        write(RDF_RDF_START);
        writeNewline();
        if (this.options.getUseCanonicalFormat()) {
            serializeCanonicalRDFSchemas(i);
        } else {
            serializeCompactRDFSchemas(i);
        }
        writeIndent(i);
        write(RDF_RDF_END);
        writeNewline();
        if (!this.options.getOmitXmpMetaElement()) {
            writeIndent(i - 1);
            write(RDF_XMPMETA_END);
            writeNewline();
        }
        String str = "";
        if (this.options.getOmitPacketWrapper()) {
            return "";
        }
        for (int baseIndent = this.options.getBaseIndent(); baseIndent > 0; baseIndent--) {
            str = String.valueOf(str) + this.options.getIndent();
        }
        return String.valueOf(String.valueOf(String.valueOf(str) + PACKET_TRAILER) + (this.options.getReadOnlyPacket() ? 'r' : 'w')) + PACKET_TRAILER2;
    }

    private void serializeCanonicalRDFSchemas(int i) throws XMPException, IOException {
        if (this.xmp.getRoot().getChildrenLength() > 0) {
            startOuterRDFDescription(this.xmp.getRoot(), i);
            Iterator itIterateChildren = this.xmp.getRoot().iterateChildren();
            while (itIterateChildren.hasNext()) {
                serializeCanonicalRDFSchema((XMPNode) itIterateChildren.next(), i);
            }
            endOuterRDFDescription(i);
            return;
        }
        writeIndent(i + 1);
        write(RDF_SCHEMA_START);
        writeTreeName();
        write("/>");
        writeNewline();
    }

    private void writeTreeName() throws IOException {
        write(34);
        String name = this.xmp.getRoot().getName();
        if (name != null) {
            appendNodeValue(name, true);
        }
        write(34);
    }

    private void serializeCompactRDFSchemas(int i) throws XMPException, IOException {
        boolean z;
        writeIndent(i + 1);
        write(RDF_SCHEMA_START);
        writeTreeName();
        HashSet hashSet = new HashSet();
        hashSet.add("xml");
        hashSet.add("rdf");
        Iterator itIterateChildren = this.xmp.getRoot().iterateChildren();
        while (itIterateChildren.hasNext()) {
            declareUsedNamespaces((XMPNode) itIterateChildren.next(), hashSet, i + 3);
        }
        boolean zSerializeCompactRDFAttrProps = true;
        Iterator itIterateChildren2 = this.xmp.getRoot().iterateChildren();
        while (true) {
            z = zSerializeCompactRDFAttrProps;
            if (!itIterateChildren2.hasNext()) {
                break;
            } else {
                zSerializeCompactRDFAttrProps = serializeCompactRDFAttrProps((XMPNode) itIterateChildren2.next(), i + 2) & z;
            }
        }
        if (!z) {
            write(62);
            writeNewline();
            Iterator itIterateChildren3 = this.xmp.getRoot().iterateChildren();
            while (itIterateChildren3.hasNext()) {
                serializeCompactRDFElementProps((XMPNode) itIterateChildren3.next(), i + 2);
            }
            writeIndent(i + 1);
            write("</rdf:Description>");
            writeNewline();
            return;
        }
        write("/>");
        writeNewline();
    }

    private boolean serializeCompactRDFAttrProps(XMPNode xMPNode, int i) throws IOException {
        Iterator itIterateChildren = xMPNode.iterateChildren();
        boolean z = true;
        while (itIterateChildren.hasNext()) {
            XMPNode xMPNode2 = (XMPNode) itIterateChildren.next();
            if (canBeRDFAttrProp(xMPNode2)) {
                writeNewline();
                writeIndent(i);
                write(xMPNode2.getName());
                write("=\"");
                appendNodeValue(xMPNode2.getValue(), true);
                write(34);
            } else {
                z = false;
            }
        }
        return z;
    }

    private void serializeCompactRDFElementProps(XMPNode xMPNode, int i) throws XMPException, IOException {
        boolean zSerializeCompactRDFStructProp;
        boolean zBooleanValue;
        Iterator itIterateChildren = xMPNode.iterateChildren();
        while (itIterateChildren.hasNext()) {
            XMPNode xMPNode2 = (XMPNode) itIterateChildren.next();
            if (!canBeRDFAttrProp(xMPNode2)) {
                String name = xMPNode2.getName();
                String str = XMPConst.ARRAY_ITEM_NAME.equals(name) ? "rdf:li" : name;
                writeIndent(i);
                write(60);
                write(str);
                Iterator itIterateQualifier = xMPNode2.iterateQualifier();
                boolean zEquals = false;
                boolean z = false;
                while (itIterateQualifier.hasNext()) {
                    XMPNode xMPNode3 = (XMPNode) itIterateQualifier.next();
                    if (RDF_ATTR_QUALIFIER.contains(xMPNode3.getName())) {
                        zEquals = "rdf:resource".equals(xMPNode3.getName());
                        write(32);
                        write(xMPNode3.getName());
                        write("=\"");
                        appendNodeValue(xMPNode3.getValue(), true);
                        write(34);
                    } else {
                        z = true;
                    }
                }
                if (z) {
                    serializeCompactRDFGeneralQualifier(i, xMPNode2);
                    zBooleanValue = true;
                    zSerializeCompactRDFStructProp = true;
                } else if (!xMPNode2.getOptions().isCompositeProperty()) {
                    Object[] objArrSerializeCompactRDFSimpleProp = serializeCompactRDFSimpleProp(xMPNode2);
                    zSerializeCompactRDFStructProp = ((Boolean) objArrSerializeCompactRDFSimpleProp[0]).booleanValue();
                    zBooleanValue = ((Boolean) objArrSerializeCompactRDFSimpleProp[1]).booleanValue();
                } else if (xMPNode2.getOptions().isArray()) {
                    serializeCompactRDFArrayProp(xMPNode2, i);
                    zBooleanValue = true;
                    zSerializeCompactRDFStructProp = true;
                } else {
                    zSerializeCompactRDFStructProp = serializeCompactRDFStructProp(xMPNode2, i, zEquals);
                    zBooleanValue = true;
                }
                if (zSerializeCompactRDFStructProp) {
                    if (zBooleanValue) {
                        writeIndent(i);
                    }
                    write("</");
                    write(str);
                    write(62);
                    writeNewline();
                }
            }
        }
    }

    private Object[] serializeCompactRDFSimpleProp(XMPNode xMPNode) throws IOException {
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.TRUE;
        if (xMPNode.getOptions().isURI()) {
            write(" rdf:resource=\"");
            appendNodeValue(xMPNode.getValue(), true);
            write("\"/>");
            writeNewline();
            bool = Boolean.FALSE;
        } else if (xMPNode.getValue() == null || xMPNode.getValue().length() == 0) {
            write("/>");
            writeNewline();
            bool = Boolean.FALSE;
        } else {
            write(62);
            appendNodeValue(xMPNode.getValue(), false);
            bool2 = Boolean.FALSE;
        }
        return new Object[]{bool, bool2};
    }

    private void serializeCompactRDFArrayProp(XMPNode xMPNode, int i) throws XMPException, IOException {
        write(62);
        writeNewline();
        emitRDFArrayTag(xMPNode, true, i + 1);
        if (xMPNode.getOptions().isArrayAltText()) {
            XMPNodeUtils.normalizeLangArray(xMPNode);
        }
        serializeCompactRDFElementProps(xMPNode, i + 2);
        emitRDFArrayTag(xMPNode, false, i + 1);
    }

    private boolean serializeCompactRDFStructProp(XMPNode xMPNode, int i, boolean z) throws XMPException, IOException {
        boolean z2;
        boolean z3;
        Iterator itIterateChildren = xMPNode.iterateChildren();
        boolean z4 = false;
        boolean z5 = false;
        while (true) {
            if (!itIterateChildren.hasNext()) {
                z2 = z4;
                z3 = z5;
                break;
            }
            if (canBeRDFAttrProp((XMPNode) itIterateChildren.next())) {
                z2 = z4;
                z3 = true;
            } else {
                z2 = true;
                z3 = z5;
            }
            if (z3 && z2) {
                break;
            }
            z5 = z3;
            z4 = z2;
        }
        if (z && z2) {
            throw new XMPException("Can't mix rdf:resource qualifier and element fields", 202);
        }
        if (!xMPNode.hasChildren()) {
            write(" rdf:parseType=\"Resource\"/>");
            writeNewline();
            return false;
        }
        if (!z2) {
            serializeCompactRDFAttrProps(xMPNode, i + 1);
            write("/>");
            writeNewline();
            return false;
        }
        if (!z3) {
            write(" rdf:parseType=\"Resource\">");
            writeNewline();
            serializeCompactRDFElementProps(xMPNode, i + 1);
            return true;
        }
        write(62);
        writeNewline();
        writeIndent(i + 1);
        write(RDF_STRUCT_START);
        serializeCompactRDFAttrProps(xMPNode, i + 2);
        write(Engagement.Comparison.GT);
        writeNewline();
        serializeCompactRDFElementProps(xMPNode, i + 1);
        writeIndent(i + 1);
        write("</rdf:Description>");
        writeNewline();
        return true;
    }

    private void serializeCompactRDFGeneralQualifier(int i, XMPNode xMPNode) throws XMPException, IOException {
        write(" rdf:parseType=\"Resource\">");
        writeNewline();
        serializeCanonicalRDFProperty(xMPNode, false, true, i + 1);
        Iterator itIterateQualifier = xMPNode.iterateQualifier();
        while (itIterateQualifier.hasNext()) {
            serializeCanonicalRDFProperty((XMPNode) itIterateQualifier.next(), false, false, i + 1);
        }
    }

    private void serializeCanonicalRDFSchema(XMPNode xMPNode, int i) throws XMPException, IOException {
        Iterator itIterateChildren = xMPNode.iterateChildren();
        while (itIterateChildren.hasNext()) {
            serializeCanonicalRDFProperty((XMPNode) itIterateChildren.next(), this.options.getUseCanonicalFormat(), false, i + 2);
        }
    }

    private void declareUsedNamespaces(XMPNode xMPNode, Set set, int i) throws IOException {
        if (xMPNode.getOptions().isSchemaNode()) {
            declareNamespace(xMPNode.getValue().substring(0, xMPNode.getValue().length() - 1), xMPNode.getName(), set, i);
        } else if (xMPNode.getOptions().isStruct()) {
            Iterator itIterateChildren = xMPNode.iterateChildren();
            while (itIterateChildren.hasNext()) {
                declareNamespace(((XMPNode) itIterateChildren.next()).getName(), null, set, i);
            }
        }
        Iterator itIterateChildren2 = xMPNode.iterateChildren();
        while (itIterateChildren2.hasNext()) {
            declareUsedNamespaces((XMPNode) itIterateChildren2.next(), set, i);
        }
        Iterator itIterateQualifier = xMPNode.iterateQualifier();
        while (itIterateQualifier.hasNext()) {
            XMPNode xMPNode2 = (XMPNode) itIterateQualifier.next();
            declareNamespace(xMPNode2.getName(), null, set, i);
            declareUsedNamespaces(xMPNode2, set, i);
        }
    }

    private void declareNamespace(String str, String str2, Set set, int i) throws IOException {
        if (str2 == null) {
            QName qName = new QName(str);
            if (qName.hasPrefix()) {
                str = qName.getPrefix();
                str2 = XMPMetaFactory.getSchemaRegistry().getNamespaceURI(String.valueOf(str) + ":");
                declareNamespace(str, str2, set, i);
            } else {
                return;
            }
        }
        if (!set.contains(str)) {
            writeNewline();
            writeIndent(i);
            write("xmlns:");
            write(str);
            write("=\"");
            write(str2);
            write(34);
            set.add(str);
        }
    }

    private void startOuterRDFDescription(XMPNode xMPNode, int i) throws IOException {
        writeIndent(i + 1);
        write(RDF_SCHEMA_START);
        writeTreeName();
        HashSet hashSet = new HashSet();
        hashSet.add("xml");
        hashSet.add("rdf");
        declareUsedNamespaces(xMPNode, hashSet, i + 3);
        write(62);
        writeNewline();
    }

    private void endOuterRDFDescription(int i) throws IOException {
        writeIndent(i + 1);
        write("</rdf:Description>");
        writeNewline();
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x0276 A[PHI: r13
  0x0276: PHI (r13v4 int) = (r13v1 int), (r13v6 int) binds: [B:71:0x01f9, B:27:0x00b5] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void serializeCanonicalRDFProperty(com.adobe.xmp.impl.XMPNode r10, boolean r11, boolean r12, int r13) throws com.adobe.xmp.XMPException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.xmp.impl.XMPSerializerRDF.serializeCanonicalRDFProperty(com.adobe.xmp.impl.XMPNode, boolean, boolean, int):void");
    }

    private void emitRDFArrayTag(XMPNode xMPNode, boolean z, int i) throws IOException {
        if (z || xMPNode.hasChildren()) {
            writeIndent(i);
            write(z ? "<rdf:" : "</rdf:");
            if (xMPNode.getOptions().isArrayAlternate()) {
                write("Alt");
            } else if (xMPNode.getOptions().isArrayOrdered()) {
                write("Seq");
            } else {
                write("Bag");
            }
            if (z && !xMPNode.hasChildren()) {
                write("/>");
            } else {
                write(Engagement.Comparison.GT);
            }
            writeNewline();
        }
    }

    private void appendNodeValue(String str, boolean z) throws IOException {
        if (str == null) {
            str = "";
        }
        write(Utils.escapeXML(str, z, true));
    }

    private boolean canBeRDFAttrProp(XMPNode xMPNode) {
        return (xMPNode.hasQualifier() || xMPNode.getOptions().isURI() || xMPNode.getOptions().isCompositeProperty() || XMPConst.ARRAY_ITEM_NAME.equals(xMPNode.getName())) ? false : true;
    }

    private void writeIndent(int i) throws IOException {
        for (int baseIndent = this.options.getBaseIndent() + i; baseIndent > 0; baseIndent--) {
            this.writer.write(this.options.getIndent());
        }
    }

    private void write(int i) throws IOException {
        this.writer.write(i);
    }

    private void write(String str) throws IOException {
        this.writer.write(str);
    }

    private void writeChars(int i, char c2) throws IOException {
        while (i > 0) {
            this.writer.write(c2);
            i--;
        }
    }

    private void writeNewline() throws IOException {
        this.writer.write(this.options.getNewline());
    }
}
