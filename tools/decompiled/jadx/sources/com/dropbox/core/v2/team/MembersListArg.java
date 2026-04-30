package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class MembersListArg {
    protected final boolean includeRemoved;
    protected final long limit;

    public MembersListArg(long j, boolean z) {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j > 1000) {
            throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
        }
        this.limit = j;
        this.includeRemoved = z;
    }

    public MembersListArg() {
        this(1000L, false);
    }

    public long getLimit() {
        return this.limit;
    }

    public boolean getIncludeRemoved() {
        return this.includeRemoved;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected long limit = 1000;
        protected boolean includeRemoved = false;

        protected Builder() {
        }

        public Builder withLimit(Long l) {
            if (l.longValue() < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
            }
            if (l.longValue() > 1000) {
                throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
            }
            if (l != null) {
                this.limit = l.longValue();
            } else {
                this.limit = 1000L;
            }
            return this;
        }

        public Builder withIncludeRemoved(Boolean bool) {
            if (bool != null) {
                this.includeRemoved = bool.booleanValue();
            } else {
                this.includeRemoved = false;
            }
            return this;
        }

        public MembersListArg build() {
            return new MembersListArg(this.limit, this.includeRemoved);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.limit), Boolean.valueOf(this.includeRemoved)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MembersListArg membersListArg = (MembersListArg) obj;
            return this.limit == membersListArg.limit && this.includeRemoved == membersListArg.includeRemoved;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MembersListArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MembersListArg membersListArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("limit");
            StoneSerializers.uInt32().serialize(Long.valueOf(membersListArg.limit), gVar);
            gVar.a("include_removed");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(membersListArg.includeRemoved), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MembersListArg deserialize(k kVar, boolean z) throws IOException {
            Long l;
            Boolean bool;
            String tag = null;
            if (!z) {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long lDeserialize = 1000L;
                Boolean boolDeserialize = false;
                while (true) {
                    l = lDeserialize;
                    bool = boolDeserialize;
                    if (kVar.c() != o.FIELD_NAME) {
                        break;
                    }
                    String strD = kVar.d();
                    kVar.a();
                    if ("limit".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("include_removed".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        lDeserialize = l;
                    }
                }
                MembersListArg membersListArg = new MembersListArg(l.longValue(), bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return membersListArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
