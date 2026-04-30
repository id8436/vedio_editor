package org.mortbay.xml;

import com.google.gdata.data.analytics.Engagement;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Stack;
import java.util.StringTokenizer;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;
import org.mortbay.util.URIUtil;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes3.dex */
public class XmlParser {
    private String _dtd;
    private Map _observerMap;
    private SAXParser _parser;
    private String _xpath;
    private Object _xpaths;
    private Map _redirectMap = new HashMap();
    private Stack _observers = new Stack();

    public XmlParser() {
        setValidating(!Boolean.getBoolean("org.mortbay.xml.XmlParser.NotValidating") && Boolean.valueOf(System.getProperty("org.mortbay.xml.XmlParser.Validating", SAXParserFactory.newInstance().getClass().toString().startsWith("org.apache.xerces.") ? "true" : "false")).booleanValue());
    }

    public XmlParser(boolean z) {
        setValidating(z);
    }

    public void setValidating(boolean z) {
        try {
            SAXParserFactory sAXParserFactoryNewInstance = SAXParserFactory.newInstance();
            sAXParserFactoryNewInstance.setValidating(z);
            this._parser = sAXParserFactoryNewInstance.newSAXParser();
            if (z) {
                try {
                    this._parser.getXMLReader().setFeature("http://apache.org/xml/features/validation/schema", z);
                } catch (Exception e2) {
                    if (z) {
                        Log.warn("Schema validation may not be supported: ", (Throwable) e2);
                    } else {
                        Log.ignore(e2);
                    }
                }
            }
            this._parser.getXMLReader().setFeature("http://xml.org/sax/features/validation", z);
            this._parser.getXMLReader().setFeature("http://xml.org/sax/features/namespaces", true);
            this._parser.getXMLReader().setFeature("http://xml.org/sax/features/namespace-prefixes", false);
        } catch (Exception e3) {
            Log.warn(Log.EXCEPTION, (Throwable) e3);
            throw new Error(e3.toString());
        }
    }

    public synchronized void redirectEntity(String str, URL url) {
        if (url != null) {
            this._redirectMap.put(str, url);
        }
    }

    public String getXpath() {
        return this._xpath;
    }

    public void setXpath(String str) {
        this._xpath = str;
        StringTokenizer stringTokenizer = new StringTokenizer(str, "| ");
        while (stringTokenizer.hasMoreTokens()) {
            this._xpaths = LazyList.add(this._xpaths, stringTokenizer.nextToken());
        }
    }

    public String getDTD() {
        return this._dtd;
    }

    public synchronized void addContentHandler(String str, ContentHandler contentHandler) {
        if (this._observerMap == null) {
            this._observerMap = new HashMap();
        }
        this._observerMap.put(str, contentHandler);
    }

