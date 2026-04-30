package com.google.gdata.wireformats;

import com.google.gdata.model.Element;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface WireFormatGenerator {
    void generate(Element element) throws ContentValidationException, IOException;
}
