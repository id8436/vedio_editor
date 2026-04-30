package com.google.gdata.wireformats;

import com.google.gdata.data.XmlEventSource;
import com.google.gdata.wireformats.input.InputProperties;
import com.google.gdata.wireformats.output.OutputProperties;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public class XmlWireFormat extends WireFormat {
    public XmlWireFormat() {
        super("xml");
    }

    @Override // com.google.gdata.wireformats.WireFormat
    public WireFormatGenerator createGenerator(OutputProperties outputProperties, Writer writer, Charset charset, boolean z) {
        return new XmlGenerator(outputProperties, writer, charset, z);
    }

    @Override // com.google.gdata.wireformats.WireFormat
    public WireFormatParser createParser(InputProperties inputProperties, Reader reader, Charset charset) {
        return new XmlParser(inputProperties, reader, charset);
    }

    @Override // com.google.gdata.wireformats.WireFormat
    public WireFormatParser createParser(InputProperties inputProperties, XmlEventSource xmlEventSource) {
        return new XmlParser(inputProperties, xmlEventSource);
    }
}
