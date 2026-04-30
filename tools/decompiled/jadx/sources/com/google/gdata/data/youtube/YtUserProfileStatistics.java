package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "statistics", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtUserProfileStatistics extends AbstractExtension {
    private DateTime lastWebAccess;
    private long subscriberCount;
    private long totalUploadViews;
    private long videoWatchCount;
    private long viewCount;

    public long getViewCount() {
        return this.viewCount;
    }

    public void setViewCount(long j) {
        this.viewCount = j;
    }

    public long getVideoWatchCount() {
        return this.videoWatchCount;
    }

    public void setVideoWatchCount(long j) {
        this.videoWatchCount = j;
    }

    public long getSubscriberCount() {
        return this.subscriberCount;
    }

    public void setSubscriberCount(long j) {
        this.subscriberCount = j;
    }

    public DateTime getLastWebAccess() {
        return this.lastWebAccess;
    }

    public void setLastWebAccess(DateTime dateTime) {
        this.lastWebAccess = dateTime;
    }

    public long getTotalUploadViews() {
        return this.totalUploadViews;
    }

    public void setTotalUploadViews(long j) {
        this.totalUploadViews = j;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        putAttributeIfGreaterZero(attributeGenerator, "viewCount", this.viewCount);
        putAttributeIfGreaterZero(attributeGenerator, "videoWatchCount", this.videoWatchCount);
        putAttributeIfGreaterZero(attributeGenerator, "subscriberCount", this.subscriberCount);
        putAttributeIfGreaterZero(attributeGenerator, "totalUploadViews", this.totalUploadViews);
        if (this.lastWebAccess != null) {
            attributeGenerator.put("lastWebAccess", (Object) this.lastWebAccess);
        }
    }

    private void putAttributeIfGreaterZero(AttributeGenerator attributeGenerator, String str, long j) {
        if (j > 0) {
            attributeGenerator.put(str, j);
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.viewCount = attributeHelper.consumeLong("viewCount", false, 0L);
        this.videoWatchCount = attributeHelper.consumeLong("videoWatchCount", false, 0L);
        this.subscriberCount = attributeHelper.consumeLong("subscriberCount", false, 0L);
        this.totalUploadViews = attributeHelper.consumeLong("totalUploadViews", false, 0L);
        this.lastWebAccess = attributeHelper.consumeDateTime("lastWebAccess", false);
    }
}
