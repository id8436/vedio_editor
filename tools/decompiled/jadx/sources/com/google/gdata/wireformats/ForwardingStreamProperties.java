package com.google.gdata.wireformats;

import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.common.base.Preconditions;
import java.util.Collection;

/* JADX INFO: loaded from: classes3.dex */
public class ForwardingStreamProperties implements StreamProperties {
    private final StreamProperties delegate;

    public ForwardingStreamProperties(StreamProperties streamProperties) {
        Preconditions.checkNotNull(streamProperties, "delegate");
        this.delegate = streamProperties;
    }

    @Override // com.google.gdata.wireformats.StreamProperties
    public ContentType getContentType() {
        return this.delegate.getContentType();
    }

    @Override // com.google.gdata.wireformats.StreamProperties
    public Collection<String> getQueryParameterNames() {
        return this.delegate.getQueryParameterNames();
    }

    @Override // com.google.gdata.wireformats.StreamProperties
    public String getQueryParameter(String str) {
        return this.delegate.getQueryParameter(str);
    }

    @Override // com.google.gdata.wireformats.StreamProperties
    public ExtensionProfile getExtensionProfile() {
        return this.delegate.getExtensionProfile();
    }

    @Override // com.google.gdata.wireformats.StreamProperties
    public AltRegistry getAltRegistry() {
        return this.delegate.getAltRegistry();
    }

    @Override // com.google.gdata.wireformats.StreamProperties
    public ElementMetadata<?, ?> getRootMetadata() {
        return this.delegate.getRootMetadata();
    }
}
