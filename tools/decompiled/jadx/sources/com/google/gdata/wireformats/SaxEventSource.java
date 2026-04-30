package com.google.gdata.wireformats;

import com.google.gdata.data.XmlEventSource;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.util.common.xml.parsing.SecureGenericXMLFactory;
import java.io.IOException;
import java.io.Reader;
import java.util.logging.Logger;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.ParserAdapter;

/* JADX INFO: loaded from: classes3.dex */
public class SaxEventSource implements XmlEventSource {
    private static final Logger logger = Logger.getLogger(SaxEventSource.class.getCanonicalName());
    private static final SAXParserFactory parserFactory = createSAXParserFactory();
    private final Reader reader;

    private static SAXParserFactory createSAXParserFactory() {
        SAXParserFactory sAXParserFactory;
        try {
            SAXParserFactory sAXParserFactoryNewInstance = SAXParserFactory.newInstance();
            try {
                sAXParserFactory = SecureGenericXMLFactory.getSAXParserFactory(sAXParserFactoryNewInstance);
                sAXParserFactory.newSAXParser();
            } catch (ParserConfigurationException e2) {
                sAXParserFactory = sAXParserFactoryNewInstance;
            }
            sAXParserFactory.setNamespaceAware(true);
            return sAXParserFactory;
        } catch (SAXException e3) {
            throw new IllegalStateException("Failed to create a SAX parser factory", e3);
        }
    }

    public SaxEventSource(Reader reader) {
        Preconditions.checkNotNull(reader, "reader");
        this.reader = reader;
    }

    @Override // com.google.gdata.data.XmlEventSource
    public void parse(DefaultHandler defaultHandler) throws SAXException, IOException {
        ParserAdapter parserAdapter = new ParserAdapter(createSaxParser().getParser());
        parserAdapter.setContentHandler(defaultHandler);
        parserAdapter.parse(new InputSource(this.reader));
    }

    private SAXParser createSaxParser() {
        try {
            return parserFactory.newSAXParser();
        } catch (ParserConfigurationException e2) {
            throw new IllegalStateException("Invalid parser configuration", e2);
        } catch (SAXException e3) {
            throw new IllegalStateException("Failed to create a SAX parser", e3);
        }
    }
}
