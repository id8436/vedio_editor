package com.google.gdata.util;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Entry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Feed;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.IFeed;
import com.google.gdata.data.ParseSource;
import com.google.gdata.model.Element;
import com.google.gdata.model.Schema;
import com.google.gdata.util.common.base.Charsets;
import com.google.gdata.wireformats.ContentCreationException;
import com.google.gdata.wireformats.ContentValidationException;
import com.google.gdata.wireformats.WireFormat;
import com.google.gdata.wireformats.WireFormatParser;
import com.google.gdata.wireformats.XmlWireFormat;
import com.google.gdata.wireformats.input.InputProperties;
import com.google.gdata.wireformats.input.InputPropertiesBuilder;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes3.dex */
public class ParseUtil {
    public static IEntry readEntry(ParseSource parseSource) throws IOException, ServiceException {
        return readEntry(parseSource, null, null, null);
    }

    public static <T extends IEntry> T readEntry(ParseSource parseSource, Class<T> cls, ExtensionProfile extensionProfile, Schema schema) throws IOException, ServiceException {
        Class<T> cls2;
        if (parseSource == null) {
            throw new NullPointerException("Null source");
        }
        if (cls == null) {
            cls = BaseEntry.class;
            cls2 = Entry.class;
        } else {
            cls2 = cls;
        }
        boolean zIsAdapting = isAdapting(cls2);
        try {
            T tNewInstance = cls2.newInstance();
            if (tNewInstance instanceof Element) {
                tNewInstance = cls2.cast(parseElement(parseSource, (Element) tNewInstance, schema));
            } else {
                BaseEntry baseEntry = (BaseEntry) tNewInstance;
                if (extensionProfile == null) {
                    extensionProfile = getExtProfile((BaseEntry<?>) baseEntry, zIsAdapting);
                }
                parseEntry(parseSource, baseEntry, extensionProfile);
                if (zIsAdapting) {
                    BaseEntry<?> adaptedEntry = baseEntry.getAdaptedEntry();
                    if (cls.isInstance(adaptedEntry)) {
                        tNewInstance = adaptedEntry;
                    }
                }
            }
            return cls.cast(tNewInstance);
        } catch (IllegalAccessException e2) {
            throw new ServiceException(CoreErrorDomain.ERR.cantCreateEntry, e2);
        } catch (InstantiationException e3) {
            throw new ServiceException(CoreErrorDomain.ERR.cantCreateEntry, e3);
        }
    }

    public static IFeed readFeed(ParseSource parseSource) throws IOException, ServiceException {
        return readFeed(parseSource, null, null, null);
    }

    public static <F extends IFeed> F readFeed(ParseSource parseSource, Class<F> cls, ExtensionProfile extensionProfile, Schema schema) throws IOException, ServiceException {
        Class<F> cls2;
        if (parseSource == null) {
            throw new NullPointerException("Null source");
        }
        if (cls == null) {
            cls = BaseFeed.class;
            cls2 = Feed.class;
        } else {
            cls2 = cls;
        }
        boolean zIsAdapting = isAdapting(cls2);
        try {
            F fNewInstance = cls2.newInstance();
            if (fNewInstance instanceof Element) {
                fNewInstance = cls2.cast(parseElement(parseSource, (Element) fNewInstance, schema));
            } else {
                BaseFeed baseFeed = (BaseFeed) fNewInstance;
                if (extensionProfile == null) {
                    extensionProfile = getExtProfile((BaseFeed<?, ?>) baseFeed, zIsAdapting);
                }
                parseFeed(parseSource, baseFeed, extensionProfile);
                if (zIsAdapting) {
                    BaseFeed<?, ?> adaptedFeed = baseFeed.getAdaptedFeed();
                    if (cls.isInstance(adaptedFeed)) {
                        fNewInstance = adaptedFeed;
                    }
                }
            }
            return cls.cast(fNewInstance);
        } catch (IllegalAccessException e2) {
            throw new ServiceException(CoreErrorDomain.ERR.cantCreateFeed, e2);
        } catch (InstantiationException e3) {
            throw new ServiceException(CoreErrorDomain.ERR.cantCreateFeed, e3);
        }
    }

    private static Element parseElement(ParseSource parseSource, Element element, Schema schema) throws ParseException, IOException {
        WireFormatParser wireFormatParserCreateParser;
        XmlWireFormat xmlWireFormat = WireFormat.XML;
        InputProperties inputPropertiesBuild = new InputPropertiesBuilder().setElementMetadata(schema.bind(element.getElementKey())).build();
        if (parseSource.getReader() != null) {
            wireFormatParserCreateParser = xmlWireFormat.createParser(inputPropertiesBuild, parseSource.getReader(), Charsets.UTF_8);
        } else if (parseSource.getInputStream() != null) {
            wireFormatParserCreateParser = xmlWireFormat.createParser(inputPropertiesBuild, new InputStreamReader(parseSource.getInputStream()), Charsets.UTF_8);
        } else if (parseSource.getEventSource() != null) {
            wireFormatParserCreateParser = xmlWireFormat.createParser(inputPropertiesBuild, parseSource.getEventSource());
        } else {
            throw new IllegalStateException("Unexpected source: " + parseSource);
        }
        try {
            return wireFormatParserCreateParser.parse(element);
        } catch (ContentCreationException e2) {
            throw new ParseException(CoreErrorDomain.ERR.cantCreateExtension, e2);
        } catch (ContentValidationException e3) {
            throw e3.toParseException();
        }
    }

    private static void parseEntry(ParseSource parseSource, BaseEntry<?> baseEntry, ExtensionProfile extensionProfile) throws ParseException, IOException {
        if (parseSource.getReader() != null) {
            baseEntry.parseAtom(extensionProfile, parseSource.getReader());
        } else if (parseSource.getInputStream() != null) {
            baseEntry.parseAtom(extensionProfile, parseSource.getInputStream());
        } else {
            if (parseSource.getEventSource() != null) {
                baseEntry.parseAtom(extensionProfile, parseSource.getEventSource());
                return;
            }
            throw new IllegalStateException("Unexpected source: " + parseSource);
        }
    }

    private static void parseFeed(ParseSource parseSource, BaseFeed<?, ?> baseFeed, ExtensionProfile extensionProfile) throws ParseException, IOException {
        if (parseSource.getReader() != null) {
            baseFeed.parseAtom(extensionProfile, parseSource.getReader());
        } else if (parseSource.getInputStream() != null) {
            baseFeed.parseAtom(extensionProfile, parseSource.getInputStream());
        } else {
            if (parseSource.getEventSource() != null) {
                baseFeed.parseAtom(extensionProfile, parseSource.getEventSource());
                return;
            }
            throw new IllegalStateException("Unexpected source: " + parseSource);
        }
    }

    private static boolean isAdapting(Class<?> cls) {
        return cls == Entry.class || cls == com.google.gdata.model.atom.Entry.class || cls == Feed.class || cls == com.google.gdata.model.atom.Feed.class;
    }

    private static ExtensionProfile getExtProfile(BaseEntry<?> baseEntry, boolean z) {
        ExtensionProfile extensionProfile = new ExtensionProfile();
        baseEntry.declareExtensions(extensionProfile);
        if (z) {
            extensionProfile.setAutoExtending(true);
        }
        return extensionProfile;
    }

    private static ExtensionProfile getExtProfile(BaseFeed<?, ?> baseFeed, boolean z) {
        ExtensionProfile extensionProfile = new ExtensionProfile();
        baseFeed.declareExtensions(extensionProfile);
        if (z) {
            extensionProfile.setAutoExtending(true);
        }
        return extensionProfile;
    }
}
