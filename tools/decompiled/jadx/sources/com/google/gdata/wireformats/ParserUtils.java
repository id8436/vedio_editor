package com.google.gdata.wireformats;

import com.google.gdata.util.io.base.UnicodeReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ParserUtils {
    private ParserUtils() {
    }

    public static Reader getInputReader(InputStream inputStream, Charset charset) throws IOException {
        return charset.name().toLowerCase().startsWith("utf-") ? new UnicodeReader(inputStream, charset.name()) : new InputStreamReader(inputStream, charset);
    }
}
