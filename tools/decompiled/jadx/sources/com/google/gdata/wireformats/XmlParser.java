package com.google.gdata.wireformats;

import com.google.common.collect.Maps;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.XmlEventSource;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.QName;
import com.google.gdata.model.ValidationContext;
import com.google.gdata.util.LogUtils;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlBlob;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.util.common.base.StringUtil;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.io.IOUtils;
import org.xml.sax.Attributes;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes3.dex */
public class XmlParser extends DefaultHandler implements WireFormatParser {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Logger logger;
    ElementHandler curHandler;
    ArrayList<XmlNamespace> elementNamespaces;
    private final XmlEventSource eventSource;
    Locator locator;
    protected Map<String, Stack<NamespaceDecl>> namespaceMap;
    protected final StreamProperties props;
    protected String rootElementName;
    protected ElementHandler rootHandler;
    protected String rootNamespace;
    int unrecognizedElements;

    static {
        $assertionsDisabled = !XmlParser.class.desiredAssertionStatus();
        logger = Logger.getLogger(XmlParser.class.getName());
    }

    class ElementHandler {
        static final /* synthetic */ boolean $assertionsDisabled;
        private StringBuffer buffer;
        StringWriter fullTextIndexWriter;
        XmlWriter innerXml;
        StringWriter innerXmlStringWriter;
        ElementHandler parent;
        public String qName;
        public String value;
        public String xmlBase;
        public String xmlLang;
        XmlBlob xmlBlob = null;
        boolean okToInitializeXmlBlob = true;
        boolean mixedContent = false;
        boolean fullTextIndex = false;
        Set<String> blobNamespaces = new HashSet();

        static {
            $assertionsDisabled = !XmlParser.class.desiredAssertionStatus();
        }

        ElementHandler() {
        }

        public ElementHandler getChildHandler(QName qName, Attributes attributes, List<XmlNamespace> list) throws ParseException, IOException {
            if (this.xmlBlob != null) {
                XmlParser.logger.fine("No child handler for " + qName.getLocalName() + ". Treating as arbitrary foreign XML.");
                return null;
            }
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.unrecognizedElement);
            parseException.setInternalReason("Unrecognized element '" + qName.getLocalName() + "'.");
            throw parseException;
        }

        public void processAttribute(QName qName, String str) throws ParseException {
        }

        public void processEndElement() throws ParseException {
            if (this.value != null && !this.value.trim().equals("") && !this.mixedContent) {
                throw new ParseException(CoreErrorDomain.ERR.textNotAllowed);
            }
        }

        public void initializeXmlBlob(XmlBlob xmlBlob, boolean z, boolean z2) throws IOException {
            if (!$assertionsDisabled && !this.okToInitializeXmlBlob) {
                throw new AssertionError();
            }
            this.xmlBlob = xmlBlob;
            this.mixedContent = z;
            this.innerXmlStringWriter = new StringWriter();
            this.innerXml = new XmlWriter(this.innerXmlStringWriter);
            this.fullTextIndex = z2;
            if (z2) {
                this.fullTextIndexWriter = new StringWriter();
            }
        }

        public String getAbsoluteUri(String str) throws ParseException {
            try {
                return XmlParser.getCumulativeXmlBase(this.xmlBase, str);
            } catch (URISyntaxException e2) {
                throw new ParseException(e2.getMessage());
            }
        }

