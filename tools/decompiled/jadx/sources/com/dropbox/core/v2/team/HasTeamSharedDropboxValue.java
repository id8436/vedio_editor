package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class HasTeamSharedDropboxValue {
    public static final HasTeamSharedDropboxValue OTHER = new HasTeamSharedDropboxValue().withTag(Tag.OTHER);
    private Tag _tag;
    private Boolean hasTeamSharedDropboxValue;

    public enum Tag {
        HAS_TEAM_SHARED_DROPBOX,
        OTHER
    }

    private HasTeamSharedDropboxValue() {
    }

    private HasTeamSharedDropboxValue withTag(Tag tag) {
        HasTeamSharedDropboxValue hasTeamSharedDropboxValue = new HasTeamSharedDropboxValue();
        hasTeamSharedDropboxValue._tag = tag;
        return hasTeamSharedDropboxValue;
    }

    private HasTeamSharedDropboxValue withTagAndHasTeamSharedDropbox(Tag tag, Boolean bool) {
        HasTeamSharedDropboxValue hasTeamSharedDropboxValue = new HasTeamSharedDropboxValue();
        hasTeamSharedDropboxValue._tag = tag;
        hasTeamSharedDropboxValue.hasTeamSharedDropboxValue = bool;
        return hasTeamSharedDropboxValue;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isHasTeamSharedDropbox() {
        return this._tag == Tag.HAS_TEAM_SHARED_DROPBOX;
    }

    public static HasTeamSharedDropboxValue hasTeamSharedDropbox(boolean z) {
        return new HasTeamSharedDropboxValue().withTagAndHasTeamSharedDropbox(Tag.HAS_TEAM_SHARED_DROPBOX, Boolean.valueOf(z));
    }

    public boolean getHasTeamSharedDropboxValue() {
        if (this._tag != Tag.HAS_TEAM_SHARED_DROPBOX) {
            throw new IllegalStateException("Invalid tag: required Tag.HAS_TEAM_SHARED_DROPBOX, but was Tag." + this._tag.name());
        }
        return this.hasTeamSharedDropboxValue.booleanValue();
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.hasTeamSharedDropboxValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof HasTeamSharedDropboxValue)) {
            return false;
        }
        HasTeamSharedDropboxValue hasTeamSharedDropboxValue = (HasTeamSharedDropboxValue) obj;
        if (this._tag != hasTeamSharedDropboxValue._tag) {
            return false;
        }
        switch (this._tag) {
            case HAS_TEAM_SHARED_DROPBOX:
                return this.hasTeamSharedDropboxValue == hasTeamSharedDropboxValue.hasTeamSharedDropboxValue;
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

    class Serializer extends UnionSerializer<HasTeamSharedDropboxValue> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(HasTeamSharedDropboxValue hasTeamSharedDropboxValue, g gVar) throws IOException {
            switch (hasTeamSharedDropboxValue.tag()) {
                case HAS_TEAM_SHARED_DROPBOX:
                    gVar.e();
                    writeTag("has_team_shared_dropbox", gVar);
                    gVar.a("has_team_shared_dropbox");
                    StoneSerializers.boolean_().serialize(hasTeamSharedDropboxValue.hasTeamSharedDropboxValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public HasTeamSharedDropboxValue deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            HasTeamSharedDropboxValue hasTeamSharedDropboxValueHasTeamSharedDropbox;
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
            if ("has_team_shared_dropbox".equals(tag)) {
                expectField("has_team_shared_dropbox", kVar);
                hasTeamSharedDropboxValueHasTeamSharedDropbox = HasTeamSharedDropboxValue.hasTeamSharedDropbox(StoneSerializers.boolean_().deserialize(kVar).booleanValue());
            } else {
                hasTeamSharedDropboxValueHasTeamSharedDropbox = HasTeamSharedDropboxValue.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return hasTeamSharedDropboxValueHasTeamSharedDropbox;
        }
    }
}
