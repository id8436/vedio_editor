package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "statistics", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtStatistics extends AbstractExtension {
    private long favoriteCount;
    private long viewCount;

    public long getViewCount() {
        return this.viewCount;
    }

    public void setViewCount(long j) {
        this.viewCount = j;
    }

    public long getFavoriteCount() {
        return this.favoriteCount;
    }

    public void setFavoriteCount(long j) {
        this.favoriteCount = j;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        if (this.viewCount > 0) {
            attributeGenerator.put("viewCount", this.viewCount);
        }
        if (this.favoriteCount > 0) {
            attributeGenerator.put("favoriteCount", this.favoriteCount);
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.viewCount = attributeHelper.consumeLong("viewCount", false, 0L);
        this.favoriteCount = attributeHelper.consumeLong("favoriteCount", false, 0L);
    }
}
