package com.google.gdata.wireformats.output;

import com.google.gdata.util.ContentType;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class XmlGenerator<S> extends CharacterGenerator<S> {
    protected static final List<ContentType> XML_CONTENT_TYPES = Collections.unmodifiableList(Arrays.asList(ContentType.TEXT_XML, ContentType.TEXT_PLAIN));

    public abstract void generateXml(XmlWriter xmlWriter, OutputProperties outputProperties, S s) throws IOException;

    protected XmlWriter getXmlWriter(Writer writer, OutputProperties outputProperties, String str) throws IOException {
        EnumSet enumSetOf = EnumSet.of(XmlWriter.WriterFlags.WRITE_HEADER);
        if (usePrettyPrint(outputProperties)) {
            enumSetOf.add(XmlWriter.WriterFlags.PRETTY_PRINT);
        }
        return new XmlWriter(writer, enumSetOf, str);
    }

    protected static List<ContentType> createMatchingXmlList(ContentType... contentTypeArr) {
        ArrayList arrayList = new ArrayList(contentTypeArr.length + XML_CONTENT_TYPES.size());
        for (ContentType contentType : contentTypeArr) {
            arrayList.add(contentType);
        }
        arrayList.addAll(XML_CONTENT_TYPES);
        return Collections.unmodifiableList(arrayList);
    }

    @Override // com.google.gdata.wireformats.output.CharacterGenerator
    public void generate(Writer writer, OutputProperties outputProperties, S s) throws IOException {
        generateXml(getXmlWriter(writer, outputProperties, getCharsetEncoding(outputProperties)), outputProperties, s);
        writer.flush();
    }
}