    public synchronized Node parse(InputSource inputSource) throws SAXException, IOException {
        Node node;
        this._dtd = null;
        Handler handler = new Handler(this);
        XMLReader xMLReader = this._parser.getXMLReader();
        xMLReader.setContentHandler(handler);
        xMLReader.setErrorHandler(handler);
        xMLReader.setEntityResolver(handler);
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("parsing: sid=").append(inputSource.getSystemId()).append(",pid=").append(inputSource.getPublicId()).toString());
        }
        this._parser.parse(inputSource, handler);
        if (handler._error != null) {
            throw handler._error;
        }
        node = (Node) handler._top.get(0);
        handler.clear();
        return node;
    }

    public synchronized Node parse(String str) throws SAXException, IOException {
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("parse: ").append(str).toString());
        }
        return parse(new InputSource(str));
    }

    public synchronized Node parse(File file) throws SAXException, IOException {
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("parse: ").append(file).toString());
        }
        return parse(new InputSource(file.toURL().toString()));
    }

    public synchronized Node parse(InputStream inputStream) throws SAXException, IOException {
        Node node;
        this._dtd = null;
        Handler handler = new Handler(this);
        XMLReader xMLReader = this._parser.getXMLReader();
        xMLReader.setContentHandler(handler);
        xMLReader.setErrorHandler(handler);
        xMLReader.setEntityResolver(handler);
        this._parser.parse(new InputSource(inputStream), handler);
        if (handler._error != null) {
            throw handler._error;
        }
        node = (Node) handler._top.get(0);
        handler.clear();
        return node;
    }

    class NoopHandler extends DefaultHandler {
        int _depth;
        Handler _next;
        private final XmlParser this$0;

        NoopHandler(XmlParser xmlParser, Handler handler) {
            this.this$0 = xmlParser;
            this._next = handler;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            this._depth++;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            if (this._depth == 0) {
                this.this$0._parser.getXMLReader().setContentHandler(this._next);
            } else {
                this._depth--;
            }
        }
    }

    class Handler extends DefaultHandler {
        SAXParseException _error;
        private NoopHandler _noop;
        private final XmlParser this$0;
        Node _top = new Node(null, null, null);
        private Node _context = this._top;

        Handler(XmlParser xmlParser) {
            this.this$0 = xmlParser;
            this._noop = new NoopHandler(xmlParser, this);
        }

        void clear() {
            this._top = null;
            this._error = null;
            this._context = null;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            String str4 = (str == null || str.equals("")) ? str3 : str2;
            Node node = new Node(this._context, str4, attributes);
            if (this.this$0._xpaths != null) {
                String path = node.getPath();
                int size = LazyList.size(this.this$0._xpaths);
                boolean z = false;
                while (!z) {
                    int i = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    String str5 = (String) LazyList.get(this.this$0._xpaths, i);
                    z = path.equals(str5) || (str5.startsWith(path) && str5.length() > path.length() && str5.charAt(path.length()) == '/');
                    size = i;
                }
                if (!z) {
                    this.this$0._parser.getXMLReader().setContentHandler(this._noop);
                } else {
                    this._context.add(node);
                    this._context = node;
                }
            } else {
                this._context.add(node);
                this._context = node;
            }
            ContentHandler contentHandler = null;
            if (this.this$0._observerMap != null) {
                contentHandler = (ContentHandler) this.this$0._observerMap.get(str4);
            }
            this.this$0._observers.push(contentHandler);
            for (int i2 = 0; i2 < this.this$0._observers.size(); i2++) {
                if (this.this$0._observers.get(i2) != null) {
                    ((ContentHandler) this.this$0._observers.get(i2)).startElement(str, str2, str3, attributes);
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            this._context = this._context._parent;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.this$0._observers.size()) {
                    if (this.this$0._observers.get(i2) != null) {
                        ((ContentHandler) this.this$0._observers.get(i2)).endElement(str, str2, str3);
                    }
                    i = i2 + 1;
                } else {
                    this.this$0._observers.pop();
                    return;
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 < this.this$0._observers.size()) {
                    if (this.this$0._observers.get(i4) != null) {
                        ((ContentHandler) this.this$0._observers.get(i4)).ignorableWhitespace(cArr, i, i2);
                    }
                    i3 = i4 + 1;
                } else {
                    return;
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) throws SAXException {
            this._context.add(new String(cArr, i, i2));
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 < this.this$0._observers.size()) {
                    if (this.this$0._observers.get(i4) != null) {
                        ((ContentHandler) this.this$0._observers.get(i4)).characters(cArr, i, i2);
                    }
                    i3 = i4 + 1;
                } else {
                    return;
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
        public void warning(SAXParseException sAXParseException) {
            Log.debug(Log.EXCEPTION, sAXParseException);
            Log.warn(new StringBuffer().append("WARNING@").append(getLocationString(sAXParseException)).append(" : ").append(sAXParseException.toString()).toString());
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
        public void error(SAXParseException sAXParseException) throws SAXException {
            if (this._error == null) {
                this._error = sAXParseException;
            }
            Log.debug(Log.EXCEPTION, sAXParseException);
            Log.warn(new StringBuffer().append("ERROR@").append(getLocationString(sAXParseException)).append(" : ").append(sAXParseException.toString()).toString());
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
        public void fatalError(SAXParseException sAXParseException) throws SAXException {
            this._error = sAXParseException;
            Log.debug(Log.EXCEPTION, sAXParseException);
            Log.warn(new StringBuffer().append("FATAL@").append(getLocationString(sAXParseException)).append(" : ").append(sAXParseException.toString()).toString());
            throw sAXParseException;
        }

        private String getLocationString(SAXParseException sAXParseException) {
            return new StringBuffer().append(sAXParseException.getSystemId()).append(" line:").append(sAXParseException.getLineNumber()).append(" col:").append(sAXParseException.getColumnNumber()).toString();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.EntityResolver
        public InputSource resolveEntity(String str, String str2) {
            if (Log.isDebugEnabled()) {
                Log.debug(new StringBuffer().append("resolveEntity(").append(str).append(", ").append(str2).append(")").toString());
            }
            if (str2 != null && str2.endsWith(".dtd")) {
                this.this$0._dtd = str2;
            }
            URL url = str != null ? (URL) this.this$0._redirectMap.get(str) : null;
            if (url == null) {
                url = (URL) this.this$0._redirectMap.get(str2);
            }
            if (url == null) {
                String strSubstring = str2.lastIndexOf(47) >= 0 ? str2.substring(str2.lastIndexOf(47) + 1) : str2;
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("Can't exact match entity in redirect map, trying ").append(strSubstring).toString());
                }
                url = (URL) this.this$0._redirectMap.get(strSubstring);
            }
            if (url != null) {
                try {
                    InputStream inputStreamOpenStream = url.openStream();
                    if (Log.isDebugEnabled()) {
                        Log.debug(new StringBuffer().append("Redirected entity ").append(str2).append(" --> ").append(url).toString());
                    }
                    InputSource inputSource = new InputSource(inputStreamOpenStream);
                    inputSource.setSystemId(str2);
                    return inputSource;
                } catch (IOException e2) {
                    Log.ignore(e2);
                }
            }
            return null;
        }
    }

    public class Attribute {
        private String _name;
        private String _value;

        Attribute(String str, String str2) {
            this._name = str;
            this._value = str2;
        }

        public String getName() {
            return this._name;
        }

        public String getValue() {
            return this._value;
        }
    }

    public class Node extends AbstractList {
        private Attribute[] _attrs;
        private boolean _lastString = false;
        private ArrayList _list;
        Node _parent;
        private String _path;
        private String _tag;

        Node(Node node, String str, Attributes attributes) {
            this._parent = node;
            this._tag = str;
            if (attributes != null) {
                this._attrs = new Attribute[attributes.getLength()];
                for (int i = 0; i < attributes.getLength(); i++) {
                    String localName = attributes.getLocalName(i);
                    if (localName == null || localName.equals("")) {
                        localName = attributes.getQName(i);
                    }
                    this._attrs[i] = new Attribute(localName, attributes.getValue(i));
                }
            }
        }

        public Node getParent() {
            return this._parent;
        }

        public String getTag() {
            return this._tag;
        }

        public String getPath() {
            if (this._path == null) {
                if (getParent() != null && getParent().getTag() != null) {
                    this._path = new StringBuffer().append(getParent().getPath()).append(URIUtil.SLASH).append(this._tag).toString();
                } else {
                    this._path = new StringBuffer().append(URIUtil.SLASH).append(this._tag).toString();
                }
            }
            return this._path;
        }

        public Attribute[] getAttributes() {
            return this._attrs;
        }

        public String getAttribute(String str) {
            return getAttribute(str, null);
        }

        public String getAttribute(String str, String str2) {
            if (this._attrs != null && str != null) {
                for (int i = 0; i < this._attrs.length; i++) {
                    if (str.equals(this._attrs[i].getName())) {
                        return this._attrs[i].getValue();
                    }
                }
                return str2;
            }
            return str2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            if (this._list != null) {
                return this._list.size();
            }
            return 0;
        }

        @Override // java.util.AbstractList, java.util.List
        public Object get(int i) {
            if (this._list != null) {
                return this._list.get(i);
            }
            return null;
        }

        public Node get(String str) {
            if (this._list != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= this._list.size()) {
                        break;
                    }
                    Object obj = this._list.get(i2);
                    if (obj instanceof Node) {
                        Node node = (Node) obj;
                        if (str.equals(node._tag)) {
                            return node;
                        }
                    }
                    i = i2 + 1;
                }
            }
            return null;
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, Object obj) {
            if (this._list == null) {
                this._list = new ArrayList();
            }
            if (obj instanceof String) {
                if (this._lastString) {
                    int size = this._list.size() - 1;
                    this._list.set(size, new StringBuffer().append((String) this._list.get(size)).append(obj).toString());
                } else {
                    this._list.add(i, obj);
                }
                this._lastString = true;
                return;
            }
            this._lastString = false;
            this._list.add(i, obj);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            if (this._list != null) {
                this._list.clear();
            }
            this._list = null;
        }

        public String getString(String str, boolean z, boolean z2) {
            Node node = get(str);
            if (node == null) {
                return null;
            }
            String string = node.toString(z);
            if (string != null && z2) {
                return string.trim();
            }
            return string;
        }

        @Override // java.util.AbstractCollection
        public synchronized String toString() {
            return toString(true);
        }

        public synchronized String toString(boolean z) {
            String string;
            StringBuffer stringBuffer = new StringBuffer();
            synchronized (stringBuffer) {
                toString(stringBuffer, z);
                string = stringBuffer.toString();
            }
            return string;
        }

        public synchronized String toString(boolean z, boolean z2) {
            String string;
            string = toString(z);
            if (string != null && z2) {
                string = string.trim();
            }
            return string;
        }

        private synchronized void toString(StringBuffer stringBuffer, boolean z) {
            if (z) {
                stringBuffer.append(Engagement.Comparison.LT);
                stringBuffer.append(this._tag);
                if (this._attrs != null) {
                    for (int i = 0; i < this._attrs.length; i++) {
                        stringBuffer.append(' ');
                        stringBuffer.append(this._attrs[i].getName());
                        stringBuffer.append("=\"");
                        stringBuffer.append(this._attrs[i].getValue());
                        stringBuffer.append("\"");
                    }
                }
            }
            if (this._list != null) {
                if (z) {
                    stringBuffer.append(Engagement.Comparison.GT);
                }
                for (int i2 = 0; i2 < this._list.size(); i2++) {
                    Object obj = this._list.get(i2);
                    if (obj != null) {
                        if (obj instanceof Node) {
                            ((Node) obj).toString(stringBuffer, z);
                        } else {
                            stringBuffer.append(obj.toString());
                        }
                    }
                }
                if (z) {
                    stringBuffer.append("</");
                    stringBuffer.append(this._tag);
                    stringBuffer.append(Engagement.Comparison.GT);
                }
            } else if (z) {
                stringBuffer.append("/>");
            }
        }

        public Iterator iterator(String str) {
            return new Iterator(this, str) { // from class: org.mortbay.xml.XmlParser.Node.1
                Node _node;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                int f4919c = 0;
                private final Node this$0;
                private final String val$tag;

                {
                    this.this$0 = this;
                    this.val$tag = str;
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    if (this._node != null) {
                        return true;
                    }
                    while (this.this$0._list != null && this.f4919c < this.this$0._list.size()) {
                        Object obj = this.this$0._list.get(this.f4919c);
                        if (obj instanceof Node) {
                            Node node = (Node) obj;
                            if (this.val$tag.equals(node._tag)) {
                                this._node = node;
                                return true;
                            }
                        }
                        this.f4919c++;
                    }
                    return false;
                }

                @Override // java.util.Iterator
                public Object next() {
                    try {
                        if (hasNext()) {
                            return this._node;
                        }
                        throw new NoSuchElementException();
                    } finally {
                        this._node = null;
                        this.f4919c++;
                    }
                }

                @Override // java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException("Not supported");
                }
            };
        }
    }
}
