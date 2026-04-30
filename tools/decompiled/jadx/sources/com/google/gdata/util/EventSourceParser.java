package com.google.gdata.util;

import com.google.gdata.data.XmlEventSource;
import com.google.gdata.util.XmlParser;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes3.dex */
public class EventSourceParser extends XmlParser {
    private static final Logger LOGGER = Logger.getLogger(EventSourceParser.class.getName());

    public EventSourceParser(XmlParser.ElementHandler elementHandler, String str, String str2) {
        this.rootHandler = elementHandler;
        this.rootNamespace = str;
        this.rootElementName = str2;
    }

    public void parse(XmlEventSource xmlEventSource) throws ParseException, IOException {
        try {
            xmlEventSource.parse(this);
        } catch (SAXException e2) {
            Exception exception = e2.getException();
            if (exception instanceof ParseException) {
                throwParseException((ParseException) exception);
            } else {
                if (exception instanceof IOException) {
                    LogUtils.logException(LOGGER, Level.WARNING, null, e2);
                    throw ((IOException) exception);
                }
                LogUtils.logException(LOGGER, Level.FINE, null, e2);
                throw new ParseException(e2);
            }
        }
    }
}
