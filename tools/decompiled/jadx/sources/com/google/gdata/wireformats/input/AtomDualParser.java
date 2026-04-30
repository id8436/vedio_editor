package com.google.gdata.wireformats.input;

import com.google.gdata.data.IAtom;
import com.google.gdata.data.ParseSource;
import com.google.gdata.model.Element;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.wireformats.AltFormat;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class AtomDualParser implements InputParser<IAtom> {
    private final InputParser<IAtom> dataParser = new AtomDataParser();
    private final InputParser<IAtom> elementParser = ElementParser.of(AltFormat.ATOM, IAtom.class);

    @Override // com.google.gdata.wireformats.input.InputParser
    public AltFormat getAltFormat() {
        return AltFormat.ATOM;
    }

    @Override // com.google.gdata.wireformats.input.InputParser
    public Class<? extends IAtom> getResultType() {
        return IAtom.class;
    }

    @Override // com.google.gdata.wireformats.input.InputParser
    public <R extends IAtom> R parse(ParseSource parseSource, InputProperties inputProperties, Class<R> cls) throws IOException, ServiceException {
        Preconditions.checkNotNull(parseSource, "parseSource");
        Preconditions.checkNotNull(inputProperties, "inProps");
        Preconditions.checkNotNull("resultClass", cls);
        return Element.class.isAssignableFrom(cls) ? (R) this.elementParser.parse(parseSource, inputProperties, cls) : (R) this.dataParser.parse(parseSource, inputProperties, cls);
    }
}
