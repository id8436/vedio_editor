package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.MemberAccessLevelResult;
import com.dropbox.core.v2.sharing.RemoveFolderMemberError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RemoveMemberJobStatus {
    public static final RemoveMemberJobStatus IN_PROGRESS = new RemoveMemberJobStatus().withTag(Tag.IN_PROGRESS);
    private Tag _tag;
    private MemberAccessLevelResult completeValue;
    private RemoveFolderMemberError failedValue;

    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    private RemoveMemberJobStatus() {
    }

    private RemoveMemberJobStatus withTag(Tag tag) {
        RemoveMemberJobStatus removeMemberJobStatus = new RemoveMemberJobStatus();
        removeMemberJobStatus._tag = tag;
        return removeMemberJobStatus;
    }

    private RemoveMemberJobStatus withTagAndComplete(Tag tag, MemberAccessLevelResult memberAccessLevelResult) {
        RemoveMemberJobStatus removeMemberJobStatus = new RemoveMemberJobStatus();
        removeMemberJobStatus._tag = tag;
        removeMemberJobStatus.completeValue = memberAccessLevelResult;
        return removeMemberJobStatus;
    }

    private RemoveMemberJobStatus withTagAndFailed(Tag tag, RemoveFolderMemberError removeFolderMemberError) {
        RemoveMemberJobStatus removeMemberJobStatus = new RemoveMemberJobStatus();
        removeMemberJobStatus._tag = tag;
        removeMemberJobStatus.failedValue = removeFolderMemberError;
        return removeMemberJobStatus;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isInProgress() {
        return this._tag == Tag.IN_PROGRESS;
    }

    public boolean isComplete() {
        return this._tag == Tag.COMPLETE;
    }

    public static RemoveMemberJobStatus complete(MemberAccessLevelResult memberAccessLevelResult) {
        if (memberAccessLevelResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RemoveMemberJobStatus().withTagAndComplete(Tag.COMPLETE, memberAccessLevelResult);
    }

    public MemberAccessLevelResult getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public boolean isFailed() {
        return this._tag == Tag.FAILED;
    }

    public static RemoveMemberJobStatus failed(RemoveFolderMemberError removeFolderMemberError) {
        if (removeFolderMemberError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RemoveMemberJobStatus().withTagAndFailed(Tag.FAILED, removeFolderMemberError);
    }

    public RemoveFolderMemberError getFailedValue() {
        if (this._tag != Tag.FAILED) {
            throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this._tag.name());
        }
        return this.failedValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.completeValue, this.failedValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RemoveMemberJobStatus)) {
            return false;
        }
        RemoveMemberJobStatus removeMemberJobStatus = (RemoveMemberJobStatus) obj;
        if (this._tag != removeMemberJobStatus._tag) {
            return false;
        }
        switch (this._tag) {
            case IN_PROGRESS:
                return true;
            case COMPLETE:
                return this.completeValue == removeMemberJobStatus.completeValue || this.completeValue.equals(removeMemberJobStatus.completeValue);
            case FAILED:
                return this.failedValue == removeMemberJobStatus.failedValue || this.failedValue.equals(removeMemberJobStatus.failedValue);
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<RemoveMemberJobStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RemoveMemberJobStatus removeMemberJobStatus, g gVar) throws IOException {
            switch (removeMemberJobStatus.tag()) {
                case IN_PROGRESS:
                    gVar.b("in_progress");
                    return;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    MemberAccessLevelResult.Serializer.INSTANCE.serialize(removeMemberJobStatus.completeValue, gVar, true);
                    gVar.f();
                    return;
                case FAILED:
                    gVar.e();
                    writeTag("failed", gVar);
                    gVar.a("failed");
                    RemoveFolderMemberError.Serializer.INSTANCE.serialize(removeMemberJobStatus.failedValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + removeMemberJobStatus.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RemoveMemberJobStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RemoveMemberJobStatus removeMemberJobStatusFailed;
            if (kVar.c() == o.VALUE_STRING) {
                tag = getStringValue(kVar);
                kVar.a();
                z = true;
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("in_progress".equals(tag)) {
                removeMemberJobStatusFailed = RemoveMemberJobStatus.IN_PROGRESS;
            } else if ("complete".equals(tag)) {
                removeMemberJobStatusFailed = RemoveMemberJobStatus.complete(MemberAccessLevelResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("failed".equals(tag)) {
                expectField("failed", kVar);
                removeMemberJobStatusFailed = RemoveMemberJobStatus.failed(RemoveFolderMemberError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return removeMemberJobStatusFailed;
        }
    }
}
