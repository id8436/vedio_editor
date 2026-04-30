package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.ListPaperDocsFilterBy;
import com.dropbox.core.v2.paper.ListPaperDocsSortBy;
import com.dropbox.core.v2.paper.ListPaperDocsSortOrder;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class ListPaperDocsArgs {
    protected final ListPaperDocsFilterBy filterBy;
    protected final int limit;
    protected final ListPaperDocsSortBy sortBy;
    protected final ListPaperDocsSortOrder sortOrder;

    public ListPaperDocsArgs(ListPaperDocsFilterBy listPaperDocsFilterBy, ListPaperDocsSortBy listPaperDocsSortBy, ListPaperDocsSortOrder listPaperDocsSortOrder, int i) {
        if (listPaperDocsFilterBy == null) {
            throw new IllegalArgumentException("Required value for 'filterBy' is null");
        }
        this.filterBy = listPaperDocsFilterBy;
        if (listPaperDocsSortBy == null) {
            throw new IllegalArgumentException("Required value for 'sortBy' is null");
        }
        this.sortBy = listPaperDocsSortBy;
        if (listPaperDocsSortOrder == null) {
            throw new IllegalArgumentException("Required value for 'sortOrder' is null");
        }
        this.sortOrder = listPaperDocsSortOrder;
        if (i < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1");
        }
        if (i > 1000) {
            throw new IllegalArgumentException("Number 'limit' is larger than 1000");
        }
        this.limit = i;
    }

    public ListPaperDocsArgs() {
        this(ListPaperDocsFilterBy.DOCS_ACCESSED, ListPaperDocsSortBy.ACCESSED, ListPaperDocsSortOrder.ASCENDING, 1000);
    }

    public ListPaperDocsFilterBy getFilterBy() {
        return this.filterBy;
    }

    public ListPaperDocsSortBy getSortBy() {
        return this.sortBy;
    }

    public ListPaperDocsSortOrder getSortOrder() {
        return this.sortOrder;
    }

    public int getLimit() {
        return this.limit;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected ListPaperDocsFilterBy filterBy = ListPaperDocsFilterBy.DOCS_ACCESSED;
        protected ListPaperDocsSortBy sortBy = ListPaperDocsSortBy.ACCESSED;
        protected ListPaperDocsSortOrder sortOrder = ListPaperDocsSortOrder.ASCENDING;
        protected int limit = 1000;

        protected Builder() {
        }

        public Builder withFilterBy(ListPaperDocsFilterBy listPaperDocsFilterBy) {
            if (listPaperDocsFilterBy != null) {
                this.filterBy = listPaperDocsFilterBy;
            } else {
                this.filterBy = ListPaperDocsFilterBy.DOCS_ACCESSED;
            }
            return this;
        }

        public Builder withSortBy(ListPaperDocsSortBy listPaperDocsSortBy) {
            if (listPaperDocsSortBy != null) {
                this.sortBy = listPaperDocsSortBy;
            } else {
                this.sortBy = ListPaperDocsSortBy.ACCESSED;
            }
            return this;
        }

        public Builder withSortOrder(ListPaperDocsSortOrder listPaperDocsSortOrder) {
            if (listPaperDocsSortOrder != null) {
                this.sortOrder = listPaperDocsSortOrder;
            } else {
                this.sortOrder = ListPaperDocsSortOrder.ASCENDING;
            }
            return this;
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

        public ListPaperDocsArgs build() {
            return new ListPaperDocsArgs(this.filterBy, this.sortBy, this.sortOrder, this.limit);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.filterBy, this.sortBy, this.sortOrder, Integer.valueOf(this.limit)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListPaperDocsArgs listPaperDocsArgs = (ListPaperDocsArgs) obj;
            return (this.filterBy == listPaperDocsArgs.filterBy || this.filterBy.equals(listPaperDocsArgs.filterBy)) && (this.sortBy == listPaperDocsArgs.sortBy || this.sortBy.equals(listPaperDocsArgs.sortBy)) && ((this.sortOrder == listPaperDocsArgs.sortOrder || this.sortOrder.equals(listPaperDocsArgs.sortOrder)) && this.limit == listPaperDocsArgs.limit);
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListPaperDocsArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListPaperDocsArgs listPaperDocsArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("filter_by");
            ListPaperDocsFilterBy.Serializer.INSTANCE.serialize(listPaperDocsArgs.filterBy, gVar);
            gVar.a("sort_by");
            ListPaperDocsSortBy.Serializer.INSTANCE.serialize(listPaperDocsArgs.sortBy, gVar);
            gVar.a("sort_order");
            ListPaperDocsSortOrder.Serializer.INSTANCE.serialize(listPaperDocsArgs.sortOrder, gVar);
            gVar.a("limit");
            StoneSerializers.int32().serialize(Integer.valueOf(listPaperDocsArgs.limit), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListPaperDocsArgs deserialize(k kVar, boolean z) throws IOException {
            String tag = null;
            if (!z) {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                ListPaperDocsFilterBy listPaperDocsFilterByDeserialize = ListPaperDocsFilterBy.DOCS_ACCESSED;
                ListPaperDocsSortBy listPaperDocsSortByDeserialize = ListPaperDocsSortBy.ACCESSED;
                ListPaperDocsSortOrder listPaperDocsSortOrderDeserialize = ListPaperDocsSortOrder.ASCENDING;
                Integer numDeserialize = 1000;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("filter_by".equals(strD)) {
                        listPaperDocsFilterByDeserialize = ListPaperDocsFilterBy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("sort_by".equals(strD)) {
                        listPaperDocsSortByDeserialize = ListPaperDocsSortBy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("sort_order".equals(strD)) {
                        listPaperDocsSortOrderDeserialize = ListPaperDocsSortOrder.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("limit".equals(strD)) {
                        numDeserialize = StoneSerializers.int32().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                ListPaperDocsArgs listPaperDocsArgs = new ListPaperDocsArgs(listPaperDocsFilterByDeserialize, listPaperDocsSortByDeserialize, listPaperDocsSortOrderDeserialize, numDeserialize.intValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listPaperDocsArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
