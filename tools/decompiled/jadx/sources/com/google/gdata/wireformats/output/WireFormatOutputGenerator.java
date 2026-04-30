package com.google.gdata.wireformats.output;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.wireformats.ContentValidationException;
import com.google.gdata.wireformats.WireFormat;
import java.io.IOException;
import java.io.Writer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public abstract class WireFormatOutputGenerator<T> extends CharacterGenerator<T> {
    public abstract WireFormat getWireFormat();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gdata.wireformats.output.CharacterGenerator
    public void generate(Writer writer, OutputProperties outputProperties, T t) throws IOException {
        if (t instanceof Element) {
            Element element = (Element) t;
            try {
                ElementMetadata<?, ?> rootMetadata = outputProperties.getRootMetadata();
                if (rootMetadata == null) {
                    throw new IllegalStateException("No metadata for " + element.getElementKey());
                }
                Element elementResolve = element.resolve(rootMetadata);
                if (!elementResolve.getElementKey().equals(rootMetadata.getKey())) {
                    ElementMetadata<?, ?> elementMetadataBind = rootMetadata.getSchema().bind(elementResolve.getElementKey(), rootMetadata.getContext());
                    if (elementMetadataBind == null) {
                        throw new IllegalStateException("Unable to rebind from " + outputProperties.getRootMetadata().getKey() + " to " + elementResolve.getElementKey());
                    }
                    outputProperties = new OutputPropertiesBuilder(outputProperties).setElementMetadata(elementMetadataBind).build();
                }
                getWireFormat().createGenerator(outputProperties, writer, Charset.forName(getCharsetEncoding(outputProperties)), usePrettyPrint(outputProperties)).generate(elementResolve);
                writer.flush();
                return;
            } catch (ContentValidationException e2) {
                throw new IOException("Invalid content: " + e2.getMessage());
            }
        }
        throw new IllegalArgumentException("Output object was not an Element: " + t);
    }
}
