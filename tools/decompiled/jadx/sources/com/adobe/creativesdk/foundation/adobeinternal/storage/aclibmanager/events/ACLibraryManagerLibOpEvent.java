package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.events;

import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;

/* JADX INFO: loaded from: classes.dex */
public class ACLibraryManagerLibOpEvent {
    private final Type _eventType;
    public String elementId;
    public AdobeLibraryComposite library;
    public String libraryId;

    public enum Type {
        kElementAdded(1),
        kElementRemoved(2),
        kElementUpdated(3),
        kLibraryAdded(4),
        kLibraryDeleted(5),
        kLibraryUnShared(6),
        kLibraryUpdated(7),
        kLibraryRenamed(8),
        kCurrentLibrarySwitched(9),
        kCurrentLibraryUpdated(10),
        kSyncStarted(11),
        kSyncFinished(12),
        kSyncUnavailableDueToNoInternat(13);

        private int _val;

        Type(int i) {
            this._val = 0;
            this._val = i;
        }
    }

    public ACLibraryManagerLibOpEvent(Type type) {
        this._eventType = type;
    }

    public Type getEventType() {
        return this._eventType;
    }
}
