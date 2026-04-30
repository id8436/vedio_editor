package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.FolderAction;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class ListFoldersArgs {
    protected final List<FolderAction> actions;
    protected final long limit;

    public ListFoldersArgs(long j, List<FolderAction> list) {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j > 1000) {
            throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
        }
        this.limit = j;
        if (list != null) {
            Iterator<FolderAction> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        this.actions = list;
    }

    public ListFoldersArgs() {
        this(1000L, null);
    }

    public long getLimit() {
        return this.limit;
    }

    public List<FolderAction> getActions() {
        return this.actions;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected long limit = 1000;
        protected List<FolderAction> actions = null;

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

        public Builder withActions(List<FolderAction> list) {
            if (list != null) {
                Iterator<FolderAction> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'actions' is null");
                    }
                }
            }
            this.actions = list;
            return this;
        }

        public ListFoldersArgs build() {
            return new ListFoldersArgs(this.limit, this.actions);
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
            ListFoldersArgs listFoldersArgs = (ListFoldersArgs) obj;
            if (this.limit == listFoldersArgs.limit) {
                if (this.actions == listFoldersArgs.actions) {
                    return true;
                }
                if (this.actions != null && this.actions.equals(listFoldersArgs.actions)) {
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

    class Serializer extends StructSerializer<ListFoldersArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFoldersArgs listFoldersArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("limit");
            StoneSerializers.uInt32().serialize(Long.valueOf(listFoldersArgs.limit), gVar);
            if (listFoldersArgs.actions != null) {
                gVar.a("actions");
                StoneSerializers.nullable(StoneSerializers.list(FolderAction.Serializer.INSTANCE)).serialize(listFoldersArgs.actions, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFoldersArgs deserialize(k kVar, boolean z) throws IOException {
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
                Long l = 1000L;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("limit".equals(strD)) {
                        List list3 = list2;
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                        list = list3;
                    } else if ("actions".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(FolderAction.Serializer.INSTANCE)).deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        list = list2;
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                    list2 = list;
                }
                ListFoldersArgs listFoldersArgs = new ListFoldersArgs(l.longValue(), list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFoldersArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
