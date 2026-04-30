package com.google.gdata.util;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import com.google.gdata.util.common.xml.parsing.SecureGenericXMLFactory;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Stack;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.apache.commons.io.IOUtils;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.ParserAdapter;

/* JADX INFO: loaded from: classes3.dex */
public class XmlParser extends DefaultHandler {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Logger logger;
    private static SAXParserFactory parserFactory;
    ElementHandler curHandler;
    Locator locator;
    protected String rootElementName;
    protected ElementHandler rootHandler;
    protected String rootNamespace;
    int unrecognizedElements = 0;
    protected HashMap<String, Stack<NamespaceDecl>> namespaceMap = new HashMap<>();
    ArrayList<XmlNamespace> elementNamespaces = new ArrayList<>();

    static {
        $assertionsDisabled = !XmlParser.class.desiredAssertionStatus();
        logger = Logger.getLogger(XmlParser.class.getName());
    }

    private static SAXParserFactory getSAXParserFactory() throws ParserConfigurationException, SAXException {
        SAXParserFactory sAXParserFactoryNewInstance;
        try {
            sAXParserFactoryNewInstance = SecureGenericXMLFactory.getSAXParserFactory(SAXParserFactory.newInstance());
            sAXParserFactoryNewInstance.newSAXParser();
        } catch (ParserConfigurationException e2) {
            sAXParserFactoryNewInstance = SAXParserFactory.newInstance();
        }
        sAXParserFactoryNewInstance.setNamespaceAware(true);
        return sAXParserFactoryNewInstance;
    }

    public class ElementHandler {
        static final /* synthetic */ boolean $assertionsDisabled;
        private StringBuilder buffer;
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

        public ElementHandler getChildHandler(String str, String str2, String str3, Attributes attributes, List<XmlNamespace> list) throws ParseException, IOException {
            return getChildHandler(str, str3, attributes);
        }

