package com.dropbox.core.v2.files;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.ListRevisionsMode;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class ListRevisionsArg {
    protected final long limit;
    protected final ListRevisionsMode mode;
    protected final String path;

    public ListRevisionsArg(String str, ListRevisionsMode listRevisionsMode, long j) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        if (listRevisionsMode == null) {
            throw new IllegalArgumentException("Required value for 'mode' is null");
        }
        this.mode = listRevisionsMode;
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j > 100) {
            throw new IllegalArgumentException("Number 'limit' is larger than 100L");
        }
        this.limit = j;
    }

    public ListRevisionsArg(String str) {
        this(str, ListRevisionsMode.PATH, 10L);
    }

    public String getPath() {
        return this.path;
    }

    public ListRevisionsMode getMode() {
        return this.mode;
    }

    public long getLimit() {
        return this.limit;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected long limit;
        protected ListRevisionsMode mode;
        protected final String path;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            this.mode = ListRevisionsMode.PATH;
            this.limit = 10L;
        }

        public Builder withMode(ListRevisionsMode listRevisionsMode) {
            if (listRevisionsMode != null) {
                this.mode = listRevisionsMode;
            } else {
                this.mode = ListRevisionsMode.PATH;
            }
            return this;
        }

        public Builder withLimit(Long l) {
            if (l.longValue() < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
            }
            if (l.longValue() > 100) {
                throw new IllegalArgumentException("Number 'limit' is larger than 100L");
            }
            if (l != null) {
                this.limit = l.longValue();
            } else {
                this.limit = 10L;
            }
            return this;
        }

        public ListRevisionsArg build() {
            return new ListRevisionsArg(this.path, this.mode, this.limit);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.mode, Long.valueOf(this.limit)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListRevisionsArg listRevisionsArg = (ListRevisionsArg) obj;
            return (this.path == listRevisionsArg.path || this.path.equals(listRevisionsArg.path)) && (this.mode == listRevisionsArg.mode || this.mode.equals(listRevisionsArg.mode)) && this.limit == listRevisionsArg.limit;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListRevisionsArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListRevisionsArg listRevisionsArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(listRevisionsArg.path, gVar);
            gVar.a(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey);
            ListRevisionsMode.Serializer.INSTANCE.serialize(listRevisionsArg.mode, gVar);
            gVar.a("limit");
            StoneSerializers.uInt64().serialize(Long.valueOf(listRevisionsArg.limit), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListRevisionsArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            ListRevisionsMode listRevisionsModeDeserialize;
            String strDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                ListRevisionsMode listRevisionsMode = ListRevisionsMode.PATH;
                Long l = 10L;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        Long l2 = l;
                        listRevisionsModeDeserialize = listRevisionsMode;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l2;
                    } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey.equals(strD)) {
                        strDeserialize = str;
                        lDeserialize = l;
                        listRevisionsModeDeserialize = ListRevisionsMode.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("limit".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        listRevisionsModeDeserialize = listRevisionsMode;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        listRevisionsModeDeserialize = listRevisionsMode;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    listRevisionsMode = listRevisionsModeDeserialize;
                    l = lDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                ListRevisionsArg listRevisionsArg = new ListRevisionsArg(str, listRevisionsMode, l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listRevisionsArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
