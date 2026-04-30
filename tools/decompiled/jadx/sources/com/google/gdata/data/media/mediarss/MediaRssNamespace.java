package com.google.gdata.data.media.mediarss;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public class MediaRssNamespace {
    public static final String PREFIX = "media";
    public static final String URI = "http://search.yahoo.com/mrss/";
    public static final XmlNamespace NS = new XmlNamespace("media", URI);
    private static final ExtensionDescription[] STANDARD_EXTENSIONS = {ExtensionDescription.getDefaultDescription(MediaRating.class), ExtensionDescription.getDefaultDescription(MediaTitle.class), ExtensionDescription.getDefaultDescription(MediaDescription.class), MediaKeywords.getDefaultDescription(), MediaThumbnail.getDefaultDescription(), ExtensionDescription.getDefaultDescription(MediaCategory.class), ExtensionDescription.getDefaultDescription(MediaHash.class), MediaPlayer.getDefaultDescription(), ExtensionDescription.getDefaultDescription(MediaCredit.class), ExtensionDescription.getDefaultDescription(MediaCopyright.class), ExtensionDescription.getDefaultDescription(MediaText.class), ExtensionDescription.getDefaultDescription(MediaRestriction.class)};

    public static void declareAll(ExtensionProfile extensionProfile) {
        extensionProfile.declareAdditionalNamespace(NS);
        extensionProfile.declare(BaseEntry.class, MediaGroup.getDefaultDescription());
        extensionProfile.declare(BaseEntry.class, MediaContent.getDefaultDescription(false));
        extensionProfile.declare(MediaGroup.class, MediaContent.getDefaultDescription(true));
        for (ExtensionDescription extensionDescription : STANDARD_EXTENSIONS) {
            extensionProfile.declare(BaseEntry.class, extensionDescription);
            extensionProfile.declare(BaseFeed.class, extensionDescription);
            extensionProfile.declare(MediaGroup.class, extensionDescription);
            extensionProfile.declare(MediaContent.class, extensionDescription);
        }
    }
}
