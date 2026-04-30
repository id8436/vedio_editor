package com.google.gdata.wireformats.input;

import com.google.gdata.data.ParseSource;
import com.google.gdata.data.introspection.IServiceDocument;
import com.google.gdata.data.introspection.ServiceDocument;
import com.google.gdata.model.Element;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.wireformats.AltFormat;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class AtomServiceDualParser implements InputParser<IServiceDocument> {
    private final InputParser<ServiceDocument> dataParser = new AtomServiceDataParser();
    private final InputParser<IServiceDocument> elementParser = ElementParser.of(AltFormat.ATOM_SERVICE, IServiceDocument.class);

    @Override // com.google.gdata.wireformats.input.InputParser
    public AltFormat getAltFormat() {
        return AltFormat.ATOM_SERVICE;
    }

    @Override // com.google.gdata.wireformats.input.InputParser
    public Class<? extends IServiceDocument> getResultType() {
        return IServiceDocument.class;
    }

    @Override // com.google.gdata.wireformats.input.InputParser
    public <R extends IServiceDocument> R parse(ParseSource parseSource, InputProperties inputProperties, Class<R> cls) throws IOException, ServiceException {
        Preconditions.checkNotNull(parseSource, "parseSource");
        Preconditions.checkNotNull(inputProperties, "inProps");
        Preconditions.checkNotNull("resultClass", cls);
        if (Element.class.isAssignableFrom(cls)) {
        }
        if (ServiceDocument.class.isAssignableFrom(cls)) {
            return (R) this.dataParser.parse(parseSource, inputProperties, cls);
        }
        throw new IllegalArgumentException("Invalid result type:" + cls);
    }
}