        public ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (this.xmlBlob != null) {
                XmlParser.logger.fine("No child handler for " + str2 + ". Treating as arbitrary foreign XML.");
                return null;
            }
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.unrecognizedElement);
            parseException.setInternalReason("Unrecognized element '" + str2 + "'.");
            throw parseException;
        }

        public void processAttribute(String str, String str2, String str3, String str4) throws ParseException {
            processAttribute(str, str3, str4);
        }

        public void processAttribute(String str, String str2, String str3) throws ParseException {
        }

        public void processEndElement() throws ParseException {
            if (this.value != null && !this.value.trim().equals("") && !this.mixedContent) {
                throw new ParseException(CoreErrorDomain.ERR.textNotAllowed);
            }
        }

        public void initializeXmlBlob(XmlBlob xmlBlob, boolean z, boolean z2) {
            if (!$assertionsDisabled && !this.okToInitializeXmlBlob) {
                throw new AssertionError();
            }
            this.xmlBlob = xmlBlob;
            this.mixedContent = z;
            this.innerXmlStringWriter = new StringWriter();
            try {
                this.innerXml = new XmlWriter(this.innerXmlStringWriter);
                this.fullTextIndex = z2;
                if (z2) {
                    this.fullTextIndexWriter = new StringWriter();
                }
            } catch (IOException e2) {
                throw new AssertionError(e2);
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

    public void parse(Reader reader, ElementHandler elementHandler, String str, String str2) throws ParseException, IOException {
        InputSource inputSource = new InputSource(reader);
        this.rootHandler = elementHandler;
        this.rootNamespace = str;
        this.rootElementName = str2;
        parse(inputSource);
    }

    public void parse(InputStream inputStream, ElementHandler elementHandler, String str, String str2) throws ParseException, IOException {
        InputSource inputSource = new InputSource(inputStream);
        this.rootHandler = elementHandler;
        this.rootNamespace = str;
        this.rootElementName = str2;
        parse(inputSource);
    }

    public void parse(ElementHandler elementHandler, String str, String str2) throws ParseException, IOException {
        throw new IllegalStateException("No content source defined");
    }

    protected void parse(InputSource inputSource) throws ParseException, IOException {
        try {
            if (parserFactory == null) {
                parserFactory = getSAXParserFactory();
            }
            ParserAdapter parserAdapter = new ParserAdapter(parserFactory.newSAXParser().getParser());
            parserAdapter.setContentHandler(this);
            parserAdapter.parse(inputSource);
        } catch (ParserConfigurationException e2) {
            LogUtils.logException(logger, Level.WARNING, null, e2);
            throw new ParseException(e2);
        } catch (SAXException e3) {
            Exception exception = e3.getException();
            if (exception instanceof ParseException) {
                throwParseException((ParseException) exception);
            } else {
                if (exception instanceof IOException) {
                    LogUtils.logException(logger, Level.WARNING, null, e3);
                    throw ((IOException) exception);
                }
                LogUtils.logException(logger, Level.FINE, null, e3);
                throw new ParseException(e3);
            }
        }
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
        } else if (this.unrecognizedElements == 0) {
            try {
                this.curHandler = this.curHandler.getChildHandler(str, str3, str2, attributes, this.elementNamespaces);
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
            try {
                for (int length = attributes.getLength() - 1; length >= 0; length--) {
                    String uri = attributes.getURI(length);
                    String localName = attributes.getLocalName(length);
                    String value = attributes.getValue(length);
                    if (uri.equals("http://www.w3.org/XML/1998/namespace")) {
                        if (localName.equals("lang")) {
                            this.curHandler.xmlLang = value;
                            logger.finer("xml:lang=" + value);
                        } else if (localName.equals("base")) {
                            this.curHandler.xmlBase = getCumulativeXmlBase(this.curHandler.xmlBase, value);
                            logger.finer("xml:base=" + this.curHandler.xmlBase);
                        }
                    }
                }
                for (int length2 = attributes.getLength() - 1; length2 >= 0; length2--) {
                    String uri2 = attributes.getURI(length2);
                    String qName = attributes.getQName(length2);
                    String localName2 = attributes.getLocalName(length2);
                    String value2 = attributes.getValue(length2);
                    logger.finer("Attribute " + localName2 + "='" + value2 + "'");
                    this.curHandler.processAttribute(uri2, qName, localName2, value2);
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
            } catch (ParseException e4) {
                throw new SAXException(e4);
            } catch (NumberFormatException e5) {
                throw new SAXException(new ParseException("Invalid integer format. " + e5.getMessage()));
            } catch (URISyntaxException e6) {
                throw new SAXException(new ParseException(e6.getMessage()));
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
                for (int length3 = attributes.getLength() - 1; length3 >= 0; length3--) {
                    String qName2 = attributes.getQName(length3);
                    ensureBlobNamespace(this.curHandler, qName2);
                    String value3 = attributes.getValue(length3);
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
                    this.curHandler.buffer = new StringBuilder();
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

    private void ensureBlobNamespace(ElementHandler elementHandler, String str) throws SAXException {
        NamespaceDecl namespaceDeclPeek;
        String strSubstring = str.substring(0, Math.max(0, str.indexOf(":")));
        if (!strSubstring.equals("xml")) {
            Stack<NamespaceDecl> stack = this.namespaceMap.get(strSubstring);
            if (stack == null || stack.size() == 0) {
                namespaceDeclPeek = null;
            } else {
                namespaceDeclPeek = stack.peek();
            }
            if (namespaceDeclPeek == null && strSubstring.length() != 0) {
                throw new SAXException(new ParseException("Undeclared namespace prefix: " + strSubstring));
            }
            if (namespaceDeclPeek != null && !namespaceDeclPeek.inBlob && namespaceDeclPeek.ns != null && !elementHandler.blobNamespaces.contains(strSubstring)) {
                elementHandler.blobNamespaces.add(strSubstring);
                elementHandler.xmlBlob.namespaces.add(new XmlNamespace(strSubstring, namespaceDeclPeek.ns.getUri()));
            }
        }
    }
}
