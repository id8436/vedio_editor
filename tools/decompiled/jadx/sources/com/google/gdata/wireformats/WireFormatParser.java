package com.google.gdata.wireformats;

import com.google.gdata.model.Element;
import com.google.gdata.util.ParseException;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface WireFormatParser {
    Element parse(Element element) throws ContentValidationException, ParseException, IOException, ContentCreationException;
}
