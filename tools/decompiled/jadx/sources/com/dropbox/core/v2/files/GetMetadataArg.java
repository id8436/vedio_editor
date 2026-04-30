package com.dropbox.core.v2.files;

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
class GetMetadataArg {
    protected final boolean includeDeleted;
    protected final boolean includeHasExplicitSharedMembers;
    protected final boolean includeMediaInfo;
    protected final String path;

    public GetMetadataArg(String str, boolean z, boolean z2, boolean z3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        this.includeMediaInfo = z;
        this.includeDeleted = z2;
        this.includeHasExplicitSharedMembers = z3;
    }

    public GetMetadataArg(String str) {
        this(str, false, false, false);
    }

    public String getPath() {
        return this.path;
    }

    public boolean getIncludeMediaInfo() {
        return this.includeMediaInfo;
    }

    public boolean getIncludeDeleted() {
        return this.includeDeleted;
    }

    public boolean getIncludeHasExplicitSharedMembers() {
        return this.includeHasExplicitSharedMembers;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected boolean includeDeleted;
        protected boolean includeHasExplicitSharedMembers;
        protected boolean includeMediaInfo;
        protected final String path;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            this.includeMediaInfo = false;
            this.includeDeleted = false;
            this.includeHasExplicitSharedMembers = false;
        }

        public Builder withIncludeMediaInfo(Boolean bool) {
            if (bool != null) {
                this.includeMediaInfo = bool.booleanValue();
            } else {
                this.includeMediaInfo = false;
            }
            return this;
        }

        public Builder withIncludeDeleted(Boolean bool) {
            if (bool != null) {
                this.includeDeleted = bool.booleanValue();
            } else {
                this.includeDeleted = false;
            }
            return this;
        }

        public Builder withIncludeHasExplicitSharedMembers(Boolean bool) {
            if (bool != null) {
                this.includeHasExplicitSharedMembers = bool.booleanValue();
            } else {
                this.includeHasExplicitSharedMembers = false;
            }
            return this;
        }

        public GetMetadataArg build() {
            return new GetMetadataArg(this.path, this.includeMediaInfo, this.includeDeleted, this.includeHasExplicitSharedMembers);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, Boolean.valueOf(this.includeMediaInfo), Boolean.valueOf(this.includeDeleted), Boolean.valueOf(this.includeHasExplicitSharedMembers)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GetMetadataArg getMetadataArg = (GetMetadataArg) obj;
            return (this.path == getMetadataArg.path || this.path.equals(getMetadataArg.path)) && this.includeMediaInfo == getMetadataArg.includeMediaInfo && this.includeDeleted == getMetadataArg.includeDeleted && this.includeHasExplicitSharedMembers == getMetadataArg.includeHasExplicitSharedMembers;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetMetadataArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetMetadataArg getMetadataArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(getMetadataArg.path, gVar);
            gVar.a("include_media_info");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(getMetadataArg.includeMediaInfo), gVar);
            gVar.a("include_deleted");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(getMetadataArg.includeDeleted), gVar);
            gVar.a("include_has_explicit_shared_members");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(getMetadataArg.includeHasExplicitSharedMembers), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetMetadataArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            Boolean boolDeserialize2;
            Boolean boolDeserialize3;
            String strDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                Boolean bool2 = false;
                Boolean bool3 = false;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        Boolean bool4 = bool3;
                        boolDeserialize2 = bool2;
                        boolDeserialize3 = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool4;
                    } else if ("include_media_info".equals(strD)) {
                        strDeserialize = str;
                        Boolean bool5 = bool2;
                        boolDeserialize3 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool3;
                        boolDeserialize2 = bool5;
                    } else if ("include_deleted".equals(strD)) {
                        boolDeserialize3 = bool;
                        strDeserialize = str;
                        Boolean bool6 = bool3;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool6;
                    } else if ("include_has_explicit_shared_members".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize2 = bool2;
                        boolDeserialize3 = bool;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool3;
                        boolDeserialize2 = bool2;
                        boolDeserialize3 = bool;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    bool = boolDeserialize3;
                    bool2 = boolDeserialize2;
                    bool3 = boolDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                GetMetadataArg getMetadataArg = new GetMetadataArg(str, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return getMetadataArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
