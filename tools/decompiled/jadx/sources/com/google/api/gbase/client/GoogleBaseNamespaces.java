package com.google.api.gbase.client;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.PubControl;
import com.google.gdata.data.extensions.FeedLink;
import com.google.gdata.data.media.mediarss.MediaContent;
import com.google.gdata.data.media.mediarss.MediaThumbnail;
import com.google.gdata.util.common.xml.XmlWriter;

/* JADX INFO: loaded from: classes3.dex */
class GoogleBaseNamespaces {
    public static final String GM_ALIAS = "gm";
    public static final String GM_URI = "http://base.google.com/ns-metadata/1.0";
    public static final XmlWriter.Namespace GM = new XmlWriter.Namespace(GM_ALIAS, GM_URI);
    public static final String G_ALIAS = "g";
    public static final String G_URI = "http://base.google.com/ns/1.0";
    public static final XmlWriter.Namespace G = new XmlWriter.Namespace(G_ALIAS, G_URI);

    GoogleBaseNamespaces() {
    }

    public static void declareAllExtensions(ExtensionProfile extensionProfile) {
        declareGExtensions(extensionProfile);
        declareGMExtensions(extensionProfile);
        declareMediaExtensions(extensionProfile);
    }

    public static void declareGExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declareEntryExtension(GoogleBaseAttributesExtension.DESCRIPTION);
        extensionProfile.declareFeedExtension(GoogleBaseAttributesExtension.DESCRIPTION);
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(FeedLink.class);
        defaultDescription.setRepeatable(true);
        extensionProfile.declare(GoogleBaseEntry.class, defaultDescription);
    }

    public static void declareGMExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declareEntryExtension(Stats.class);
        extensionProfile.declareEntryExtension(AttributeHistogram.class);
        extensionProfile.declareEntryExtension(GmAttributes.class);
        extensionProfile.declareEntryExtension(GmItemType.class);
        extensionProfile.declare(PubControl.class, GmDisapproved.getDefaultDescription());
        extensionProfile.declare(PubControl.class, GmPublishingPriority.getDefaultDescription());
    }

    public static void declareMediaExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(GoogleBaseMediaEntry.class, MediaContent.class);
        extensionProfile.declare(MediaContent.class, MediaThumbnail.class);
    }
}
