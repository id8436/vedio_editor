package com.google.gdata.data.maps;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(FeatureEntry.KIND)
public class FeatureFeed extends BaseFeed<FeatureFeed, FeatureEntry> {
    private boolean isKmlDefault;

    public FeatureFeed() {
        super(FeatureEntry.class);
        this.isKmlDefault = true;
        getCategories().add(FeatureEntry.CATEGORY);
    }

    public FeatureFeed(BaseFeed<?, ?> baseFeed) {
        super(FeatureEntry.class, baseFeed);
        this.isKmlDefault = true;
    }

    public Link getAtomFeedLink() {
        return getLink(ILink.Rel.FEED, ILink.Type.ATOM);
    }

    public String toString() {
        return "{FeatureFeed " + super.toString() + "}";
    }

    public void setKmlDefault(boolean z) {
        this.isKmlDefault = z;
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.Source
    public void generateAtom(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        if (this.isKmlDefault) {
            xmlWriter.setDefaultNamespace(DataConstants.KML_NAMESPACE);
        }
        super.generateAtom(xmlWriter, extensionProfile);
    }
}
