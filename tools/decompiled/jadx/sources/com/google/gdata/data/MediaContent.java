package com.google.gdata.data;

import com.google.gdata.data.Content;
import com.google.gdata.data.OutOfLineContent;
import com.google.gdata.data.media.IMediaContent;
import com.google.gdata.data.media.MediaSource;
import com.google.gdata.util.ParseException;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class MediaContent extends OutOfLineContent implements IMediaContent {
    protected MediaSource mediaSource;

    @Override // com.google.gdata.data.media.IMediaContent
    public MediaSource getMediaSource() {
        return this.mediaSource;
    }

    @Override // com.google.gdata.data.media.IMediaContent
    public void setMediaSource(MediaSource mediaSource) {
        this.mediaSource = mediaSource;
    }

    public static Content.ChildHandlerInfo getChildHandler(ExtensionProfile extensionProfile, Attributes attributes) throws ParseException, IOException {
        if (attributes.getValue("", "src") == null) {
            return Content.getChildHandler(extensionProfile, attributes);
        }
        Content.ChildHandlerInfo childHandlerInfo = new Content.ChildHandlerInfo();
        MediaContent mediaContent = new MediaContent();
        mediaContent.getClass();
        childHandlerInfo.handler = new OutOfLineContent.AtomHandler();
        childHandlerInfo.content = mediaContent;
        return childHandlerInfo;
    }
}
