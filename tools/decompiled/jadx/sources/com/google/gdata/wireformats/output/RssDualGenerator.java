package com.google.gdata.wireformats.output;

import com.google.gdata.data.IAtom;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.WireFormat;

/* JADX INFO: loaded from: classes3.dex */
public class RssDualGenerator extends DualModeGenerator<IAtom> {
    public RssDualGenerator() {
        super(new RssGenerator());
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public Class<IAtom> getSourceType() {
        return IAtom.class;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public AltFormat getAltFormat() {
        return AltFormat.RSS;
    }

    @Override // com.google.gdata.wireformats.output.WireFormatOutputGenerator
    public WireFormat getWireFormat() {
        return WireFormat.XML;
    }
}
