package com.google.gdata.data.media.mediarss;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(isRepeatable = true, localName = "thumbnail", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class MediaThumbnail extends AbstractMediaResource {
    private NormalPlayTime time;

    public static ExtensionDescription getDefaultDescription() {
        return ExtensionDescription.getDefaultDescription(MediaThumbnail.class);
    }

    public NormalPlayTime getTime() {
        return this.time;
    }

    public void setTime(NormalPlayTime normalPlayTime) {
        this.time = normalPlayTime;
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractMediaResource, com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.time != null) {
            attributeGenerator.put("time", this.time.getNptHhmmssRepresentation());
        }
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractMediaResource, com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.time = MediaAttributeHelper.consumeNormalPlayTime(attributeHelper, "time");
    }
}
