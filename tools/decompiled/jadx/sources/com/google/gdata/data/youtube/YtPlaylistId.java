package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "playlistId", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtPlaylistId extends AbstractExtension {
    private String playlistId;

    public YtPlaylistId() {
    }

    public YtPlaylistId(String str) {
        this.playlistId = str;
    }

    public String getPlaylistId() {
        return this.playlistId;
    }

    public void setPlaylistId(String str) {
        this.playlistId = str;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        attributeGenerator.setContent(this.playlistId);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.playlistId = attributeHelper.consumeContent(true);
    }
}
