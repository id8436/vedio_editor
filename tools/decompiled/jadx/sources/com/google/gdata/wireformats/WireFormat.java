package com.google.gdata.wireformats;

import com.google.gdata.data.XmlEventSource;
import com.google.gdata.wireformats.input.InputProperties;
import com.google.gdata.wireformats.output.OutputProperties;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class WireFormat {
    protected final String name;
    public static final XmlWireFormat XML = new XmlWireFormat();
    public static final List<WireFormat> ALL = Arrays.asList(XML);

    public abstract WireFormatGenerator createGenerator(OutputProperties outputProperties, Writer writer, Charset charset, boolean z);

    public abstract WireFormatParser createParser(InputProperties inputProperties, Reader reader, Charset charset);

    protected WireFormat(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    public WireFormatParser createParser(InputProperties inputProperties, XmlEventSource xmlEventSource) {
        throw new UnsupportedOperationException("Wire format does not support xml event sources.");
    }
}
