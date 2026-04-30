package com.google.gdata.wireformats.input.media;

import com.google.gdata.data.ParseSource;
import com.google.gdata.data.media.MediaSource;
import com.google.gdata.data.media.MediaStreamSource;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.input.AbstractParser;
import com.google.gdata.wireformats.input.InputProperties;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public class MediaParser extends AbstractParser<MediaSource> {
    public MediaParser() {
        super(AltFormat.MEDIA, MediaSource.class);
    }

    @Override // com.google.gdata.wireformats.input.InputParser
    public <R extends MediaSource> R parse(ParseSource parseSource, InputProperties inputProperties, Class<R> cls) {
        Preconditions.checkArgument(cls.isAssignableFrom(MediaSource.class), "Result class must be " + MediaSource.class.getName());
        InputStream inputStream = parseSource.getInputStream();
        Preconditions.checkNotNull(inputStream, "Parse source must be stream-based");
        return cls.cast(new MediaStreamSource(inputStream, inputProperties.getContentType().toString()));
    }
}
