package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class ListSharedLinksArg {
    protected final String cursor;
    protected final Boolean directOnly;
    protected final String path;

    public ListSharedLinksArg(String str, String str2, Boolean bool) {
        if (str != null && !Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        this.cursor = str2;
        this.directOnly = bool;
    }

    public ListSharedLinksArg() {
        this(null, null, null);
    }

    public String getPath() {
        return this.path;
    }

    public String getCursor() {
        return this.cursor;
    }

    public Boolean getDirectOnly() {
        return this.directOnly;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected String path = null;
        protected String cursor = null;
        protected Boolean directOnly = null;

        protected Builder() {
        }

        public Builder withPath(String str) {
            if (str != null && !Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            return this;
        }

        public Builder withCursor(String str) {
            this.cursor = str;
            return this;
        }

        public Builder withDirectOnly(Boolean bool) {
            this.directOnly = bool;
            return this;
        }

        public ListSharedLinksArg build() {
            return new ListSharedLinksArg(this.path, this.cursor, this.directOnly);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.cursor, this.directOnly});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListSharedLinksArg listSharedLinksArg = (ListSharedLinksArg) obj;
            if ((this.path == listSharedLinksArg.path || (this.path != null && this.path.equals(listSharedLinksArg.path))) && (this.cursor == listSharedLinksArg.cursor || (this.cursor != null && this.cursor.equals(listSharedLinksArg.cursor)))) {
                if (this.directOnly == listSharedLinksArg.directOnly) {
                    return true;
                }
                if (this.directOnly != null && this.directOnly.equals(listSharedLinksArg.directOnly)) {
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

    class Serializer extends StructSerializer<ListSharedLinksArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListSharedLinksArg listSharedLinksArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (listSharedLinksArg.path != null) {
                gVar.a("path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(listSharedLinksArg.path, gVar);
            }
            if (listSharedLinksArg.cursor != null) {
                gVar.a("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(listSharedLinksArg.cursor, gVar);
            }
            if (listSharedLinksArg.directOnly != null) {
                gVar.a("direct_only");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize(listSharedLinksArg.directOnly, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListSharedLinksArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean bool;
            String str;
            String str2;
            Boolean bool2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str3 = null;
                String str4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        Boolean bool3 = bool2;
                        str = str3;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        bool = bool3;
                    } else if ("cursor".equals(strD)) {
                        str2 = str4;
                        bool = bool2;
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("direct_only".equals(strD)) {
                        bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(kVar);
                        str = str3;
                        str2 = str4;
                    } else {
                        skipValue(kVar);
                        bool = bool2;
                        str = str3;
                        str2 = str4;
                    }
                    str4 = str2;
                    str3 = str;
                    bool2 = bool;
                }
                ListSharedLinksArg listSharedLinksArg = new ListSharedLinksArg(str4, str3, bool2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listSharedLinksArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
