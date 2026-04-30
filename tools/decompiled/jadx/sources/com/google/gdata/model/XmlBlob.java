package com.google.gdata.model;

import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.base.Charsets;
import com.google.gdata.wireformats.ContentCreationException;
import com.google.gdata.wireformats.ContentValidationException;
import com.google.gdata.wireformats.WireFormat;
import com.google.gdata.wireformats.input.InputPropertiesBuilder;
import com.google.gdata.wireformats.output.OutputPropertiesBuilder;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public class XmlBlob extends Element {
    public static final ElementKey<Void, XmlBlob> KEY = ElementKey.of(null, XmlBlob.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public XmlBlob(ElementKey<?, ? extends XmlBlob> elementKey) {
        super(elementKey);
    }

    public String getLang() {
        throw new UnsupportedOperationException("Not supported yet");
    }

    public void setLang(String str) {
        throw new UnsupportedOperationException("Not supported yet");
    }

    public String getBase() {
        throw new UnsupportedOperationException("Not supported yet");
    }

    public void setBase(String str) {
        throw new UnsupportedOperationException("Not supported yet");
    }

    public String getBlob() {
        StringWriter stringWriter = new StringWriter();
        try {
            WireFormat.XML.createGenerator(new OutputPropertiesBuilder().build(), stringWriter, Charsets.UTF_8, false).generate(this);
            return stringWriter.toString();
        } catch (ContentValidationException e2) {
            throw new RuntimeException(e2);
        } catch (IOException e3) {
            throw new RuntimeException(e3);
        }
    }

    public void setBlob(String str) {
        clear();
        try {
            WireFormat.XML.createParser(new InputPropertiesBuilder().build(), new StringReader(str), Charset.forName("utf-8")).parse(this);
        } catch (ParseException e2) {
            throw new RuntimeException(e2);
        } catch (ContentCreationException e3) {
            throw new RuntimeException(e3);
        } catch (ContentValidationException e4) {
            throw new RuntimeException(e4);
        } catch (IOException e5) {
            throw new RuntimeException(e5);
        }
    }

    public String getFullText() {
        throw new UnsupportedOperationException("Not supported yet");
    }

    public void setFullText(String str) {
        throw new UnsupportedOperationException("Not supported yet");
    }
}
