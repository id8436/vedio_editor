package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.GetMetadataArg;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class AlphaGetMetadataArg extends GetMetadataArg {
    protected final List<String> includePropertyTemplates;

    public AlphaGetMetadataArg(String str, boolean z, boolean z2, boolean z3, List<String> list) {
        super(str, z, z2, z3);
        if (list != null) {
            for (String str2 : list) {
                if (str2 == null) {
                    throw new IllegalArgumentException("An item in list 'includePropertyTemplates' is null");
                }
                if (str2.length() < 1) {
                    throw new IllegalArgumentException("Stringan item in list 'includePropertyTemplates' is shorter than 1");
                }
                if (!Pattern.matches("(/|ptid:).*", str2)) {
                    throw new IllegalArgumentException("Stringan item in list 'includePropertyTemplates' does not match pattern");
                }
            }
        }
        this.includePropertyTemplates = list;
    }

    public AlphaGetMetadataArg(String str) {
        this(str, false, false, false, null);
    }

    @Override // com.dropbox.core.v2.files.GetMetadataArg
    public String getPath() {
        return this.path;
    }

    @Override // com.dropbox.core.v2.files.GetMetadataArg
    public boolean getIncludeMediaInfo() {
        return this.includeMediaInfo;
    }

    @Override // com.dropbox.core.v2.files.GetMetadataArg
    public boolean getIncludeDeleted() {
        return this.includeDeleted;
    }

    @Override // com.dropbox.core.v2.files.GetMetadataArg
    public boolean getIncludeHasExplicitSharedMembers() {
        return this.includeHasExplicitSharedMembers;
    }

    public List<String> getIncludePropertyTemplates() {
        return this.includePropertyTemplates;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder extends GetMetadataArg.Builder {
        protected List<String> includePropertyTemplates;

        protected Builder(String str) {
            super(str);
            this.includePropertyTemplates = null;
        }

        public Builder withIncludePropertyTemplates(List<String> list) {
            if (list != null) {
                for (String str : list) {
                    if (str == null) {
                        throw new IllegalArgumentException("An item in list 'includePropertyTemplates' is null");
                    }
                    if (str.length() < 1) {
                        throw new IllegalArgumentException("Stringan item in list 'includePropertyTemplates' is shorter than 1");
                    }
                    if (!Pattern.matches("(/|ptid:).*", str)) {
                        throw new IllegalArgumentException("Stringan item in list 'includePropertyTemplates' does not match pattern");
                    }
                }
            }
            this.includePropertyTemplates = list;
            return this;
        }

        @Override // com.dropbox.core.v2.files.GetMetadataArg.Builder
        public Builder withIncludeMediaInfo(Boolean bool) {
            super.withIncludeMediaInfo(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.files.GetMetadataArg.Builder
        public Builder withIncludeDeleted(Boolean bool) {
            super.withIncludeDeleted(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.files.GetMetadataArg.Builder
        public Builder withIncludeHasExplicitSharedMembers(Boolean bool) {
            super.withIncludeHasExplicitSharedMembers(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.files.GetMetadataArg.Builder
        public AlphaGetMetadataArg build() {
            return new AlphaGetMetadataArg(this.path, this.includeMediaInfo, this.includeDeleted, this.includeHasExplicitSharedMembers, this.includePropertyTemplates);
        }
    }

    @Override // com.dropbox.core.v2.files.GetMetadataArg
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.includePropertyTemplates}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.files.GetMetadataArg
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AlphaGetMetadataArg alphaGetMetadataArg = (AlphaGetMetadataArg) obj;
            if ((this.path == alphaGetMetadataArg.path || this.path.equals(alphaGetMetadataArg.path)) && this.includeMediaInfo == alphaGetMetadataArg.includeMediaInfo && this.includeDeleted == alphaGetMetadataArg.includeDeleted && this.includeHasExplicitSharedMembers == alphaGetMetadataArg.includeHasExplicitSharedMembers) {
                if (this.includePropertyTemplates == alphaGetMetadataArg.includePropertyTemplates) {
                    return true;
                }
                if (this.includePropertyTemplates != null && this.includePropertyTemplates.equals(alphaGetMetadataArg.includePropertyTemplates)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.files.GetMetadataArg
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.files.GetMetadataArg
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<AlphaGetMetadataArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AlphaGetMetadataArg alphaGetMetadataArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(alphaGetMetadataArg.path, gVar);
            gVar.a("include_media_info");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(alphaGetMetadataArg.includeMediaInfo), gVar);
            gVar.a("include_deleted");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(alphaGetMetadataArg.includeDeleted), gVar);
            gVar.a("include_has_explicit_shared_members");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(alphaGetMetadataArg.includeHasExplicitSharedMembers), gVar);
            if (alphaGetMetadataArg.includePropertyTemplates != null) {
                gVar.a("include_property_templates");
                StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize(alphaGetMetadataArg.includePropertyTemplates, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AlphaGetMetadataArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String strDeserialize;
            Boolean boolDeserialize2;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean boolDeserialize3 = false;
                Boolean bool = false;
                Boolean bool2 = false;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        boolDeserialize2 = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("include_media_info".equals(strD)) {
                        boolDeserialize3 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool3 = bool;
                        strDeserialize = str;
                        boolDeserialize2 = bool3;
                    } else if ("include_deleted".equals(strD)) {
                        strDeserialize = str;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("include_has_explicit_shared_members".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool4 = bool;
                        strDeserialize = str;
                        boolDeserialize2 = bool4;
                    } else if ("include_property_templates".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool5 = bool;
                        strDeserialize = str;
                        boolDeserialize2 = bool5;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool2;
                        Boolean bool6 = bool;
                        strDeserialize = str;
                        boolDeserialize2 = bool6;
                    }
                    bool2 = boolDeserialize;
                    Boolean bool7 = boolDeserialize2;
                    str = strDeserialize;
                    bool = bool7;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                AlphaGetMetadataArg alphaGetMetadataArg = new AlphaGetMetadataArg(str, boolDeserialize3.booleanValue(), bool.booleanValue(), bool2.booleanValue(), list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return alphaGetMetadataArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
