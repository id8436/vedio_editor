package com.google.gdata.wireformats;

import com.google.gdata.wireformats.XmlGenerator;

/* JADX INFO: loaded from: classes3.dex */
public class XmlWireFormatProperties {
    private XmlGenerator.ElementGenerator elementGenerator;

    public XmlWireFormatProperties setElementGenerator(XmlGenerator.ElementGenerator elementGenerator) {
        this.elementGenerator = elementGenerator;
        return this;
    }

    public XmlGenerator.ElementGenerator getElementGenerator() {
        return this.elementGenerator;
    }
}
