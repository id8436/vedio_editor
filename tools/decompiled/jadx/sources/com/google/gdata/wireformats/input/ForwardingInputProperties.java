package com.google.gdata.wireformats.input;

import com.google.gdata.wireformats.ForwardingStreamProperties;

/* JADX INFO: loaded from: classes3.dex */
public class ForwardingInputProperties extends ForwardingStreamProperties implements InputProperties {
    private final InputProperties delegate;

    public ForwardingInputProperties(InputProperties inputProperties) {
        super(inputProperties);
        this.delegate = inputProperties;
    }

    @Override // com.google.gdata.wireformats.input.InputProperties
    public Class<?> getRootType() {
        return this.delegate.getRootType();
    }
}
