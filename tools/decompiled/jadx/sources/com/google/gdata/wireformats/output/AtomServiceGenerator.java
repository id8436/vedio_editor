package com.google.gdata.wireformats.output;

import com.google.gdata.data.introspection.IServiceDocument;
import com.google.gdata.data.introspection.ServiceDocument;
import com.google.gdata.util.common.xml.XmlWriter;
import com.google.gdata.wireformats.AltFormat;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class AtomServiceGenerator extends XmlGenerator<IServiceDocument> {
    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public AltFormat getAltFormat() {
        return AltFormat.ATOM_SERVICE;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public Class<IServiceDocument> getSourceType() {
        return IServiceDocument.class;
    }

    @Override // com.google.gdata.wireformats.output.XmlGenerator
    public void generateXml(XmlWriter xmlWriter, OutputProperties outputProperties, IServiceDocument iServiceDocument) throws IOException {
        if (iServiceDocument instanceof ServiceDocument) {
            ((ServiceDocument) iServiceDocument).generate(xmlWriter, outputProperties.getExtensionProfile());
        } else if (iServiceDocument != null) {
            throw new IllegalStateException("Unexpected source type: " + iServiceDocument.getClass());
        }
    }
}
