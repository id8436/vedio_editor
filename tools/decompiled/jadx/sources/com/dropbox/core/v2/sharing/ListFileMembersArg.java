package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.MemberAction;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class ListFileMembersArg {
    protected final List<MemberAction> actions;
    protected final String file;
    protected final boolean includeInherited;
    protected final long limit;

    public ListFileMembersArg(String str, List<MemberAction> list, boolean z, long j) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'file' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'file' is shorter than 1");
        }
        if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
            throw new IllegalArgumentException("String 'file' does not match pattern");
        }
        this.file = str;
        if (list != null) {
            Iterator<MemberAction> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        this.actions = list;
        this.includeInherited = z;
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j > 300) {
            throw new IllegalArgumentException("Number 'limit' is larger than 300L");
        }
        this.limit = j;
    }

    public ListFileMembersArg(String str) {
        this(str, null, true, 100L);
    }

    public String getFile() {
        return this.file;
    }

    public List<MemberAction> getActions() {
        return this.actions;
    }

    public boolean getIncludeInherited() {
        return this.includeInherited;
    }

    public long getLimit() {
        return this.limit;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected List<MemberAction> actions;
        protected final String file;
        protected boolean includeInherited;
        protected long limit;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'file' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("String 'file' is shorter than 1");
            }
            if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
                throw new IllegalArgumentException("String 'file' does not match pattern");
            }
            this.file = str;
            this.actions = null;
            this.includeInherited = true;
            this.limit = 100L;
        }

        public Builder withActions(List<MemberAction> list) {
            if (list != null) {
                Iterator<MemberAction> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'actions' is null");
                    }
                }
            }
            this.actions = list;
            return this;
        }

        public Builder withIncludeInherited(Boolean bool) {
            if (bool != null) {
                this.includeInherited = bool.booleanValue();
            } else {
                this.includeInherited = true;
            }
            return this;
        }

        public Builder withLimit(Long l) {
            if (l.longValue() < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
            }
            if (l.longValue() > 300) {
                throw new IllegalArgumentException("Number 'limit' is larger than 300L");
            }
            if (l != null) {
                this.limit = l.longValue();
            } else {
                this.limit = 100L;
            }
            return this;
        }

        public ListFileMembersArg build() {
            return new ListFileMembersArg(this.file, this.actions, this.includeInherited, this.limit);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.file, this.actions, Boolean.valueOf(this.includeInherited), Long.valueOf(this.limit)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListFileMembersArg listFileMembersArg = (ListFileMembersArg) obj;
            return (this.file == listFileMembersArg.file || this.file.equals(listFileMembersArg.file)) && (this.actions == listFileMembersArg.actions || (this.actions != null && this.actions.equals(listFileMembersArg.actions))) && this.includeInherited == listFileMembersArg.includeInherited && this.limit == listFileMembersArg.limit;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListFileMembersArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFileMembersArg listFileMembersArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("file");
            StoneSerializers.string().serialize(listFileMembersArg.file, gVar);
            if (listFileMembersArg.actions != null) {
                gVar.a("actions");
                StoneSerializers.nullable(StoneSerializers.list(MemberAction.Serializer.INSTANCE)).serialize(listFileMembersArg.actions, gVar);
            }
            gVar.a("include_inherited");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listFileMembersArg.includeInherited), gVar);
            gVar.a("limit");
            StoneSerializers.uInt32().serialize(Long.valueOf(listFileMembersArg.limit), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFileMembersArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            String strDeserialize;
            Boolean boolDeserialize;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = true;
                Long l = 100L;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("file".equals(strD)) {
                        boolDeserialize = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("actions".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberAction.Serializer.INSTANCE)).deserialize(kVar);
                        lDeserialize = l;
                        Boolean bool2 = bool;
                        strDeserialize = str;
                        boolDeserialize = bool2;
                    } else if ("include_inherited".equals(strD)) {
                        strDeserialize = str;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("limit".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                        Boolean bool3 = bool;
                        strDeserialize = str;
                        boolDeserialize = bool3;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        Boolean bool4 = bool;
                        strDeserialize = str;
                        boolDeserialize = bool4;
                    }
                    l = lDeserialize;
                    Boolean bool5 = boolDeserialize;
                    str = strDeserialize;
                    bool = bool5;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"file\" missing.");
                }
                ListFileMembersArg listFileMembersArg = new ListFileMembersArg(str, list, bool.booleanValue(), l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFileMembersArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
