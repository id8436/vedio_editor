package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "duration", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtDuration extends AbstractExtension {
    private long seconds;

    public YtDuration() {
    }

    public YtDuration(long j) {
        this.seconds = j;
    }

    public long getSeconds() {
        return this.seconds;
    }

    public void setSeconds(long j) {
        this.seconds = j;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("seconds", this.seconds);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.seconds = attributeHelper.consumeLong("seconds", true);
    }
}
