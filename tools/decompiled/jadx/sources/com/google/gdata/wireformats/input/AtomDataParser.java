package com.google.gdata.wireformats.input;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Entry;
import com.google.gdata.data.Feed;
import com.google.gdata.data.IAtom;
import com.google.gdata.data.XmlEventSource;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.ContentCreationException;
import java.io.IOException;
import java.io.Reader;

/* JADX INFO: loaded from: classes3.dex */
public class AtomDataParser extends XmlInputParser<IAtom> {
    public AtomDataParser() {
        super(AltFormat.ATOM, IAtom.class);
    }

    @Override // com.google.gdata.wireformats.input.CharacterParser
    public <R extends IAtom> R parse(Reader reader, InputProperties inputProperties, Class<R> cls) throws IOException, ServiceException {
        Preconditions.checkNotNull(inputProperties.getExtensionProfile(), "No extension profile");
        R r = (R) createResult(cls);
        if (r instanceof BaseEntry) {
            BaseEntry baseEntry = (BaseEntry) r;
            baseEntry.parseAtom(inputProperties.getExtensionProfile(), reader);
            if (cls == Entry.class) {
                BaseEntry<?> adaptedEntry = baseEntry.getAdaptedEntry();
                if (cls.isInstance(adaptedEntry)) {
                    return cls.cast(adaptedEntry);
                }
                return r;
            }
            return r;
        }
        if (r instanceof BaseFeed) {
            BaseFeed baseFeed = (BaseFeed) r;
            baseFeed.parseAtom(inputProperties.getExtensionProfile(), reader);
            if (cls == Feed.class) {
                BaseFeed<?, ?> adaptedFeed = baseFeed.getAdaptedFeed();
                if (cls.isInstance(adaptedFeed)) {
                    return cls.cast(adaptedFeed);
                }
                return r;
            }
            return r;
        }
        throw new ContentCreationException("Invalid result class: " + cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.gdata.wireformats.input.XmlInputParser
    public <R extends IAtom> R parse(XmlEventSource xmlEventSource, InputProperties inputProperties, Class<R> cls) throws IOException, ServiceException {
        Preconditions.checkNotNull(inputProperties.getExtensionProfile(), "No extension profile");
        R r = (R) createResult(cls);
        if (r instanceof BaseEntry) {
            ((BaseEntry) r).parseAtom(inputProperties.getExtensionProfile(), xmlEventSource);
        } else if (r instanceof BaseFeed) {
            ((BaseFeed) r).parseAtom(inputProperties.getExtensionProfile(), xmlEventSource);
        } else {
            throw new ContentCreationException("Invalid result class: " + cls);
        }
        return r;
    }
}
