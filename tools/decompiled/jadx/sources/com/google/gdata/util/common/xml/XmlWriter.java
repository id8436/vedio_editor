package com.google.gdata.util.common.xml;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.google.gdata.data.analytics.Engagement;
import com.google.gdata.data.appsforyourdomain.migration.Rfc822Msg;
import com.google.gdata.util.common.base.StringUtil;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EmptyStackException;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Stack;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes.dex */
public class XmlWriter {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String INDENTATION_UNIT = "\t";
    private String defaultNamespace;
    private final Stack<Element> elementStack;
    protected String encoding;
    protected final Set<WriterFlags> flags;
    private String nextDefaultNamespace;
    private Boolean standalone;
    protected final Writer writer;

    /* JADX INFO: loaded from: classes3.dex */
    public enum WriterFlags {
        WRITE_HEADER,
        EXPAND_EMPTY,
        PRETTY_PRINT
    }

    static {
        $assertionsDisabled = !XmlWriter.class.desiredAssertionStatus();
    }

    @Deprecated
    public final class Namespace extends XmlNamespace {
        public Namespace(String str, String str2) {
            super(str, str2);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class Attribute {
        public final String name;
        public final String nsAlias;
        public final String value;

        public Attribute(String str, String str2) {
            this(null, str, str2);
        }

        public Attribute(String str, String str2, String str3) {
            int iIndexOf;
            if (str == null && (iIndexOf = str2.indexOf(58)) > 0) {
                str = str2.substring(0, iIndexOf);
                str2 = str2.substring(iIndexOf + 1);
            }
            this.nsAlias = str;
            this.name = str2;
            this.value = str3;
        }

        public Attribute(String str, boolean z) {
            this(null, str, z ? "true" : "false");
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class Element {
        public static final int NOT_REPEATING = -1;
        public String enclosingDefaultNamespace;
        public boolean hasAttributes;
        public final String name;
        public String nsAlias;
        public final String nsUri;
        public boolean openTagEnded;
        public boolean unformattedChildren;
        public String xmlLang;
        public int repeatingCount = -1;
        public int repeatingIndex = -1;
        public List<XmlNamespace> nsDecls = new ArrayList();

        protected Element(String str, String str2, String str3) {
            this.nsAlias = str;
            this.nsUri = str2;
            this.name = str3;
        }

        public void addNamespace(XmlNamespace xmlNamespace) {
            if (!this.nsDecls.contains(xmlNamespace)) {
                this.nsDecls.add(xmlNamespace);
            }
        }
    }

    public XmlWriter(Writer writer, Set<WriterFlags> set, String str, boolean z) throws IOException {
        this(writer, set, str);
        this.standalone = Boolean.valueOf(z);
    }

    public XmlWriter(Writer writer, Set<WriterFlags> set, String str) throws IOException {
        this.writer = writer;
        this.flags = set == null ? EnumSet.noneOf(WriterFlags.class) : set;
        this.encoding = str;
        this.elementStack = new Stack<>();
        Element elementCreateElement = createElement(null, null, null);
        elementCreateElement.openTagEnded = true;
        this.elementStack.push(elementCreateElement);
    }

    public XmlWriter(Writer writer) throws IOException {
        this(writer, null, null);
    }

    public XmlWriter(Writer writer, String str) throws IOException {
        this(writer, EnumSet.of(WriterFlags.WRITE_HEADER), str);
    }

    @Deprecated
    public XmlWriter(Writer writer, boolean z) throws IOException {
        this(writer, EnumSet.of(WriterFlags.WRITE_HEADER), null);
    }

    public void close() throws IOException {
        this.writer.close();
    }

    public void flush() throws IOException {
        this.writer.flush();
    }

    public void setDefaultNamespace(XmlNamespace xmlNamespace) {
        if (!xmlNamespace.uri.equals(this.defaultNamespace)) {
            this.nextDefaultNamespace = xmlNamespace.uri;
        }
    }

    protected Element createElement(String str, String str2, String str3) {
        return new Element(str, str2, str3);
    }

    protected Element currentElement() {
        try {
            return this.elementStack.peek();
        } catch (EmptyStackException e2) {
            return null;
        }
    }

    protected Element parentElement() {
        return this.elementStack.get((this.elementStack.size() - 1) - 1);
    }

    public void startElement(String str) throws IOException {
        startElement(null, str, null, null);
    }

    public void startElement(XmlNamespace xmlNamespace, String str, Collection<Attribute> collection, Collection<? extends XmlNamespace> collection2) throws IOException {
        Element elementCreateElement;
        if (this.elementStack.size() == 1) {
            writeBeginOutput();
            if (shouldWriteHeaderAndFooter()) {
                writeHeader(this.encoding);
            }
        }
        endOpenTag();
        if (xmlNamespace != null) {
            elementCreateElement = createElement(xmlNamespace.alias, xmlNamespace.uri, str);
        } else {
            elementCreateElement = createElement(null, null, str);
        }
        Element elementCurrentElement = currentElement();
        if (elementCurrentElement != null) {
            elementCreateElement.xmlLang = elementCurrentElement.xmlLang;
            elementCreateElement.unformattedChildren = elementCurrentElement.unformattedChildren;
            if (elementCurrentElement.repeatingCount != -1) {
                int i = elementCurrentElement.repeatingCount;
                elementCurrentElement.repeatingCount = i + 1;
                elementCreateElement.repeatingIndex = i;
            }
        }
        this.elementStack.push(elementCreateElement);
        if (this.nextDefaultNamespace != null) {
            XmlNamespace xmlNamespace2 = new XmlNamespace(this.nextDefaultNamespace);
            this.defaultNamespace = this.nextDefaultNamespace;
            elementCreateElement.addNamespace(xmlNamespace2);
            this.nextDefaultNamespace = null;
        }
        if (collection2 != null) {
            Iterator<? extends XmlNamespace> it = collection2.iterator();
            while (it.hasNext()) {
                ensureNamespace(it.next());
            }
        }
        if (xmlNamespace != null) {
            elementCreateElement.nsAlias = ensureNamespace(xmlNamespace);
        }
        writeOpenTagStart(elementCreateElement.nsAlias, str);
        for (XmlNamespace xmlNamespace3 : elementCreateElement.nsDecls) {
            if (xmlNamespace3.alias != null && xmlNamespace3.alias.length() > 0) {
                writeAttribute("xmlns", xmlNamespace3.alias, xmlNamespace3.uri);
            } else {
                writeAttribute(null, "xmlns", xmlNamespace3.uri);
            }
        }
        if (collection != null) {
            for (Attribute attribute : collection) {
                if (attribute.name.equals("lang") && "xml".equals(attribute.nsAlias)) {
                    if (!attribute.value.equals(elementCreateElement.xmlLang)) {
                        elementCreateElement.xmlLang = attribute.value;
                    }
                }
                writeAttribute(attribute.nsAlias, attribute.name, attribute.value);
            }
        }
        if (this.flags.contains(WriterFlags.EXPAND_EMPTY)) {
            endOpenTag();
        }
    }

    protected boolean shouldWriteHeaderAndFooter() {
        return (!this.flags.contains(WriterFlags.WRITE_HEADER) && this.encoding == null && this.standalone == null) ? false : true;
    }

    protected void endOpenTag() throws IOException {
        Element elementCurrentElement = currentElement();
        if (!elementCurrentElement.openTagEnded) {
            writeOpenTagEnd();
            elementCurrentElement.openTagEnded = true;
        }
    }

    public void endElement(XmlNamespace xmlNamespace, String str) throws IOException {
        Element elementCurrentElement = currentElement();
        if (!$assertionsDisabled && xmlNamespace != null && !elementCurrentElement.nsUri.equals(xmlNamespace.uri)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !elementCurrentElement.name.equals(str)) {
            throw new AssertionError();
        }
        endElement();
    }

    public void endElement() throws IOException {
        Element elementCurrentElement = currentElement();
        writeCloseTag(elementCurrentElement.nsAlias, elementCurrentElement.name);
        this.defaultNamespace = elementCurrentElement.enclosingDefaultNamespace;
        this.elementStack.pop();
        if (this.elementStack.size() == 1) {
            if (shouldWriteHeaderAndFooter()) {
                writeFooter();
            }
            writeEndOutput();
        }
    }

    public void simpleElement(String str, String str2) throws IOException {
        simpleElement(null, str, null, str2);
    }

    public void startRepeatingElement() throws IOException {
        Element elementCurrentElement = currentElement();
        if (elementCurrentElement.repeatingCount != -1) {
            throw new IllegalStateException("Existing repeating element is active");
        }
        elementCurrentElement.repeatingCount = 0;
    }

    public void endRepeatingElement() throws IOException {
        currentElement().repeatingCount = -1;
    }

    public void simpleElement(XmlNamespace xmlNamespace, String str, List<Attribute> list, String str2) throws IOException {
        startElement(xmlNamespace, str, list, null);
        characters(str2);
        endElement(xmlNamespace, str);
    }

    private String checkNamespace(String str) {
        for (int size = this.elementStack.size() - 1; size >= 0; size--) {
            for (XmlNamespace xmlNamespace : this.elementStack.get(size).nsDecls) {
                if (xmlNamespace.alias != null && xmlNamespace.uri.equals(str)) {
                    return xmlNamespace.alias;
                }
            }
        }
        return null;
    }

    private boolean isPrettyPrintingEnabled() {
        return this.flags.contains(WriterFlags.PRETTY_PRINT) && !currentElement().unformattedChildren;
    }

    private int getIndentationLevel() {
        return this.elementStack.size() - 2;
    }

    private void writeNewline() throws IOException {
        this.writer.write(IOUtils.LINE_SEPARATOR_UNIX);
    }

    private void writeIndentation() throws IOException {
        writeUnitsOfIndentation(getIndentationLevel());
    }

    private void writeUnitsOfIndentation(int i) throws IOException {
        while (i > 0) {
            this.writer.write(INDENTATION_UNIT);
            i--;
        }
    }

    protected String ensureNamespace(XmlNamespace xmlNamespace) {
        if (xmlNamespace.uri.equals(this.defaultNamespace)) {
            return null;
        }
        String strCheckNamespace = checkNamespace(xmlNamespace.uri);
        if (strCheckNamespace == null) {
            Element elementCurrentElement = currentElement();
            XmlNamespace xmlNamespaceEnsureUniqueNamespaceAlias = ensureUniqueNamespaceAlias(elementCurrentElement, xmlNamespace);
            elementCurrentElement.addNamespace(xmlNamespaceEnsureUniqueNamespaceAlias);
            return xmlNamespaceEnsureUniqueNamespaceAlias.alias;
        }
        return strCheckNamespace;
    }

    private XmlNamespace ensureUniqueNamespaceAlias(Element element, XmlNamespace xmlNamespace) {
        int i;
        boolean z;
        int i2 = 0;
        while (true) {
            Iterator<XmlNamespace> it = element.nsDecls.iterator();
            while (true) {
                if (!it.hasNext()) {
                    i = i2;
                    z = true;
                    break;
                }
                if (xmlNamespace.alias.equals(it.next().alias)) {
                    i = i2 + 1;
                    z = false;
                    xmlNamespace = new XmlNamespace("ns" + String.valueOf(i), xmlNamespace.uri);
                    break;
                }
            }
            if (z) {
                return xmlNamespace;
            }
            i2 = i;
        }
    }

    protected String getNamespaceUri(String str) {
        if (str == null) {
            return this.defaultNamespace;
        }
        for (int size = this.elementStack.size() - 1; size >= 0; size--) {
            for (XmlNamespace xmlNamespace : this.elementStack.get(size).nsDecls) {
                if (xmlNamespace.getAlias().equals(str)) {
                    return xmlNamespace.getUri();
                }
            }
        }
        return null;
    }

    protected void writeBeginOutput() throws IOException {
    }

    protected void writeEndOutput() throws IOException {
    }

    protected void writeHeader(String str) throws IOException {
        this.writer.write("<?xml");
        writeAttribute(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, "1.0");
        if (str != null) {
            writeAttribute(Rfc822Msg.ATTRIBUTE_ENCODING, str);
        }
        if (this.standalone != null) {
            writeAttribute("standalone", this.standalone.booleanValue() ? "yes" : "no");
        }
        this.writer.write("?>");
    }

    protected void writeFooter() throws IOException {
    }

    protected void writeQualifiedName(String str, String str2) throws IOException {
        if (str != null && str.length() > 0) {
            this.writer.write(str);
            this.writer.write(58);
        }
        this.writer.write(str2);
    }

    protected void writeOpenTagStart(String str, String str2) throws IOException {
        if (isPrettyPrintingEnabled()) {
            if (getIndentationLevel() > 0 || this.flags.contains(WriterFlags.WRITE_HEADER)) {
                writeNewline();
            }
            writeIndentation();
        }
        this.writer.write(60);
        writeQualifiedName(str, str2);
    }

    protected void writeOpenTagEnd() throws IOException {
        this.writer.write(62);
    }

    protected void writeCloseTag(String str, String str2) throws IOException {
        if (currentElement().openTagEnded) {
            if (isPrettyPrintingEnabled()) {
                writeNewline();
                writeIndentation();
            }
            this.writer.write("</");
            writeQualifiedName(str, str2);
            this.writer.write(Engagement.Comparison.GT);
            return;
        }
        this.writer.write("/>");
    }

    protected void writeAttribute(String str, String str2) throws IOException {
        writeAttribute(null, str, str2);
    }

    protected void writeAttribute(String str, String str2, String str3) throws IOException {
        this.writer.write(" ");
        writeQualifiedName(str, str2);
        this.writer.write(61);
        this.writer.write(39);
        if (str3 != null) {
            this.writer.write(StringUtil.xmlEscape(str3));
        }
        this.writer.write(39);
    }

    public void characters(String str) throws IOException {
        characters(str, false);
    }

    public void characters(String str, boolean z) throws IOException {
        String strXmlContentEscape;
        if (str != null) {
            endOpenTag();
            currentElement().unformattedChildren = true;
            if (z) {
                strXmlContentEscape = "<![CDATA[" + StringUtil.xmlCDataEscape(str) + "]]>";
            } else {
                strXmlContentEscape = StringUtil.xmlContentEscape(str);
            }
            this.writer.write(strXmlContentEscape);
        }
    }

    public void innerXml(String str) throws IOException {
        if (str != null) {
            writeUnescaped(str);
        }
    }

    public void writeUnescaped(String str) throws IOException {
        endOpenTag();
        currentElement().unformattedChildren = true;
        this.writer.write(str);
    }
}
