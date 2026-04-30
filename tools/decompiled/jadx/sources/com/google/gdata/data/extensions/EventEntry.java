package com.google.gdata.data.extensions;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/g/2005#event")
public class EventEntry extends BaseEventEntry<EventEntry> {
    public static final Category EVENT_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/g/2005#event");
    public static final String EVENT_KIND = "http://schemas.google.com/g/2005#event";

    public EventEntry() {
    }

    public EventEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.extensions.BaseEventEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(EventEntry.class, Who.getDefaultDescription());
    }

    public List<Who> getParticipants() {
        return getRepeatingExtension(Who.class);
    }

    public void addParticipant(Who who) {
        getParticipants().add(who);
    }
}
