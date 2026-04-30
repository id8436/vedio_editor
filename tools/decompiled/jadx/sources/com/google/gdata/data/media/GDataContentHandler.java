package com.google.gdata.data.media;

import com.google.gdata.client.media.MediaService;
import com.google.gdata.data.Entry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.IAtom;
import com.google.gdata.data.ParseSource;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.AltRegistry;
import com.google.gdata.wireformats.input.ForwardingInputProperties;
import com.google.gdata.wireformats.input.InputParser;
import com.google.gdata.wireformats.input.InputProperties;
import com.google.gdata.wireformats.input.InputPropertiesBuilder;
import com.google.gdata.wireformats.output.ForwardingOutputProperties;
import com.google.gdata.wireformats.output.OutputGenerator;
import com.google.gdata.wireformats.output.OutputProperties;
import com.google.gdata.wireformats.output.OutputPropertiesBuilder;
import java.awt.datatransfer.DataFlavor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataContentHandler;
import javax.activation.DataSource;

/* JADX INFO: loaded from: classes3.dex */
public class GDataContentHandler implements DataContentHandler {
    private static final InputProperties DEFAULT_INPUT_PROPERTIES = new InputPropertiesBuilder().setAltRegistry(MediaService.getDefaultAltRegistry()).setContentType(ContentType.ATOM).setExpectType(Entry.class).setExtensionProfile(new ExtensionProfile()).build();
    private static final ThreadLocal<InputProperties> threadInputProperties = new ThreadLocal<InputProperties>() { // from class: com.google.gdata.data.media.GDataContentHandler.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public InputProperties initialValue() {
            return GDataContentHandler.DEFAULT_INPUT_PROPERTIES;
        }
    };
    private static final OutputProperties DEFAULT_OUTPUT_PROPERTIES = new OutputPropertiesBuilder().setAltRegistry(MediaService.getDefaultAltRegistry()).setExtensionProfile(new ExtensionProfile()).build();
    private static final ThreadLocal<OutputProperties> threadOutputProperties = new ThreadLocal<OutputProperties>() { // from class: com.google.gdata.data.media.GDataContentHandler.2
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public OutputProperties initialValue() {
            return GDataContentHandler.DEFAULT_OUTPUT_PROPERTIES;
        }
    };

    public static InputProperties setThreadInputProperties(InputProperties inputProperties) {
        Preconditions.checkNotNull(inputProperties, "inputProperties");
        InputProperties threadInputProperties2 = getThreadInputProperties();
        threadInputProperties.set(inputProperties);
        return threadInputProperties2;
    }

    public static InputProperties getThreadInputProperties() {
        return threadInputProperties.get();
    }

    public static OutputProperties setThreadOutputProperties(OutputProperties outputProperties) {
        Preconditions.checkNotNull(outputProperties, "outputProperties");
        OutputProperties threadOutputProperties2 = getThreadOutputProperties();
        threadOutputProperties.set(outputProperties);
        return threadOutputProperties2;
    }

    public static OutputProperties getThreadOutputProperties() {
        return threadOutputProperties.get();
    }

    @Override // javax.activation.DataContentHandler
    public DataFlavor[] getTransferDataFlavors() {
        throw new UnsupportedOperationException("No DataFlavor support");
    }

    @Override // javax.activation.DataContentHandler
    public Object getTransferData(DataFlavor dataFlavor, DataSource dataSource) {
        throw new UnsupportedOperationException("No DataFlavor support");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> Object parseAtom(InputParser<?> inputParser, InputStream inputStream, final ContentType contentType, InputProperties inputProperties, Class<T> cls) throws IOException, ServiceException {
        Preconditions.checkArgument(inputParser.getResultType().isAssignableFrom(IAtom.class), "Parser does not handle atom content");
        return inputParser.parse(new ParseSource(inputStream), new ForwardingInputProperties(inputProperties) { // from class: com.google.gdata.data.media.GDataContentHandler.3
            @Override // com.google.gdata.wireformats.ForwardingStreamProperties, com.google.gdata.wireformats.StreamProperties
            public ContentType getContentType() {
                return contentType;
            }
        }, cls);
    }

    @Override // javax.activation.DataContentHandler
    public Object getContent(DataSource dataSource) throws IOException {
        InputProperties threadInputProperties2 = getThreadInputProperties();
        ContentType contentType = new ContentType(dataSource.getContentType());
        AltRegistry altRegistry = threadInputProperties2.getAltRegistry();
        InputParser<?> parser = altRegistry.getParser(altRegistry.lookupType(contentType));
        if (parser == null) {
            throw new IOException("Invalid multipart content: " + contentType);
        }
        try {
            return parseAtom(parser, dataSource.getInputStream(), contentType, threadInputProperties2, threadInputProperties2.getRootType());
        } catch (ServiceException e2) {
            IOException iOException = new IOException("Error parsing content");
            iOException.initCause(e2);
            throw iOException;
        }
    }

    private void generateAtom(OutputGenerator<?> outputGenerator, OutputStream outputStream, OutputProperties outputProperties, Object obj) throws IOException {
        Preconditions.checkArgument(outputGenerator.getSourceType().isAssignableFrom(IAtom.class), "Generator does not handle atom content");
        Preconditions.checkArgument(obj instanceof IAtom, "Source object must be Atom content");
        outputGenerator.generate(outputStream, outputProperties, (IAtom) obj);
    }

    @Override // javax.activation.DataContentHandler
    public void writeTo(Object obj, String str, OutputStream outputStream) throws IOException {
        Preconditions.checkNotNull(obj, "obj");
        OutputProperties threadOutputProperties2 = getThreadOutputProperties();
        AltRegistry altRegistry = threadOutputProperties2.getAltRegistry();
        ContentType contentType = new ContentType(str);
        final AltFormat altFormatLookupType = altRegistry.lookupType(contentType);
        OutputGenerator<?> generator = altRegistry.getGenerator(altFormatLookupType);
        if (generator == null) {
            throw new IllegalStateException("Unable to generate media: " + contentType);
        }
        generateAtom(generator, outputStream, new ForwardingOutputProperties(threadOutputProperties2) { // from class: com.google.gdata.data.media.GDataContentHandler.4
            @Override // com.google.gdata.wireformats.ForwardingStreamProperties, com.google.gdata.wireformats.StreamProperties
            public ContentType getContentType() {
                return altFormatLookupType.getContentType();
            }
        }, obj);
    }
}
