package com.google.gdata.data.calendar;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class AttendeeFeed extends BaseFeed<AttendeeFeed, AttendeeEntry> {
    public AttendeeFeed() {
        super(AttendeeEntry.class);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
