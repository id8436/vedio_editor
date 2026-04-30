package com.google.gdata.wireformats.output;

import com.google.gdata.model.Element;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.WireFormat;

/* JADX INFO: loaded from: classes3.dex */
public class ElementGenerator<E extends Element> extends WireFormatOutputGenerator<E> {
    private final AltFormat altFormat;
    private final Class<E> inputType;

    public static <E extends Element> ElementGenerator<E> of(AltFormat altFormat, Class<E> cls) {
        return new ElementGenerator<>(altFormat, cls);
    }

    private ElementGenerator(AltFormat altFormat, Class<E> cls) {
        this.altFormat = altFormat;
        this.inputType = cls;
    }

    @Override // com.google.gdata.wireformats.output.WireFormatOutputGenerator
    public WireFormat getWireFormat() {
        return this.altFormat.getWireFormat();
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public AltFormat getAltFormat() {
        return this.altFormat;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public Class<E> getSourceType() {
        return this.inputType;
    }
}
