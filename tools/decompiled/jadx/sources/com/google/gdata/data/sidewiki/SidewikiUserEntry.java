package com.google.gdata.data.sidewiki;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class SidewikiUserEntry extends BaseEntry<SidewikiUserEntry> {
    public SidewikiUserEntry() {
        setKind("sidewiki#sidewikiUserEntry");
    }

    public SidewikiUserEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(SidewikiUserEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(SidewikiUserEntry.class, SidewikiAuthor.getDefaultDescription(false, true));
            new SidewikiAuthor().declareExtensions(extensionProfile);
        }
    }

    public String toString() {
        return "{SidewikiUserEntry " + super.toString() + "}";
    }
}
