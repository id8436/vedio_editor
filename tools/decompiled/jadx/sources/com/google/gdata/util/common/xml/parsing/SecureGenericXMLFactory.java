package com.google.gdata.util.common.xml.parsing;

import java.io.StringReader;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.validation.Schema;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* JADX INFO: loaded from: classes3.dex */
public class SecureGenericXMLFactory {
    private static final SecureEntityResolver NOOP_RESOLVER = new SecureEntityResolver();

    protected SecureGenericXMLFactory() {
    }

    public static SAXParserFactory getSAXParserFactory(SAXParserFactory sAXParserFactory) throws ParserConfigurationException, SAXException {
        return new SecureSAXParserFactory(sAXParserFactory);
    }

    public static DocumentBuilderFactory getDocumentBuilderFactory(DocumentBuilderFactory documentBuilderFactory) {
        return new SecureDocumentBuilderFactory(documentBuilderFactory);
    }

    public class SecureSAXParserFactory extends SAXParserFactory {
        private SAXParserFactory factory;

        protected SecureSAXParserFactory(SAXParserFactory sAXParserFactory) throws ParserConfigurationException, SAXException {
            this.factory = sAXParserFactory;
            sAXParserFactory.setValidating(false);
            try {
                sAXParserFactory.setXIncludeAware(false);
            } catch (NoSuchMethodError e2) {
            } catch (UnsupportedOperationException e3) {
            }
            try {
                sAXParserFactory.setFeature("http://xml.org/sax/features/external-general-entities", false);
            } catch (IllegalArgumentException e4) {
            } catch (SAXNotRecognizedException e5) {
            }
            try {
                sAXParserFactory.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
            } catch (IllegalArgumentException e6) {
            } catch (SAXNotRecognizedException e7) {
            }
            try {
                sAXParserFactory.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
            } catch (IllegalArgumentException e8) {
            } catch (SAXNotRecognizedException e9) {
            }
            try {
                sAXParserFactory.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
            } catch (IllegalArgumentException e10) {
            } catch (SAXNotRecognizedException e11) {
            }
        }

        @Override // javax.xml.parsers.SAXParserFactory
        public SAXParser newSAXParser() throws ParserConfigurationException, SAXException {
            SAXParser sAXParserNewSAXParser = this.factory.newSAXParser();
            sAXParserNewSAXParser.getXMLReader().setEntityResolver(SecureGenericXMLFactory.NOOP_RESOLVER);
            return sAXParserNewSAXParser;
        }

        @Override // javax.xml.parsers.SAXParserFactory
        public void setNamespaceAware(boolean z) {
            this.factory.setNamespaceAware(z);
        }

        @Override // javax.xml.parsers.SAXParserFactory
        public void setValidating(boolean z) {
            this.factory.setValidating(z);
        }

        @Override // javax.xml.parsers.SAXParserFactory
        public boolean isNamespaceAware() {
            return this.factory.isNamespaceAware();
        }

        @Override // javax.xml.parsers.SAXParserFactory
        public boolean isValidating() {
            return this.factory.isValidating();
        }

        @Override // javax.xml.parsers.SAXParserFactory
        public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException, ParserConfigurationException {
            this.factory.setFeature(str, z);
        }

        @Override // javax.xml.parsers.SAXParserFactory
        public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException, ParserConfigurationException {
            return this.factory.getFeature(str);
        }

        @Override // javax.xml.parsers.SAXParserFactory
        public Schema getSchema() throws UnsupportedOperationException {
            return this.factory.getSchema();
        }

        @Override // javax.xml.parsers.SAXParserFactory
        public void setSchema(Schema schema) throws UnsupportedOperationException {
            this.factory.setSchema(schema);
        }

        @Override // javax.xml.parsers.SAXParserFactory
        public void setXIncludeAware(boolean z) throws UnsupportedOperationException {
            this.factory.setXIncludeAware(z);
        }

