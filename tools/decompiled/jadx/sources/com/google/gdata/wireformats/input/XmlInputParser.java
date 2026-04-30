package com.google.gdata.wireformats.input;

import com.google.gdata.data.ParseSource;
import com.google.gdata.data.XmlEventSource;
import com.google.gdata.util.ServiceException;
import com.google.gdata.wireformats.AltFormat;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class XmlInputParser<T> extends CharacterParser<T> {
    protected abstract <R extends T> R parse(XmlEventSource xmlEventSource, InputProperties inputProperties, Class<R> cls) throws IOException, ServiceException;

    public XmlInputParser(AltFormat altFormat, Class<T> cls) {
        super(altFormat, cls);
    }

    @Override // com.google.gdata.wireformats.input.CharacterParser, com.google.gdata.wireformats.input.InputParser
    public <R extends T> R parse(ParseSource parseSource, InputProperties inputProperties, Class<R> cls) throws IOException, ServiceException {
        XmlEventSource eventSource = parseSource.getEventSource();
        return eventSource == null ? (R) super.parse(parseSource, inputProperties, cls) : (R) parse(eventSource, inputProperties, cls);
    }
}
