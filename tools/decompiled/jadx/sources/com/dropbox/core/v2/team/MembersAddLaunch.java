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
public final class MembersAddLaunch {
    private Tag _tag;
    private String asyncJobIdValue;
    private List<MemberAddResult> completeValue;

    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE
    }

    private MembersAddLaunch() {
    }

    private MembersAddLaunch withTag(Tag tag) {
        MembersAddLaunch membersAddLaunch = new MembersAddLaunch();
        membersAddLaunch._tag = tag;
        return membersAddLaunch;
    }

    private MembersAddLaunch withTagAndAsyncJobId(Tag tag, String str) {
        MembersAddLaunch membersAddLaunch = new MembersAddLaunch();
        membersAddLaunch._tag = tag;
        membersAddLaunch.asyncJobIdValue = str;
        return membersAddLaunch;
    }

    private MembersAddLaunch withTagAndComplete(Tag tag, List<MemberAddResult> list) {
        MembersAddLaunch membersAddLaunch = new MembersAddLaunch();
        membersAddLaunch._tag = tag;
        membersAddLaunch.completeValue = list;
        return membersAddLaunch;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAsyncJobId() {
        return this._tag == Tag.ASYNC_JOB_ID;
    }

    public static MembersAddLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        return new MembersAddLaunch().withTagAndAsyncJobId(Tag.ASYNC_JOB_ID, str);
    }

    public String getAsyncJobIdValue() {
        if (this._tag != Tag.ASYNC_JOB_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this._tag.name());
        }
        return this.asyncJobIdValue;
    }

    public boolean isComplete() {
        return this._tag == Tag.COMPLETE;
    }

    public static MembersAddLaunch complete(List<MemberAddResult> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<MemberAddResult> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new MembersAddLaunch().withTagAndComplete(Tag.COMPLETE, list);
    }

    public List<MemberAddResult> getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.asyncJobIdValue, this.completeValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MembersAddLaunch)) {
            return false;
        }
        MembersAddLaunch membersAddLaunch = (MembersAddLaunch) obj;
        if (this._tag != membersAddLaunch._tag) {
            return false;
        }
        switch (this._tag) {
            case ASYNC_JOB_ID:
                return this.asyncJobIdValue == membersAddLaunch.asyncJobIdValue || this.asyncJobIdValue.equals(membersAddLaunch.asyncJobIdValue);
            case COMPLETE:
                return this.completeValue == membersAddLaunch.completeValue || this.completeValue.equals(membersAddLaunch.completeValue);
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

    class Serializer extends UnionSerializer<MembersAddLaunch> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MembersAddLaunch membersAddLaunch, g gVar) throws IOException {
            switch (membersAddLaunch.tag()) {
                case ASYNC_JOB_ID:
                    gVar.e();
                    writeTag("async_job_id", gVar);
                    gVar.a("async_job_id");
                    StoneSerializers.string().serialize(membersAddLaunch.asyncJobIdValue, gVar);
                    gVar.f();
                    return;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    gVar.a("complete");
                    StoneSerializers.list(MemberAddResult.Serializer.INSTANCE).serialize(membersAddLaunch.completeValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + membersAddLaunch.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MembersAddLaunch deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MembersAddLaunch membersAddLaunchComplete;
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
            if ("async_job_id".equals(tag)) {
                expectField("async_job_id", kVar);
                membersAddLaunchComplete = MembersAddLaunch.asyncJobId(StoneSerializers.string().deserialize(kVar));
            } else if ("complete".equals(tag)) {
                expectField("complete", kVar);
                membersAddLaunchComplete = MembersAddLaunch.complete((List) StoneSerializers.list(MemberAddResult.Serializer.INSTANCE).deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return membersAddLaunchComplete;
        }
    }
}
