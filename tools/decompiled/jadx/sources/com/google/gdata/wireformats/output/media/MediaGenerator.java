package com.google.gdata.wireformats.output.media;

import com.google.gdata.data.media.MediaSource;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.output.OutputGenerator;
import com.google.gdata.wireformats.output.OutputProperties;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class MediaGenerator implements OutputGenerator<MediaSource> {
    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public AltFormat getAltFormat() {
        return AltFormat.MEDIA;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public Class<MediaSource> getSourceType() {
        return MediaSource.class;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public void generate(OutputStream outputStream, OutputProperties outputProperties, MediaSource mediaSource) throws IOException {
        MediaSource.Output.writeTo(mediaSource, outputStream);
    }
}
