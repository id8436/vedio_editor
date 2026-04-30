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

/* JADX INFO: loaded from: classes2.dex */
class ListFolderMembersCursorArg {
    protected final List<MemberAction> actions;
    protected final long limit;

    public ListFolderMembersCursorArg(List<MemberAction> list, long j) {
        if (list != null) {
            Iterator<MemberAction> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        this.actions = list;
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j > 1000) {
            throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
        }
        this.limit = j;
    }

    public ListFolderMembersCursorArg() {
        this(null, 1000L);
    }

    public List<MemberAction> getActions() {
        return this.actions;
    }

    public long getLimit() {
        return this.limit;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected List<MemberAction> actions = null;
        protected long limit = 1000;

        protected Builder() {
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

        public ListFolderMembersCursorArg build() {
            return new ListFolderMembersCursorArg(this.actions, this.limit);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.actions, Long.valueOf(this.limit)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListFolderMembersCursorArg listFolderMembersCursorArg = (ListFolderMembersCursorArg) obj;
            return (this.actions == listFolderMembersCursorArg.actions || (this.actions != null && this.actions.equals(listFolderMembersCursorArg.actions))) && this.limit == listFolderMembersCursorArg.limit;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListFolderMembersCursorArg> {
        public static final Serializer INSTANCE = new Serializer();

        private Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFolderMembersCursorArg listFolderMembersCursorArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (listFolderMembersCursorArg.actions != null) {
                gVar.a("actions");
                StoneSerializers.nullable(StoneSerializers.list(MemberAction.Serializer.INSTANCE)).serialize(listFolderMembersCursorArg.actions, gVar);
            }
            gVar.a("limit");
            StoneSerializers.uInt32().serialize(Long.valueOf(listFolderMembersCursorArg.limit), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFolderMembersCursorArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            List list;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = 1000L;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("actions".equals(strD)) {
                        Long l2 = l;
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberAction.Serializer.INSTANCE)).deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("limit".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                        list = list2;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        list = list2;
                    }
                    list2 = list;
                    l = lDeserialize;
                }
                ListFolderMembersCursorArg listFolderMembersCursorArg = new ListFolderMembersCursorArg(list2, l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFolderMembersCursorArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
