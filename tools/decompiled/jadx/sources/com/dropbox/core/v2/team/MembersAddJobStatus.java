package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.team.MemberAddResult;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class MembersAddJobStatus {
    public static final MembersAddJobStatus IN_PROGRESS = new MembersAddJobStatus().withTag(Tag.IN_PROGRESS);
    private Tag _tag;
    private List<MemberAddResult> completeValue;
    private String failedValue;

    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    private MembersAddJobStatus() {
    }

    private MembersAddJobStatus withTag(Tag tag) {
        MembersAddJobStatus membersAddJobStatus = new MembersAddJobStatus();
        membersAddJobStatus._tag = tag;
        return membersAddJobStatus;
    }

    private MembersAddJobStatus withTagAndComplete(Tag tag, List<MemberAddResult> list) {
        MembersAddJobStatus membersAddJobStatus = new MembersAddJobStatus();
        membersAddJobStatus._tag = tag;
        membersAddJobStatus.completeValue = list;
        return membersAddJobStatus;
    }

    private MembersAddJobStatus withTagAndFailed(Tag tag, String str) {
        MembersAddJobStatus membersAddJobStatus = new MembersAddJobStatus();
        membersAddJobStatus._tag = tag;
        membersAddJobStatus.failedValue = str;
        return membersAddJobStatus;
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

    public static MembersAddJobStatus complete(List<MemberAddResult> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<MemberAddResult> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new MembersAddJobStatus().withTagAndComplete(Tag.COMPLETE, list);
    }

    public List<MemberAddResult> getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public boolean isFailed() {
        return this._tag == Tag.FAILED;
    }

    public static MembersAddJobStatus failed(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new MembersAddJobStatus().withTagAndFailed(Tag.FAILED, str);
    }

    public String getFailedValue() {
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
        if (obj == null || !(obj instanceof MembersAddJobStatus)) {
            return false;
        }
        MembersAddJobStatus membersAddJobStatus = (MembersAddJobStatus) obj;
        if (this._tag != membersAddJobStatus._tag) {
            return false;
        }
        switch (this._tag) {
            case IN_PROGRESS:
                return true;
            case COMPLETE:
                return this.completeValue == membersAddJobStatus.completeValue || this.completeValue.equals(membersAddJobStatus.completeValue);
            case FAILED:
                return this.failedValue == membersAddJobStatus.failedValue || this.failedValue.equals(membersAddJobStatus.failedValue);
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

    class Serializer extends UnionSerializer<MembersAddJobStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MembersAddJobStatus membersAddJobStatus, g gVar) throws IOException {
            switch (membersAddJobStatus.tag()) {
                case IN_PROGRESS:
                    gVar.b("in_progress");
                    return;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    gVar.a("complete");
                    StoneSerializers.list(MemberAddResult.Serializer.INSTANCE).serialize(membersAddJobStatus.completeValue, gVar);
                    gVar.f();
                    return;
                case FAILED:
                    gVar.e();
                    writeTag("failed", gVar);
                    gVar.a("failed");
                    StoneSerializers.string().serialize(membersAddJobStatus.failedValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + membersAddJobStatus.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MembersAddJobStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MembersAddJobStatus membersAddJobStatusFailed;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("in_progress".equals(tag)) {
                membersAddJobStatusFailed = MembersAddJobStatus.IN_PROGRESS;
            } else if ("complete".equals(tag)) {
                expectField("complete", kVar);
                membersAddJobStatusFailed = MembersAddJobStatus.complete((List) StoneSerializers.list(MemberAddResult.Serializer.INSTANCE).deserialize(kVar));
            } else if ("failed".equals(tag)) {
                expectField("failed", kVar);
                membersAddJobStatusFailed = MembersAddJobStatus.failed(StoneSerializers.string().deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return membersAddJobStatusFailed;
        }
    }
}
