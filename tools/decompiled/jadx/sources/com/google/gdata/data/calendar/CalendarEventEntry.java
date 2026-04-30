package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Link;
import com.google.gdata.data.extensions.BaseEventEntry;
import com.google.gdata.data.extensions.ExtendedProperty;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CalendarEventEntry extends BaseEventEntry<CalendarEventEntry> {
    @Override // com.google.gdata.data.extensions.BaseEventEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(CalendarEventEntry.class, QuickAddProperty.getDefaultDescription());
        extensionProfile.declare(CalendarEventEntry.class, ExtendedProperty.getDefaultDescription());
        extensionProfile.declare(CalendarEventEntry.class, SendEventNotificationsProperty.getDefaultDescription());
        extensionProfile.declare(CalendarEventEntry.class, IcalUIDProperty.getDefaultDescription());
        extensionProfile.declare(CalendarEventEntry.class, SequenceNumberProperty.getDefaultDescription());
        extensionProfile.declare(CalendarEventEntry.class, SyncEventProperty.getDefaultDescription());
        extensionProfile.declare(CalendarEventEntry.class, PrivateCopyProperty.getDefaultDescription(false, false));
        extensionProfile.declare(CalendarEventEntry.class, EventWho.getDefaultDescription());
        extensionProfile.declare(EventWho.class, ResourceProperty.getDefaultDescription());
        extensionProfile.declare(Link.class, WebContent.getDefaultDescription());
        extensionProfile.declare(CalendarEventEntry.class, GuestsCanModifyProperty.getDefaultDescription(false, false));
        extensionProfile.declare(CalendarEventEntry.class, GuestsCanInviteOthersProperty.getDefaultDescription(false, false));
        extensionProfile.declare(CalendarEventEntry.class, GuestsCanSeeGuestsProperty.getDefaultDescription(false, false));
        extensionProfile.declare(CalendarEventEntry.class, AnyoneCanAddSelfProperty.getDefaultDescription(false, false));
    }

    public List<EventWho> getParticipants() {
        return getRepeatingExtension(EventWho.class);
    }

    public void addParticipant(EventWho eventWho) {
        getParticipants().add(eventWho);
    }

    public List<ExtendedProperty> getExtendedProperty() {
        return getRepeatingExtension(ExtendedProperty.class);
    }

    public void addExtendedProperty(ExtendedProperty extendedProperty) {
        getExtendedProperty().add(extendedProperty);
    }

    public boolean getQuickAdd() {
        QuickAddProperty quickAddProperty = (QuickAddProperty) getExtension(QuickAddProperty.class);
        return quickAddProperty != null && "true".equalsIgnoreCase(quickAddProperty.getValue());
    }

    public void setQuickAdd(boolean z) {
        setExtension(z ? QuickAddProperty.TRUE : QuickAddProperty.FALSE);
    }

    public boolean isSyncEvent() {
        SyncEventProperty syncEventProperty = (SyncEventProperty) getExtension(SyncEventProperty.class);
        return syncEventProperty != null && "true".equalsIgnoreCase(syncEventProperty.getValue());
    }

    public void setSyncEvent(boolean z) {
        setExtension(z ? SyncEventProperty.TRUE : SyncEventProperty.FALSE);
    }

    public boolean isPrivateCopy() {
        PrivateCopyProperty privateCopyProperty = (PrivateCopyProperty) getExtension(PrivateCopyProperty.class);
        return privateCopyProperty != null && privateCopyProperty.getValue().booleanValue();
    }

    public void setPrivateCopy(boolean z) {
        setExtension(z ? PrivateCopyProperty.TRUE : PrivateCopyProperty.FALSE);
    }

    public boolean getSendEventNotifications() {
        SendEventNotificationsProperty sendEventNotificationsProperty = (SendEventNotificationsProperty) getExtension(SendEventNotificationsProperty.class);
        return sendEventNotificationsProperty != null && Boolean.parseBoolean(sendEventNotificationsProperty.getValue());
    }

    public void setSendEventNotifications(boolean z) {
        setExtension(z ? SendEventNotificationsProperty.TRUE : SendEventNotificationsProperty.FALSE);
    }

    public String getIcalUID() {
        IcalUIDProperty icalUIDProperty = (IcalUIDProperty) getExtension(IcalUIDProperty.class);
        if (icalUIDProperty == null) {
            return null;
        }
        return icalUIDProperty.getValue();
    }

    public void setIcalUID(String str) {
        if (str == null) {
            removeExtension(IcalUIDProperty.class);
        } else {
            setExtension(new IcalUIDProperty(str));
        }
    }

    public boolean hasSequence() {
        return hasExtension(SequenceNumberProperty.class);
    }

    public int getSequence() {
        SequenceNumberProperty sequenceNumberProperty = (SequenceNumberProperty) getExtension(SequenceNumberProperty.class);
        if (sequenceNumberProperty == null) {
            return 0;
        }
        return Integer.parseInt(sequenceNumberProperty.getValue());
    }

    public void setSequence(int i) {
        setExtension(new SequenceNumberProperty(String.valueOf(i)));
    }

    public Link getWebContentLink() {
        return getLink(WebContent.REL, (String) null);
    }

    public WebContent getWebContent() {
        Link webContentLink = getWebContentLink();
        if (webContentLink == null) {
            return null;
        }
        return (WebContent) webContentLink.getExtension(WebContent.class);
    }

    public void setWebContent(WebContent webContent) {
        Link webContentLink = getWebContentLink();
        if (webContent == null) {
            if (webContentLink != null) {
                getLinks().remove(webContentLink);
            }
        } else if (webContentLink == null) {
            getLinks().add(webContent.getLink());
        } else if (webContentLink != webContent.getLink()) {
            getLinks().remove(webContentLink);
            getLinks().add(webContent.getLink());
        }
    }

    public void setGuestsCanModify(boolean z) {
        setExtension(z ? GuestsCanModifyProperty.TRUE : GuestsCanModifyProperty.FALSE);
    }

    public boolean isGuestsCanModify() {
        GuestsCanModifyProperty guestsCanModifyProperty = (GuestsCanModifyProperty) getExtension(GuestsCanModifyProperty.class);
        return guestsCanModifyProperty != null && guestsCanModifyProperty.getValue().booleanValue();
    }

    public boolean hasGuestsCanModify() {
        return hasExtension(GuestsCanModifyProperty.class);
    }

    public void setGuestsCanInviteOthers(boolean z) {
        setExtension(z ? GuestsCanInviteOthersProperty.TRUE : GuestsCanInviteOthersProperty.FALSE);
    }

    public boolean isGuestsCanInviteOthers() {
        GuestsCanInviteOthersProperty guestsCanInviteOthersProperty = (GuestsCanInviteOthersProperty) getExtension(GuestsCanInviteOthersProperty.class);
        return guestsCanInviteOthersProperty != null && guestsCanInviteOthersProperty.getValue().booleanValue();
    }

    public boolean hasGuestsCanInviteOthers() {
        return hasExtension(GuestsCanInviteOthersProperty.class);
    }

    public void setGuestsCanSeeGuests(boolean z) {
        setExtension(z ? GuestsCanSeeGuestsProperty.TRUE : GuestsCanSeeGuestsProperty.FALSE);
    }

    public boolean isGuestsCanSeeGuests() {
        GuestsCanSeeGuestsProperty guestsCanSeeGuestsProperty = (GuestsCanSeeGuestsProperty) getExtension(GuestsCanSeeGuestsProperty.class);
        return guestsCanSeeGuestsProperty != null && guestsCanSeeGuestsProperty.getValue().booleanValue();
    }

    public boolean hasGuestsCanSeeGuests() {
        return hasExtension(GuestsCanSeeGuestsProperty.class);
    }

    public void setAnyoneCanAddSelf(boolean z) {
        setExtension(z ? AnyoneCanAddSelfProperty.TRUE : AnyoneCanAddSelfProperty.FALSE);
    }

    public boolean isAnyoneCanAddSelf() {
        AnyoneCanAddSelfProperty anyoneCanAddSelfProperty = (AnyoneCanAddSelfProperty) getExtension(AnyoneCanAddSelfProperty.class);
        return anyoneCanAddSelfProperty != null && anyoneCanAddSelfProperty.getValue().booleanValue();
    }

    public boolean hasAnyoneCanAddSelf() {
        return hasExtension(AnyoneCanAddSelfProperty.class);
    }
}
