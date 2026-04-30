package com.google.gdata.data.photos;

import com.google.gdata.data.media.mediarss.MediaCategory;
import com.google.gdata.data.media.mediarss.MediaContent;
import com.google.gdata.data.media.mediarss.MediaCredit;
import com.google.gdata.data.media.mediarss.MediaGroup;
import com.google.gdata.data.media.mediarss.MediaKeywords;
import com.google.gdata.data.media.mediarss.MediaThumbnail;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface MediaData extends Extensible {
    List<MediaCategory> getMediaCategories();

    List<MediaContent> getMediaContents();

    List<MediaCredit> getMediaCredits();

    MediaGroup getMediaGroup();

    MediaKeywords getMediaKeywords();

    List<MediaThumbnail> getMediaThumbnails();

    void setKeywords(MediaKeywords mediaKeywords);
}
