package com.google.gdata.data.projecthosting;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class IssuesEntry extends BaseEntry<IssuesEntry> {
    public IssuesEntry() {
    }

    public IssuesEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(IssuesEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(IssuesEntry.class, BlockedOn.getDefaultDescription(false, true));
            new BlockedOn().declareExtensions(extensionProfile);
            extensionProfile.declare(IssuesEntry.class, Blocking.getDefaultDescription(false, true));
            new Blocking().declareExtensions(extensionProfile);
            extensionProfile.declare(IssuesEntry.class, Cc.getDefaultDescription(false, true));
            new Cc().declareExtensions(extensionProfile);
            extensionProfile.declare(IssuesEntry.class, ClosedDate.class);
            extensionProfile.declare(IssuesEntry.class, Id.class);
            extensionProfile.declare(IssuesEntry.class, Label.getDefaultDescription(false, true));
            extensionProfile.declare(IssuesEntry.class, IssuesLink.getDefaultDescription(false, true));
            extensionProfile.declare(IssuesEntry.class, MergedInto.class);
            new MergedInto().declareExtensions(extensionProfile);
            extensionProfile.declare(IssuesEntry.class, Owner.class);
            new Owner().declareExtensions(extensionProfile);
            extensionProfile.declare(IssuesEntry.class, SendEmail.class);
            extensionProfile.declare(IssuesEntry.class, Stars.class);
            extensionProfile.declare(IssuesEntry.class, State.class);
            extensionProfile.declare(IssuesEntry.class, Status.class);
        }
    }

    public List<BlockedOn> getBlockedOns() {
        return getRepeatingExtension(BlockedOn.class);
    }

    public void addBlockedOn(BlockedOn blockedOn) {
        getBlockedOns().add(blockedOn);
    }

    public boolean hasBlockedOns() {
        return hasRepeatingExtension(BlockedOn.class);
    }

    public List<Blocking> getBlockings() {
        return getRepeatingExtension(Blocking.class);
    }

    public void addBlocking(Blocking blocking) {
        getBlockings().add(blocking);
    }

    public boolean hasBlockings() {
        return hasRepeatingExtension(Blocking.class);
    }

    public List<Cc> getCcs() {
        return getRepeatingExtension(Cc.class);
    }

    public void addCc(Cc cc) {
        getCcs().add(cc);
    }

    public boolean hasCcs() {
        return hasRepeatingExtension(Cc.class);
    }

    public ClosedDate getClosedDate() {
        return (ClosedDate) getExtension(ClosedDate.class);
    }

    public void setClosedDate(ClosedDate closedDate) {
        if (closedDate == null) {
            removeExtension(ClosedDate.class);
        } else {
            setExtension(closedDate);
        }
    }

    public boolean hasClosedDate() {
        return hasExtension(ClosedDate.class);
    }

    public Id getIssueId() {
        return (Id) getExtension(Id.class);
    }

    public void setIssueId(Id id) {
        if (id == null) {
            removeExtension(Id.class);
        } else {
            setExtension(id);
        }
    }

    public boolean hasIssueId() {
        return hasExtension(Id.class);
    }

    public List<Label> getLabels() {
        return getRepeatingExtension(Label.class);
    }

    public void addLabel(Label label) {
        getLabels().add(label);
    }

    public boolean hasLabels() {
        return hasRepeatingExtension(Label.class);
    }

    public MergedInto getMergedInto() {
        return (MergedInto) getExtension(MergedInto.class);
    }

    public void setMergedInto(MergedInto mergedInto) {
        if (mergedInto == null) {
            removeExtension(MergedInto.class);
        } else {
            setExtension(mergedInto);
        }
    }

    public boolean hasMergedInto() {
        return hasExtension(MergedInto.class);
    }

    public Owner getOwner() {
        return (Owner) getExtension(Owner.class);
    }

    public void setOwner(Owner owner) {
        if (owner == null) {
            removeExtension(Owner.class);
        } else {
            setExtension(owner);
        }
    }

    public boolean hasOwner() {
        return hasExtension(Owner.class);
    }

    public SendEmail getSendEmail() {
        return (SendEmail) getExtension(SendEmail.class);
    }

    public void setSendEmail(SendEmail sendEmail) {
        if (sendEmail == null) {
            removeExtension(SendEmail.class);
        } else {
            setExtension(sendEmail);
        }
    }

    public boolean hasSendEmail() {
        return hasExtension(SendEmail.class);
    }

    public Stars getStars() {
        return (Stars) getExtension(Stars.class);
    }

    public void setStars(Stars stars) {
        if (stars == null) {
            removeExtension(Stars.class);
        } else {
            setExtension(stars);
        }
    }

    public boolean hasStars() {
        return hasExtension(Stars.class);
    }

    public State getState() {
        return (State) getExtension(State.class);
    }

    public void setState(State state) {
        if (state == null) {
            removeExtension(State.class);
        } else {
            setExtension(state);
        }
    }

    public boolean hasState() {
        return hasExtension(State.class);
    }

    public Status getStatus() {
        return (Status) getExtension(Status.class);
    }

    public void setStatus(Status status) {
        if (status == null) {
            removeExtension(Status.class);
        } else {
            setExtension(status);
        }
    }

    public boolean hasStatus() {
        return hasExtension(Status.class);
    }

    public Link getAtomRepliesLink() {
        return getLink("replies", ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{IssuesEntry " + super.toString() + "}";
    }
}
