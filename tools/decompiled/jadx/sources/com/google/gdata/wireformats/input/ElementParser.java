package com.google.gdata.wireformats.input;

import com.google.gdata.model.Element;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.ContentCreationException;
import com.google.gdata.wireformats.ContentValidationException;
import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;

/* JADX INFO: loaded from: classes3.dex */
public class ElementParser<T> extends CharacterParser<T> {
    public static <T> ElementParser<T> of(AltFormat altFormat, Class<T> cls) {
        Preconditions.checkArgument(altFormat.getWireFormat() != null, "No wire format defined for " + altFormat);
        return new ElementParser<>(altFormat, cls);
    }

    protected ElementParser(AltFormat altFormat, Class<T> cls) {
        super(altFormat, cls);
    }

    @Override // com.google.gdata.wireformats.input.CharacterParser
    public <R extends T> R parse(Reader reader, InputProperties inputProperties, Class<R> cls) throws IOException, ServiceException {
        Preconditions.checkNotNull(inputProperties.getRootMetadata(), "No element metadata");
        Object objCreateResult = createResult(cls);
        if (objCreateResult instanceof Element) {
            try {
                return cls.cast(this.altFormat.getWireFormat().createParser(inputProperties, reader, Charset.forName(getCharset(inputProperties))).parse((Element) objCreateResult));
            } catch (ContentCreationException e2) {
                throw new ParseException("Unable to create element to parse into.", e2);
            } catch (ContentValidationException e3) {
                throw new ParseException("Error trying to parse element.", e3);
            } catch (IllegalCharsetNameException e4) {
                throw new ParseException("Invalid charset:" + getCharset(inputProperties), e4);
            } catch (UnsupportedCharsetException e5) {
                throw new ParseException("Invalid charset:" + getCharset(inputProperties), e5);
            }
        }
        throw new ContentCreationException("Result class is not an Element type: " + cls);
    }
}
