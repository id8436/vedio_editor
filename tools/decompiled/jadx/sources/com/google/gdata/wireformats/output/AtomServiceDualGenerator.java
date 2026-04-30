package com.google.gdata.wireformats.output;

import com.google.gdata.data.introspection.IServiceDocument;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.WireFormat;

/* JADX INFO: loaded from: classes3.dex */
public class AtomServiceDualGenerator extends DualModeGenerator<IServiceDocument> {
    public AtomServiceDualGenerator() {
        super(new AtomServiceGenerator());
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public AltFormat getAltFormat() {
        return AltFormat.ATOM_SERVICE;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public Class<IServiceDocument> getSourceType() {
        return IServiceDocument.class;
    }

    @Override // com.google.gdata.wireformats.output.WireFormatOutputGenerator
    public WireFormat getWireFormat() {
        return WireFormat.XML;
    }
}