        @Override // javax.xml.parsers.SAXParserFactory
        public boolean isXIncludeAware() throws UnsupportedOperationException {
            return this.factory.isXIncludeAware();
        }
    }

    public class SecureDocumentBuilderFactory extends DocumentBuilderFactory {
        private DocumentBuilderFactory factory;

        protected SecureDocumentBuilderFactory(DocumentBuilderFactory documentBuilderFactory) {
            this.factory = documentBuilderFactory;
            documentBuilderFactory.setValidating(false);
            try {
                documentBuilderFactory.setXIncludeAware(false);
            } catch (NoSuchMethodError e2) {
            } catch (UnsupportedOperationException e3) {
            }
            try {
                documentBuilderFactory.setAttribute("http://xml.org/sax/features/external-general-entities", false);
            } catch (IllegalArgumentException e4) {
            }
            try {
                documentBuilderFactory.setAttribute("http://xml.org/sax/features/external-parameter-entities", false);
            } catch (IllegalArgumentException e5) {
            }
            try {
                documentBuilderFactory.setAttribute("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
            } catch (IllegalArgumentException e6) {
            }
            try {
                documentBuilderFactory.setAttribute("http://javax.xml.XMLConstants/feature/secure-processing", Boolean.TRUE);
            } catch (IllegalArgumentException e7) {
            }
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public DocumentBuilder newDocumentBuilder() throws ParserConfigurationException {
            DocumentBuilder documentBuilderNewDocumentBuilder = this.factory.newDocumentBuilder();
            documentBuilderNewDocumentBuilder.setEntityResolver(SecureGenericXMLFactory.NOOP_RESOLVER);
            return documentBuilderNewDocumentBuilder;
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public void setNamespaceAware(boolean z) {
            this.factory.setNamespaceAware(z);
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public void setValidating(boolean z) {
            this.factory.setValidating(z);
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public void setIgnoringElementContentWhitespace(boolean z) {
            this.factory.setIgnoringElementContentWhitespace(z);
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public void setExpandEntityReferences(boolean z) {
            this.factory.setExpandEntityReferences(z);
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public void setIgnoringComments(boolean z) {
            this.factory.setIgnoringComments(z);
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public void setCoalescing(boolean z) {
            this.factory.setCoalescing(z);
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public boolean isNamespaceAware() {
            return this.factory.isNamespaceAware();
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public boolean isValidating() {
            return this.factory.isValidating();
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public boolean isIgnoringElementContentWhitespace() {
            return this.factory.isIgnoringElementContentWhitespace();
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public boolean isExpandEntityReferences() {
            return this.factory.isExpandEntityReferences();
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public boolean isIgnoringComments() {
            return this.factory.isIgnoringComments();
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public boolean isCoalescing() {
            return this.factory.isCoalescing();
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public void setAttribute(String str, Object obj) throws IllegalArgumentException {
            this.factory.setAttribute(str, obj);
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public Object getAttribute(String str) throws IllegalArgumentException {
            return this.factory.getAttribute(str);
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public void setFeature(String str, boolean z) throws ParserConfigurationException {
            this.factory.setFeature(str, z);
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public boolean getFeature(String str) throws ParserConfigurationException {
            return this.factory.getFeature(str);
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public Schema getSchema() throws UnsupportedOperationException {
            return this.factory.getSchema();
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public void setSchema(Schema schema) throws UnsupportedOperationException {
            this.factory.setSchema(schema);
        }

        @Override // javax.xml.parsers.DocumentBuilderFactory
        public void setXIncludeAware(boolean z) throws UnsupportedOperationException {
            this.factory.setXIncludeAware(z);
        }

        public boolean isIncludeAware() throws UnsupportedOperationException {
            return this.factory.isXIncludeAware();
        }
    }

    final class SecureEntityResolver implements EntityResolver {
        private SecureEntityResolver() {
        }

        @Override // org.xml.sax.EntityResolver
        public InputSource resolveEntity(String str, String str2) {
            return new InputSource(new StringReader(""));
        }
    }
}
