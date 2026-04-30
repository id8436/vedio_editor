package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.UserOnPaperDocFilter;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class ListUsersOnPaperDocArgs extends RefPaperDoc {
    protected final UserOnPaperDocFilter filterBy;
    protected final int limit;

    public ListUsersOnPaperDocArgs(String str, int i, UserOnPaperDocFilter userOnPaperDocFilter) {
        super(str);
        if (i < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1");
        }
        if (i > 1000) {
            throw new IllegalArgumentException("Number 'limit' is larger than 1000");
        }
        this.limit = i;
        if (userOnPaperDocFilter == null) {
            throw new IllegalArgumentException("Required value for 'filterBy' is null");
        }
        this.filterBy = userOnPaperDocFilter;
    }

    public ListUsersOnPaperDocArgs(String str) {
        this(str, 1000, UserOnPaperDocFilter.SHARED);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String getDocId() {
        return this.docId;
    }

    public int getLimit() {
        return this.limit;
    }

    public UserOnPaperDocFilter getFilterBy() {
        return this.filterBy;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected final String docId;
        protected UserOnPaperDocFilter filterBy;
        protected int limit;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'docId' is null");
            }
            this.docId = str;
            this.limit = 1000;
            this.filterBy = UserOnPaperDocFilter.SHARED;
        }

        public Builder withLimit(Integer num) {
            if (num.intValue() < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1");
            }
            if (num.intValue() > 1000) {
                throw new IllegalArgumentException("Number 'limit' is larger than 1000");
            }
            if (num != null) {
                this.limit = num.intValue();
            } else {
                this.limit = 1000;
            }
            return this;
        }

        public Builder withFilterBy(UserOnPaperDocFilter userOnPaperDocFilter) {
            if (userOnPaperDocFilter != null) {
                this.filterBy = userOnPaperDocFilter;
            } else {
                this.filterBy = UserOnPaperDocFilter.SHARED;
            }
            return this;
        }

        public ListUsersOnPaperDocArgs build() {
            return new ListUsersOnPaperDocArgs(this.docId, this.limit, this.filterBy);
        }
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.limit), this.filterBy}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListUsersOnPaperDocArgs listUsersOnPaperDocArgs = (ListUsersOnPaperDocArgs) obj;
            return (this.docId == listUsersOnPaperDocArgs.docId || this.docId.equals(listUsersOnPaperDocArgs.docId)) && this.limit == listUsersOnPaperDocArgs.limit && (this.filterBy == listUsersOnPaperDocArgs.filterBy || this.filterBy.equals(listUsersOnPaperDocArgs.filterBy));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListUsersOnPaperDocArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListUsersOnPaperDocArgs listUsersOnPaperDocArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("doc_id");
            StoneSerializers.string().serialize(listUsersOnPaperDocArgs.docId, gVar);
            gVar.a("limit");
            StoneSerializers.int32().serialize(Integer.valueOf(listUsersOnPaperDocArgs.limit), gVar);
            gVar.a("filter_by");
            UserOnPaperDocFilter.Serializer.INSTANCE.serialize(listUsersOnPaperDocArgs.filterBy, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListUsersOnPaperDocArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            UserOnPaperDocFilter userOnPaperDocFilterDeserialize;
            Integer numDeserialize;
            String strDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Integer num = 1000;
                UserOnPaperDocFilter userOnPaperDocFilter = UserOnPaperDocFilter.SHARED;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("doc_id".equals(strD)) {
                        UserOnPaperDocFilter userOnPaperDocFilter2 = userOnPaperDocFilter;
                        numDeserialize = num;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        userOnPaperDocFilterDeserialize = userOnPaperDocFilter2;
                    } else if ("limit".equals(strD)) {
                        strDeserialize = str;
                        userOnPaperDocFilterDeserialize = userOnPaperDocFilter;
                        numDeserialize = StoneSerializers.int32().deserialize(kVar);
                    } else if ("filter_by".equals(strD)) {
                        userOnPaperDocFilterDeserialize = UserOnPaperDocFilter.Serializer.INSTANCE.deserialize(kVar);
                        numDeserialize = num;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        userOnPaperDocFilterDeserialize = userOnPaperDocFilter;
                        numDeserialize = num;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    num = numDeserialize;
                    userOnPaperDocFilter = userOnPaperDocFilterDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"doc_id\" missing.");
                }
                ListUsersOnPaperDocArgs listUsersOnPaperDocArgs = new ListUsersOnPaperDocArgs(str, num.intValue(), userOnPaperDocFilter);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listUsersOnPaperDocArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