        public Boolean getBooleanAttribute(Attributes attributes, String str) throws ParseException {
            String value = attributes.getValue("", str);
            try {
                return parseBooleanValue(value);
            } catch (ParseException e2) {
                ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidAttributeValue);
                parseException.setInternalReason("Invalid value for " + str + " attribute: " + value);
                throw parseException;
            }
        }

        protected Boolean parseBooleanValue(String str) throws ParseException {
            if (str == null) {
                return null;
            }
            if (str.equalsIgnoreCase("false") || str.equals("0")) {
                return Boolean.FALSE;
            }
            if (str.equalsIgnoreCase("true") || str.equals("1")) {
                return Boolean.TRUE;
            }
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidBooleanAttribute);
            parseException.setInternalReason("Invalid value for boolean attribute: " + str);
            throw parseException;
        }
    }

    class NamespaceDecl {
        boolean inBlob;
        XmlNamespace ns;

        private NamespaceDecl(XmlNamespace xmlNamespace) {
            this.ns = xmlNamespace;
        }
    }

    public XmlParser(StreamProperties streamProperties, Reader reader, Charset charset) {
        this(streamProperties, new SaxEventSource(reader));
        Preconditions.checkNotNull(charset, "cs");
    }

    public XmlParser(StreamProperties streamProperties, XmlEventSource xmlEventSource) {
        this.unrecognizedElements = 0;
        this.namespaceMap = Maps.newHashMap();
        this.elementNamespaces = new ArrayList<>();
        Preconditions.checkNotNull(streamProperties, "stream properties");
        Preconditions.checkNotNull(xmlEventSource, "eventSource");
        this.props = streamProperties;
        this.eventSource = xmlEventSource;
    }

    @Override // com.google.gdata.wireformats.WireFormatParser
    public Element parse(Element element) throws ContentValidationException, ParseException, IOException {
        ValidationContext validationContext = new ValidationContext();
        ElementMetadata<?, ?> rootMetadata = this.props.getRootMetadata();
        this.rootHandler = createRootHandler(validationContext, element, rootMetadata);
        QName elementId = rootMetadata == null ? element.getElementId() : rootMetadata.getName();
        XmlNamespace ns = elementId.getNs();
        this.rootNamespace = ns == null ? null : ns.getUri();
        this.rootElementName = elementId.getLocalName();
        try {
            this.eventSource.parse(this);
        } catch (SAXException e2) {
            Exception exception = e2.getException();
            if (exception instanceof ParseException) {
                throwParseException((ParseException) exception);
            } else {
                if (exception instanceof IOException) {
                    LogUtils.logException(logger, Level.WARNING, null, e2);
                    throw ((IOException) exception);
                }
                LogUtils.logException(logger, Level.FINE, null, e2);
                throw new ParseException(e2);
            }
        }
        return element.resolve(rootMetadata);
    }

    protected XmlHandler createRootHandler(ValidationContext validationContext, Element element, ElementMetadata<?, ?> elementMetadata) {
        return new XmlHandler(validationContext, null, element, elementMetadata);
    }

    protected void throwParseException(ParseException parseException) throws ParseException {
        if (this.locator != null) {
            String str = "[Line " + String.valueOf(this.locator.getLineNumber()) + ", Column " + String.valueOf(this.locator.getColumnNumber()) + (this.curHandler != null ? ", element " + this.curHandler.qName : "") + "] ";
            LogUtils.logException(logger, Level.FINE, str, parseException);
            throw new ParseException(str + parseException.getMessage(), parseException);
        }
        LogUtils.logException(logger, Level.FINE, null, parseException);
        throw parseException;
    }

    static String getCumulativeXmlBase(String str, String str2) throws URISyntaxException {
        URI uri = new URI(str2);
        if (str == null || str.equals("")) {
            if (uri.isAbsolute()) {
                return str2;
            }
            throw new URISyntaxException(str2, "No xml:base established--need an absolute URI.");
        }
        URI uriResolve = new URI(str).resolve(uri);
        if ($assertionsDisabled || uriResolve.isAbsolute()) {
            return uriResolve.toString();
        }
        throw new AssertionError();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        logger.fine("Start element " + str3);
        ElementHandler elementHandler = this.curHandler;
        if (this.curHandler == null) {
            if (str.equals(this.rootNamespace) && str2.equals(this.rootElementName)) {
                this.curHandler = this.rootHandler;
            } else if (this.rootElementName != null) {
                throw new SAXException(new ParseException("Invalid root element, expected (namespace uri:local name) of (" + this.rootNamespace + ":" + this.rootElementName + "), found (" + str + ":" + str2));
            }
        } else if (this.curHandler != null && this.unrecognizedElements == 0) {
            try {
                this.curHandler = this.curHandler.getChildHandler(createQName(str3, str, str2), attributes, this.elementNamespaces);
            } catch (ParseException e2) {
                throw new SAXException(e2);
            } catch (IOException e3) {
                throw new SAXException(e3);
            }
        }
        if (this.curHandler != null && this.unrecognizedElements == 0) {
            this.curHandler.parent = elementHandler;
            this.curHandler.qName = str3;
            if (elementHandler != null) {
                this.curHandler.xmlLang = elementHandler.xmlLang;
                this.curHandler.xmlBase = elementHandler.xmlBase;
            }
            for (int i = 0; i < attributes.getLength(); i++) {
                try {
                    String uri = attributes.getURI(i);
                    String localName = attributes.getLocalName(i);
                    String value = attributes.getValue(i);
                    if (uri.equals("http://www.w3.org/XML/1998/namespace")) {
                        if (localName.equals("lang")) {
                            this.curHandler.xmlLang = value;
                            logger.finer("xml:lang=" + value);
                        } else if (localName.equals("base")) {
                            this.curHandler.xmlBase = getCumulativeXmlBase(this.curHandler.xmlBase, value);
                            logger.finer("xml:base=" + this.curHandler.xmlBase);
                        }
                    }
                } catch (ParseException e4) {
                    throw new SAXException(e4);
                } catch (NumberFormatException e5) {
                    throw new SAXException(new ParseException("Invalid integer format. " + e5.getMessage()));
                } catch (URISyntaxException e6) {
                    throw new SAXException(new ParseException(e6.getMessage()));
                }
            }
            for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                String uri2 = attributes.getURI(i2);
                String qName = attributes.getQName(i2);
                String localName2 = attributes.getLocalName(i2);
                String value2 = attributes.getValue(i2);
                logger.finer("Attribute " + localName2 + "='" + value2 + "'");
                this.curHandler.processAttribute(createQName(qName, uri2, localName2), value2);
            }
            this.curHandler.okToInitializeXmlBlob = false;
            if (this.curHandler.xmlBlob != null) {
                if (this.curHandler.xmlLang != null) {
                    this.curHandler.xmlBlob.setLang(this.curHandler.xmlLang);
                }
                if (this.curHandler.xmlBase != null) {
                    this.curHandler.xmlBlob.setBase(this.curHandler.xmlBase);
                }
            }
        } else {
            this.unrecognizedElements++;
            Iterator<XmlNamespace> it = this.elementNamespaces.iterator();
            while (it.hasNext()) {
                Stack<NamespaceDecl> stack = this.namespaceMap.get(it.next().getAlias());
                if (stack != null && stack.size() > 0) {
                    stack.peek().inBlob = true;
                }
            }
            if (this.curHandler == null) {
                this.curHandler = elementHandler;
            }
            if (this.curHandler != null && this.curHandler.innerXml != null) {
                ArrayList arrayList = new ArrayList(attributes.getLength());
                for (int length = attributes.getLength() - 1; length >= 0; length--) {
                    String qName2 = attributes.getQName(length);
                    ensureBlobNamespace(this.curHandler, qName2);
                    String value3 = attributes.getValue(length);
                    arrayList.add(new XmlWriter.Attribute(qName2, value3));
                    if (this.curHandler.fullTextIndex) {
                        this.curHandler.fullTextIndexWriter.write(value3);
                        this.curHandler.fullTextIndexWriter.write(" ");
                    }
                }
                try {
                    ensureBlobNamespace(this.curHandler, str3);
                    this.curHandler.innerXml.startElement(null, str3, arrayList, this.elementNamespaces);
                } catch (IOException e7) {
                    throw new SAXException(e7);
                }
            }
        }
        this.elementNamespaces.clear();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        logger.fine("End element " + str3);
        if (this.unrecognizedElements > 0) {
            this.unrecognizedElements--;
            if (this.curHandler != null && this.curHandler.innerXml != null) {
                try {
                    this.curHandler.innerXml.endElement();
                    return;
                } catch (IOException e2) {
                    throw new SAXException(e2);
                }
            }
            return;
        }
        if (this.curHandler != null) {
            if (this.curHandler.xmlBlob != null) {
                StringBuffer buffer = this.curHandler.innerXmlStringWriter.getBuffer();
                if (buffer.length() != 0) {
                    this.curHandler.xmlBlob.setBlob(buffer.toString());
                    if (this.curHandler.fullTextIndex) {
                        this.curHandler.xmlBlob.setFullText(this.curHandler.fullTextIndexWriter.toString());
                    }
                }
            }
            try {
                if (this.curHandler.buffer != null) {
                    this.curHandler.value = this.curHandler.buffer.toString();
                    this.curHandler.buffer = null;
                }
                this.curHandler.processEndElement();
                this.curHandler = this.curHandler.parent;
            } catch (ParseException e3) {
                throw new SAXException(e3);
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        if (this.curHandler != null) {
            if (this.unrecognizedElements == 0) {
                if (this.curHandler.buffer == null) {
                    this.curHandler.buffer = new StringBuffer();
                }
                this.curHandler.buffer.append(cArr, i, i2);
            }
            if (this.curHandler.innerXml != null) {
                if (this.curHandler.mixedContent || this.unrecognizedElements > 0) {
                    if (this.curHandler.fullTextIndex) {
                        this.curHandler.fullTextIndexWriter.write(cArr, i, i2);
                        this.curHandler.fullTextIndexWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
                    }
                    try {
                        this.curHandler.innerXml.characters(new String(cArr, i, i2));
                    } catch (IOException e2) {
                        throw new SAXException(e2);
                    }
                }
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        if (this.curHandler == null || this.curHandler.innerXml == null) {
            return;
        }
        if (this.curHandler.mixedContent || this.unrecognizedElements > 0) {
            try {
                this.curHandler.innerXml.writeUnescaped(new String(cArr, i, i2));
            } catch (IOException e2) {
                throw new SAXException(e2);
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this.locator = locator;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) {
        Stack<NamespaceDecl> stack = this.namespaceMap.get(str);
        if (stack == null) {
            stack = new Stack<>();
            this.namespaceMap.put(str, stack);
        }
        XmlNamespace xmlNamespace = new XmlNamespace(str, str2);
        stack.push(new NamespaceDecl(xmlNamespace));
        this.elementNamespaces.add(xmlNamespace);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) {
        this.namespaceMap.get(str).pop();
    }

    private void ensureBlobNamespace(ElementHandler elementHandler, String str) {
        NamespaceDecl namespaceDeclPeek;
        String strSubstring = str.substring(0, Math.max(0, str.indexOf(":")));
        if (!strSubstring.equals("xml")) {
            Stack<NamespaceDecl> stack = this.namespaceMap.get(strSubstring);
            if (stack == null) {
                namespaceDeclPeek = null;
            } else {
                namespaceDeclPeek = stack.peek();
            }
            if (!$assertionsDisabled && strSubstring.length() != 0 && namespaceDeclPeek == null) {
                throw new AssertionError("Namespace alias '" + strSubstring + "' should be mapped in 'namespaceMap'.");
            }
            if (namespaceDeclPeek != null && !namespaceDeclPeek.inBlob && namespaceDeclPeek.ns != null && !elementHandler.blobNamespaces.contains(strSubstring)) {
                elementHandler.blobNamespaces.add(strSubstring);
                elementHandler.xmlBlob.getNamespaces().add(new XmlNamespace(strSubstring, namespaceDeclPeek.ns.getUri()));
            }
        }
    }

    private static QName createQName(String str, String str2, String str3) {
        XmlNamespace xmlNamespace;
        if (StringUtil.isEmpty(str2)) {
            xmlNamespace = null;
        } else {
            String[] strArrSplit = str.split(":");
            if (strArrSplit.length == 2) {
                xmlNamespace = new XmlNamespace(strArrSplit[0], str2);
            } else {
                xmlNamespace = new XmlNamespace(null, str2);
            }
        }
        return new QName(xmlNamespace, str3);
    }
}
