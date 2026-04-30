package com.google.gdata.wireformats.input;

import com.google.gdata.data.XmlEventSource;
import com.google.gdata.data.introspection.ServiceDocument;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.wireformats.AltFormat;
import java.io.IOException;
import java.io.Reader;

/* JADX INFO: loaded from: classes3.dex */
public class AtomServiceDataParser extends XmlInputParser<ServiceDocument> {
    public AtomServiceDataParser() {
        super(AltFormat.ATOM_SERVICE, ServiceDocument.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.gdata.wireformats.input.XmlInputParser
    public <R extends ServiceDocument> R parse(XmlEventSource xmlEventSource, InputProperties inputProperties, Class<R> cls) {
        throw new IllegalStateException("Parsing from XmlEventSource not supported");
    }

    @Override // com.google.gdata.wireformats.input.CharacterParser
    public <R extends ServiceDocument> R parse(Reader reader, InputProperties inputProperties, Class<R> cls) throws IOException, ServiceException {
        Preconditions.checkNotNull(inputProperties.getExtensionProfile(), "No extension profile");
        R r = (R) createResult(cls);
        r.parse(inputProperties.getExtensionProfile(), reader);
        return r;
    }
}
