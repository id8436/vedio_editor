package com.google.gdata.wireformats.output;

import com.google.gdata.client.GDataProtocol;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CharacterGenerator<S> implements OutputGenerator<S> {
    public abstract void generate(Writer writer, OutputProperties outputProperties, S s) throws IOException;

    protected static String getCharsetEncoding(OutputProperties outputProperties) {
        String charset = null;
        if (outputProperties.getContentType() != null) {
            charset = outputProperties.getContentType().getCharset();
        }
        if (charset == null) {
            return "utf-8";
        }
        return charset;
    }

    protected Writer getContentWriter(OutputProperties outputProperties, OutputStream outputStream) throws IOException {
        return new OutputStreamWriter(outputStream, getCharsetEncoding(outputProperties));
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public void generate(OutputStream outputStream, OutputProperties outputProperties, S s) throws IOException {
        generate(getContentWriter(outputProperties, outputStream), outputProperties, s);
    }

    protected boolean usePrettyPrint(OutputProperties outputProperties) {
        return Boolean.parseBoolean(outputProperties.getQueryParameter(GDataProtocol.Parameter.PRETTYPRINT));
    }
}
