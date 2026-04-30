package com.behance.sdk.dto;

import com.behance.sdk.util.BehanceSDKConstants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKShareContentDTO implements Serializable {
    private static final long serialVersionUID = -5162929590101020843L;
    private String coverImageURL;
    private String description;
    private String id;
    private String longUrlToShare;
    private String ownerName;
    private String ownerProfileURL;
    private String shortUrlToShare;
    private List<String> tags;
    private String title;

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getLongUrlToShare() {
        return this.longUrlToShare;
    }

    public void setLongUrlToShare(String str) {
        this.longUrlToShare = str;
    }

    public String getOwnerName() {
        return this.ownerName;
    }

    public void setOwnerName(String str) {
        this.ownerName = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getOwnerProfileURL() {
        return this.ownerProfileURL;
    }

    public void setOwnerProfileURL(String str) {
        this.ownerProfileURL = str;
    }

    public List<String> getTagsList() {
        return this.tags;
    }

    public void setTags(List<String> list) {
        this.tags = list;
    }

    public String getTagsString() {
        StringBuilder sb = new StringBuilder();
        if (this.tags != null) {
            Iterator<String> it = this.tags.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
            }
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    public void setTags(String str) {
        this.tags = new ArrayList(Arrays.asList(str.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR)));
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getCoverImageURL() {
        return this.coverImageURL;
    }

    public void setCoverImageURL(String str) {
        this.coverImageURL = str;
    }

    public String getShortUrlToShare() {
        return this.shortUrlToShare;
    }

    public void setShortUrlToShare(String str) {
        this.shortUrlToShare = str;
    }
}
