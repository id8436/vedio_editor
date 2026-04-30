package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.FileAction;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class ListFilesArg {
    protected final List<FileAction> actions;
    protected final long limit;

    public ListFilesArg(long j, List<FileAction> list) {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j > 300) {
            throw new IllegalArgumentException("Number 'limit' is larger than 300L");
        }
        this.limit = j;
        if (list != null) {
            Iterator<FileAction> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        this.actions = list;
    }

    public ListFilesArg() {
        this(100L, null);
    }

    public long getLimit() {
        return this.limit;
    }

    public List<FileAction> getActions() {
        return this.actions;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected long limit = 100;
        protected List<FileAction> actions = null;

        protected Builder() {
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

        public Builder withActions(List<FileAction> list) {
            if (list != null) {
                Iterator<FileAction> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'actions' is null");
                    }
                }
            }
            this.actions = list;
            return this;
        }

        public ListFilesArg build() {
            return new ListFilesArg(this.limit, this.actions);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.limit), this.actions});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListFilesArg listFilesArg = (ListFilesArg) obj;
            if (this.limit == listFilesArg.limit) {
                if (this.actions == listFilesArg.actions) {
                    return true;
                }
                if (this.actions != null && this.actions.equals(listFilesArg.actions)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListFilesArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFilesArg listFilesArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("limit");
            StoneSerializers.uInt32().serialize(Long.valueOf(listFilesArg.limit), gVar);
            if (listFilesArg.actions != null) {
                gVar.a("actions");
                StoneSerializers.nullable(StoneSerializers.list(FileAction.Serializer.INSTANCE)).serialize(listFilesArg.actions, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFilesArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            Long lDeserialize;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = 100L;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("limit".equals(strD)) {
                        List list3 = list2;
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                        list = list3;
                    } else if ("actions".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(FileAction.Serializer.INSTANCE)).deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        list = list2;
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                    list2 = list;
                }
                ListFilesArg listFilesArg = new ListFilesArg(l.longValue(), list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFilesArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
