package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AccountFeed extends BaseFeed<AccountFeed, AccountEntry> {
    public AccountFeed() {
        super(AccountEntry.class);
        setKind("analytics#accounts");
    }

    public AccountFeed(BaseFeed<?, ?> baseFeed) {
        super(AccountEntry.class, baseFeed);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(AccountFeed.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(AccountFeed.class, Segment.getDefaultDescription(false, true));
            new Segment().declareExtensions(extensionProfile);
        }
    }

    public List<Segment> getSegments() {
        return getRepeatingExtension(Segment.class);
    }

    public void addSegment(Segment segment) {
        getSegments().add(segment);
    }

    public boolean hasSegments() {
        return hasRepeatingExtension(Segment.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{AccountFeed " + super.toString() + "}";
    }
}
