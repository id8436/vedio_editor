package com.google.gdata.data.finance;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(PositionEntry.KIND)
public class PositionEntry extends BaseEntry<PositionEntry> {
    public static final String KIND = "http://schemas.google.com/finance/2007#position";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public PositionEntry() {
        getCategories().add(CATEGORY);
    }

    public PositionEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(PositionEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(PositionEntry.class, PositionFeedLink.class);
            new PositionFeedLink().declareExtensions(extensionProfile);
            extensionProfile.declare(PositionEntry.class, PositionData.getDefaultDescription(true, false));
            new PositionData().declareExtensions(extensionProfile);
            extensionProfile.declare(PositionEntry.class, Symbol.getDefaultDescription(true, false));
        }
    }

    public PositionFeedLink getFeedLink() {
        return (PositionFeedLink) getExtension(PositionFeedLink.class);
    }

    public void setFeedLink(PositionFeedLink positionFeedLink) {
        if (positionFeedLink == null) {
            removeExtension(PositionFeedLink.class);
        } else {
            setExtension(positionFeedLink);
        }
    }

    public boolean hasFeedLink() {
        return hasExtension(PositionFeedLink.class);
    }

    public PositionData getPositionData() {
        return (PositionData) getExtension(PositionData.class);
    }

    public void setPositionData(PositionData positionData) {
        if (positionData == null) {
            removeExtension(PositionData.class);
        } else {
            setExtension(positionData);
        }
    }

    public boolean hasPositionData() {
        return hasExtension(PositionData.class);
    }

    public Symbol getSymbol() {
        return (Symbol) getExtension(Symbol.class);
    }

    public void setSymbol(Symbol symbol) {
        if (symbol == null) {
            removeExtension(Symbol.class);
        } else {
            setExtension(symbol);
        }
    }

    public boolean hasSymbol() {
        return hasExtension(Symbol.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{PositionEntry " + super.toString() + "}";
    }
}
