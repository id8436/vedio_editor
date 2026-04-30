package com.google.gdata.wireformats.input;

import com.google.gdata.data.ParseSource;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.io.base.UnicodeReader;
import com.google.gdata.wireformats.AltFormat;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CharacterParser<T> extends AbstractParser<T> {
    public abstract <R extends T> R parse(Reader reader, InputProperties inputProperties, Class<R> cls) throws IOException, ServiceException;

    protected CharacterParser(AltFormat altFormat, Class<T> cls) {
        super(altFormat, cls);
    }

    protected String getCharset(InputProperties inputProperties) {
        return inputProperties.getContentType().getCharset();
    }

    @Override // com.google.gdata.wireformats.input.InputParser
    public <R extends T> R parse(ParseSource parseSource, InputProperties inputProperties, Class<R> cls) throws IOException, ServiceException {
        Reader reader = parseSource.getReader();
        if (reader == null) {
            InputStream inputStream = parseSource.getInputStream();
            if (inputStream != null) {
                try {
                    String charset = getCharset(inputProperties);
                    String str = charset == null ? "UTF-8" : charset;
                    if (str.toLowerCase().startsWith("utf-")) {
                        reader = new UnicodeReader(inputStream, str);
                    } else {
                        reader = new InputStreamReader(inputStream, str);
                    }
                } catch (UnsupportedEncodingException e2) {
                    throw new ParseException("Unsupported encoding: " + e2.getLocalizedMessage(), e2);
                }
            } else {
                throw new IllegalStateException("XML event source not supported");
            }
        }
        return (R) parse(reader, inputProperties, cls);
    }
}
