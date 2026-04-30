package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.teamlog.GroupLogInfo;
import com.dropbox.core.v2.teamlog.UserLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ParticipantLogInfo {
    public static final ParticipantLogInfo OTHER = new ParticipantLogInfo().withTag(Tag.OTHER);
    private Tag _tag;
    private GroupLogInfo groupValue;
    private UserLogInfo userValue;

    public enum Tag {
        USER,
        GROUP,
        OTHER
    }

    private ParticipantLogInfo() {
    }

    private ParticipantLogInfo withTag(Tag tag) {
        ParticipantLogInfo participantLogInfo = new ParticipantLogInfo();
        participantLogInfo._tag = tag;
        return participantLogInfo;
    }

    private ParticipantLogInfo withTagAndUser(Tag tag, UserLogInfo userLogInfo) {
        ParticipantLogInfo participantLogInfo = new ParticipantLogInfo();
        participantLogInfo._tag = tag;
        participantLogInfo.userValue = userLogInfo;
        return participantLogInfo;
    }

    private ParticipantLogInfo withTagAndGroup(Tag tag, GroupLogInfo groupLogInfo) {
        ParticipantLogInfo participantLogInfo = new ParticipantLogInfo();
        participantLogInfo._tag = tag;
        participantLogInfo.groupValue = groupLogInfo;
        return participantLogInfo;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUser() {
        return this._tag == Tag.USER;
    }

    public static ParticipantLogInfo user(UserLogInfo userLogInfo) {
        if (userLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ParticipantLogInfo().withTagAndUser(Tag.USER, userLogInfo);
    }

    public UserLogInfo getUserValue() {
        if (this._tag != Tag.USER) {
            throw new IllegalStateException("Invalid tag: required Tag.USER, but was Tag." + this._tag.name());
        }
        return this.userValue;
    }

    public boolean isGroup() {
        return this._tag == Tag.GROUP;
    }

    public static ParticipantLogInfo group(GroupLogInfo groupLogInfo) {
        if (groupLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ParticipantLogInfo().withTagAndGroup(Tag.GROUP, groupLogInfo);
    }

    public GroupLogInfo getGroupValue() {
        if (this._tag != Tag.GROUP) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP, but was Tag." + this._tag.name());
        }
        return this.groupValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.userValue, this.groupValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ParticipantLogInfo)) {
            return false;
        }
        ParticipantLogInfo participantLogInfo = (ParticipantLogInfo) obj;
        if (this._tag != participantLogInfo._tag) {
            return false;
        }
        switch (this._tag) {
            case USER:
                return this.userValue == participantLogInfo.userValue || this.userValue.equals(participantLogInfo.userValue);
            case GROUP:
                return this.groupValue == participantLogInfo.groupValue || this.groupValue.equals(participantLogInfo.groupValue);
            case OTHER:
                return true;
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

    class Serializer extends UnionSerializer<ParticipantLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ParticipantLogInfo participantLogInfo, g gVar) throws IOException {
            switch (participantLogInfo.tag()) {
                case USER:
                    gVar.e();
                    writeTag("user", gVar);
                    gVar.a("user");
                    UserLogInfo.Serializer.INSTANCE.serialize(participantLogInfo.userValue, gVar);
                    gVar.f();
                    break;
                case GROUP:
                    gVar.e();
                    writeTag("group", gVar);
                    GroupLogInfo.Serializer.INSTANCE.serialize(participantLogInfo.groupValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ParticipantLogInfo deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ParticipantLogInfo participantLogInfoGroup;
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
            if ("user".equals(tag)) {
                expectField("user", kVar);
                participantLogInfoGroup = ParticipantLogInfo.user(UserLogInfo.Serializer.INSTANCE.deserialize(kVar));
            } else if ("group".equals(tag)) {
                participantLogInfoGroup = ParticipantLogInfo.group(GroupLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                participantLogInfoGroup = ParticipantLogInfo.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return participantLogInfoGroup;
        }
    }
}
