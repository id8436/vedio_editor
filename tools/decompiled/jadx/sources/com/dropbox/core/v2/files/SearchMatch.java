package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.Metadata;
import com.dropbox.core.v2.files.SearchMatchType;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SearchMatch {
    protected final SearchMatchType matchType;
    protected final Metadata metadata;

    public SearchMatch(SearchMatchType searchMatchType, Metadata metadata) {
        if (searchMatchType == null) {
            throw new IllegalArgumentException("Required value for 'matchType' is null");
        }
        this.matchType = searchMatchType;
        if (metadata == null) {
            throw new IllegalArgumentException("Required value for 'metadata' is null");
        }
        this.metadata = metadata;
    }

    public SearchMatchType getMatchType() {
        return this.matchType;
    }

    public Metadata getMetadata() {
        return this.metadata;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.matchType, this.metadata});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SearchMatch searchMatch = (SearchMatch) obj;
            return (this.matchType == searchMatch.matchType || this.matchType.equals(searchMatch.matchType)) && (this.metadata == searchMatch.metadata || this.metadata.equals(searchMatch.metadata));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SearchMatch> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SearchMatch searchMatch, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("match_type");
            SearchMatchType.Serializer.INSTANCE.serialize(searchMatch.matchType, gVar);
            gVar.a("metadata");
            Metadata.Serializer.INSTANCE.serialize(searchMatch.metadata, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SearchMatch deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Metadata metadataDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                SearchMatchType searchMatchTypeDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("match_type".equals(strD)) {
                        searchMatchTypeDeserialize = SearchMatchType.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("metadata".equals(strD)) {
                        metadataDeserialize = Metadata.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (searchMatchTypeDeserialize == null) {
                    throw new j(kVar, "Required field \"match_type\" missing.");
                }
                if (metadataDeserialize == null) {
                    throw new j(kVar, "Required field \"metadata\" missing.");
                }
                SearchMatch searchMatch = new SearchMatch(searchMatchTypeDeserialize, metadataDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return searchMatch;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
