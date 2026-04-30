package com.google.gdata.wireformats.output;

import com.google.gdata.data.IAtom;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.WireFormat;

/* JADX INFO: loaded from: classes3.dex */
public class AtomDualGenerator extends DualModeGenerator<IAtom> {
    private AltFormat altFormat;

    public AtomDualGenerator() {
        super(new AtomGenerator());
        this.altFormat = AltFormat.ATOM;
    }

    public AtomDualGenerator(AltFormat altFormat) {
        super(new AtomGenerator());
        this.altFormat = AltFormat.ATOM;
        this.altFormat = altFormat;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public Class<IAtom> getSourceType() {
        return IAtom.class;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public AltFormat getAltFormat() {
        return this.altFormat;
    }

    @Override // com.google.gdata.wireformats.output.WireFormatOutputGenerator
    public WireFormat getWireFormat() {
        return WireFormat.XML;
    }
}
