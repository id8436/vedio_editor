package com.dropbox.core.v2.files;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.SearchMode;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class SearchArg {
    protected final long maxResults;
    protected final SearchMode mode;
    protected final String path;
    protected final String query;
    protected final long start;

    public SearchArg(String str, String str2, long j, long j2, SearchMode searchMode) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'query' is null");
        }
        this.query = str2;
        this.start = j;
        if (j2 < 1) {
            throw new IllegalArgumentException("Number 'maxResults' is smaller than 1L");
        }
        if (j2 > 1000) {
            throw new IllegalArgumentException("Number 'maxResults' is larger than 1000L");
        }
        this.maxResults = j2;
        if (searchMode == null) {
            throw new IllegalArgumentException("Required value for 'mode' is null");
        }
        this.mode = searchMode;
    }

    public SearchArg(String str, String str2) {
        this(str, str2, 0L, 100L, SearchMode.FILENAME);
    }

    public String getPath() {
        return this.path;
    }

    public String getQuery() {
        return this.query;
    }

    public long getStart() {
        return this.start;
    }

    public long getMaxResults() {
        return this.maxResults;
    }

    public SearchMode getMode() {
        return this.mode;
    }

    public static Builder newBuilder(String str, String str2) {
        return new Builder(str, str2);
    }

    public class Builder {
        protected long maxResults;
        protected SearchMode mode;
        protected final String path;
        protected final String query;
        protected long start;

        protected Builder(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'query' is null");
            }
            this.query = str2;
            this.start = 0L;
            this.maxResults = 100L;
            this.mode = SearchMode.FILENAME;
        }

        public Builder withStart(Long l) {
            if (l != null) {
                this.start = l.longValue();
            } else {
                this.start = 0L;
            }
            return this;
        }

        public Builder withMaxResults(Long l) {
            if (l.longValue() < 1) {
                throw new IllegalArgumentException("Number 'maxResults' is smaller than 1L");
            }
            if (l.longValue() > 1000) {
                throw new IllegalArgumentException("Number 'maxResults' is larger than 1000L");
            }
            if (l != null) {
                this.maxResults = l.longValue();
            } else {
                this.maxResults = 100L;
            }
            return this;
        }

        public Builder withMode(SearchMode searchMode) {
            if (searchMode != null) {
                this.mode = searchMode;
            } else {
                this.mode = SearchMode.FILENAME;
            }
            return this;
        }

        public SearchArg build() {
            return new SearchArg(this.path, this.query, this.start, this.maxResults, this.mode);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.query, Long.valueOf(this.start), Long.valueOf(this.maxResults), this.mode});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SearchArg searchArg = (SearchArg) obj;
            return (this.path == searchArg.path || this.path.equals(searchArg.path)) && (this.query == searchArg.query || this.query.equals(searchArg.query)) && this.start == searchArg.start && this.maxResults == searchArg.maxResults && (this.mode == searchArg.mode || this.mode.equals(searchArg.mode));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SearchArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SearchArg searchArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(searchArg.path, gVar);
            gVar.a("query");
            StoneSerializers.string().serialize(searchArg.query, gVar);
            gVar.a("start");
            StoneSerializers.uInt64().serialize(Long.valueOf(searchArg.start), gVar);
            gVar.a("max_results");
            StoneSerializers.uInt64().serialize(Long.valueOf(searchArg.maxResults), gVar);
            gVar.a(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey);
            SearchMode.Serializer.INSTANCE.serialize(searchArg.mode, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SearchArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            Long lDeserialize2;
            String strDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = 0L;
                Long l2 = 100L;
                SearchMode searchModeDeserialize = SearchMode.FILENAME;
                String strDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        lDeserialize2 = l;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("query".equals(strD)) {
                        lDeserialize2 = l;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("start".equals(strD)) {
                        lDeserialize2 = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("max_results".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize2 = l;
                    } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey.equals(strD)) {
                        searchModeDeserialize = SearchMode.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l2;
                        lDeserialize2 = l;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l2;
                        lDeserialize2 = l;
                    }
                    l2 = lDeserialize;
                    l = lDeserialize2;
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"query\" missing.");
                }
                SearchArg searchArg = new SearchArg(strDeserialize2, strDeserialize, l.longValue(), l2.longValue(), searchModeDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return searchArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
