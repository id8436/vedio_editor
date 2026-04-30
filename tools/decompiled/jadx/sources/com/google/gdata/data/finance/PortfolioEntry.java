package com.google.gdata.data.finance;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(PortfolioEntry.KIND)
public class PortfolioEntry extends BaseEntry<PortfolioEntry> {
    public static final String KIND = "http://schemas.google.com/finance/2007#portfolio";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public PortfolioEntry() {
        getCategories().add(CATEGORY);
    }

    public PortfolioEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(PortfolioEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(PortfolioEntry.class, PortfolioFeedLink.class);
            new PortfolioFeedLink().declareExtensions(extensionProfile);
            extensionProfile.declare(PortfolioEntry.class, PortfolioData.getDefaultDescription(true, false));
            new PortfolioData().declareExtensions(extensionProfile);
        }
    }

    public PortfolioFeedLink getFeedLink() {
        return (PortfolioFeedLink) getExtension(PortfolioFeedLink.class);
    }

    public void setFeedLink(PortfolioFeedLink portfolioFeedLink) {
        if (portfolioFeedLink == null) {
            removeExtension(PortfolioFeedLink.class);
        } else {
            setExtension(portfolioFeedLink);
        }
    }

    public boolean hasFeedLink() {
        return hasExtension(PortfolioFeedLink.class);
    }

    public PortfolioData getPortfolioData() {
        return (PortfolioData) getExtension(PortfolioData.class);
    }

    public void setPortfolioData(PortfolioData portfolioData) {
        if (portfolioData == null) {
            removeExtension(PortfolioData.class);
        } else {
            setExtension(portfolioData);
        }
    }

    public boolean hasPortfolioData() {
        return hasExtension(PortfolioData.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{PortfolioEntry " + super.toString() + "}";
    }
}
