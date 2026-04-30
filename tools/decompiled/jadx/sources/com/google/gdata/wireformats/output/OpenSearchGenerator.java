package com.google.gdata.wireformats.output;

import com.google.gdata.data.OpenSearchDescriptionDocument;
import com.google.gdata.util.common.xml.XmlWriter;
import com.google.gdata.wireformats.AltFormat;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class OpenSearchGenerator extends XmlGenerator<OpenSearchDescriptionDocument> {
    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public AltFormat getAltFormat() {
        return AltFormat.OPENSEARCH;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public Class<OpenSearchDescriptionDocument> getSourceType() {
        return OpenSearchDescriptionDocument.class;
    }

    @Override // com.google.gdata.wireformats.output.XmlGenerator
    public void generateXml(XmlWriter xmlWriter, OutputProperties outputProperties, OpenSearchDescriptionDocument openSearchDescriptionDocument) throws IOException {
        openSearchDescriptionDocument.generate(xmlWriter);
    }
}
