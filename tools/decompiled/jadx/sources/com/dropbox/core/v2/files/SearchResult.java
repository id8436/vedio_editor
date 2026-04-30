package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.SearchMatch;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SearchResult {
    protected final List<SearchMatch> matches;
    protected final boolean more;
    protected final long start;

    public SearchResult(List<SearchMatch> list, boolean z, long j) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'matches' is null");
        }
        Iterator<SearchMatch> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'matches' is null");
            }
        }
        this.matches = list;
        this.more = z;
        this.start = j;
    }

    public List<SearchMatch> getMatches() {
        return this.matches;
    }

    public boolean getMore() {
        return this.more;
    }

    public long getStart() {
        return this.start;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.matches, Boolean.valueOf(this.more), Long.valueOf(this.start)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SearchResult searchResult = (SearchResult) obj;
            return (this.matches == searchResult.matches || this.matches.equals(searchResult.matches)) && this.more == searchResult.more && this.start == searchResult.start;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SearchResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SearchResult searchResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("matches");
            StoneSerializers.list(SearchMatch.Serializer.INSTANCE).serialize(searchResult.matches, gVar);
            gVar.a("more");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(searchResult.more), gVar);
            gVar.a("start");
            StoneSerializers.uInt64().serialize(Long.valueOf(searchResult.start), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SearchResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            Boolean boolDeserialize;
            List list;
            Long l = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = null;
                List list2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("matches".equals(strD)) {
                        Long l2 = l;
                        boolDeserialize = bool;
                        list = (List) StoneSerializers.list(SearchMatch.Serializer.INSTANCE).deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("more".equals(strD)) {
                        list = list2;
                        lDeserialize = l;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("start".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        boolDeserialize = bool;
                        list = list2;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        boolDeserialize = bool;
                        list = list2;
                    }
                    list2 = list;
                    bool = boolDeserialize;
                    l = lDeserialize;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"matches\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"more\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"start\" missing.");
                }
                SearchResult searchResult = new SearchResult(list2, bool.booleanValue(), l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return searchResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
