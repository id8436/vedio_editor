package com.google.gdata.data.youtube;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.media.mediarss.MediaContent;
import com.google.gdata.data.media.mediarss.MediaRssNamespace;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(isRepeatable = true, localName = "content", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class YouTubeMediaContent extends MediaContent {
    private Integer youTubeFormat;

    public static ExtensionDescription getDefaultDescription() {
        return ExtensionDescription.getDefaultDescription(YouTubeMediaContent.class);
    }

    @Override // com.google.gdata.data.media.mediarss.MediaContent, com.google.gdata.data.media.mediarss.AbstractMediaResource, com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.youTubeFormat != null) {
            attributeGenerator.put("yt:format", this.youTubeFormat.toString());
        }
    }

    @Override // com.google.gdata.data.media.mediarss.MediaContent, com.google.gdata.data.media.mediarss.AbstractMediaResource, com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.youTubeFormat = Integer.valueOf(attributeHelper.consumeInteger("format", false, -1));
        if (this.youTubeFormat.intValue() == -1) {
            this.youTubeFormat = null;
        }
    }

    public Integer getYouTubeFormat() {
        return this.youTubeFormat;
    }

    public void setYouTubeFormat(Integer num) {
        this.youTubeFormat = num;
    }
}
