package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.SharedLink;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class ListFolderArg {
    protected final boolean includeDeleted;
    protected final boolean includeHasExplicitSharedMembers;
    protected final boolean includeMediaInfo;
    protected final boolean includeMountedFolders;
    protected final Long limit;
    protected final String path;
    protected final boolean recursive;
    protected final SharedLink sharedLink;

    public ListFolderArg(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Long l, SharedLink sharedLink) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        this.recursive = z;
        this.includeMediaInfo = z2;
        this.includeDeleted = z3;
        this.includeHasExplicitSharedMembers = z4;
        this.includeMountedFolders = z5;
        if (l != null) {
            if (l.longValue() < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
            }
            if (l.longValue() > 2000) {
                throw new IllegalArgumentException("Number 'limit' is larger than 2000L");
            }
        }
        this.limit = l;
        this.sharedLink = sharedLink;
    }

    public ListFolderArg(String str) {
        this(str, false, false, false, false, true, null, null);
    }

    public String getPath() {
        return this.path;
    }

    public boolean getRecursive() {
        return this.recursive;
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

    public boolean getIncludeMountedFolders() {
        return this.includeMountedFolders;
    }

    public Long getLimit() {
        return this.limit;
    }

    public SharedLink getSharedLink() {
        return this.sharedLink;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected boolean includeDeleted;
        protected boolean includeHasExplicitSharedMembers;
        protected boolean includeMediaInfo;
        protected boolean includeMountedFolders;
        protected Long limit;
        protected final String path;
        protected boolean recursive;
        protected SharedLink sharedLink;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            this.recursive = false;
            this.includeMediaInfo = false;
            this.includeDeleted = false;
            this.includeHasExplicitSharedMembers = false;
            this.includeMountedFolders = true;
            this.limit = null;
            this.sharedLink = null;
        }

        public Builder withRecursive(Boolean bool) {
            if (bool != null) {
                this.recursive = bool.booleanValue();
            } else {
                this.recursive = false;
            }
            return this;
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

        public Builder withIncludeMountedFolders(Boolean bool) {
            if (bool != null) {
                this.includeMountedFolders = bool.booleanValue();
            } else {
                this.includeMountedFolders = true;
            }
            return this;
        }

        public Builder withLimit(Long l) {
            if (l != null) {
                if (l.longValue() < 1) {
                    throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
                }
                if (l.longValue() > 2000) {
                    throw new IllegalArgumentException("Number 'limit' is larger than 2000L");
                }
            }
            this.limit = l;
            return this;
        }

        public Builder withSharedLink(SharedLink sharedLink) {
            this.sharedLink = sharedLink;
            return this;
        }

        public ListFolderArg build() {
            return new ListFolderArg(this.path, this.recursive, this.includeMediaInfo, this.includeDeleted, this.includeHasExplicitSharedMembers, this.includeMountedFolders, this.limit, this.sharedLink);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, Boolean.valueOf(this.recursive), Boolean.valueOf(this.includeMediaInfo), Boolean.valueOf(this.includeDeleted), Boolean.valueOf(this.includeHasExplicitSharedMembers), Boolean.valueOf(this.includeMountedFolders), this.limit, this.sharedLink});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListFolderArg listFolderArg = (ListFolderArg) obj;
            if ((this.path == listFolderArg.path || this.path.equals(listFolderArg.path)) && this.recursive == listFolderArg.recursive && this.includeMediaInfo == listFolderArg.includeMediaInfo && this.includeDeleted == listFolderArg.includeDeleted && this.includeHasExplicitSharedMembers == listFolderArg.includeHasExplicitSharedMembers && this.includeMountedFolders == listFolderArg.includeMountedFolders && (this.limit == listFolderArg.limit || (this.limit != null && this.limit.equals(listFolderArg.limit)))) {
                if (this.sharedLink == listFolderArg.sharedLink) {
                    return true;
                }
                if (this.sharedLink != null && this.sharedLink.equals(listFolderArg.sharedLink)) {
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

    class Serializer extends StructSerializer<ListFolderArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFolderArg listFolderArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(listFolderArg.path, gVar);
            gVar.a("recursive");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listFolderArg.recursive), gVar);
            gVar.a("include_media_info");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listFolderArg.includeMediaInfo), gVar);
            gVar.a("include_deleted");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listFolderArg.includeDeleted), gVar);
            gVar.a("include_has_explicit_shared_members");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listFolderArg.includeHasExplicitSharedMembers), gVar);
            gVar.a("include_mounted_folders");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listFolderArg.includeMountedFolders), gVar);
            if (listFolderArg.limit != null) {
                gVar.a("limit");
                StoneSerializers.nullable(StoneSerializers.uInt32()).serialize(listFolderArg.limit, gVar);
            }
            if (listFolderArg.sharedLink != null) {
                gVar.a("shared_link");
                StoneSerializers.nullableStruct(SharedLink.Serializer.INSTANCE).serialize(listFolderArg.sharedLink, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFolderArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String strDeserialize;
            Boolean boolDeserialize2;
            Boolean boolDeserialize3;
            Boolean boolDeserialize4;
            SharedLink sharedLink = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                Boolean boolDeserialize5 = false;
                Boolean bool2 = false;
                Boolean bool3 = false;
                Boolean bool4 = true;
                Long l = null;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        boolDeserialize2 = bool3;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool4;
                        Boolean bool5 = bool;
                        boolDeserialize3 = bool2;
                        boolDeserialize4 = bool5;
                    } else if ("recursive".equals(strD)) {
                        boolDeserialize3 = bool2;
                        boolDeserialize4 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool4;
                        Boolean bool6 = bool3;
                        strDeserialize = str;
                        boolDeserialize2 = bool6;
                    } else if ("include_media_info".equals(strD)) {
                        boolDeserialize5 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool4;
                        Boolean bool7 = bool2;
                        boolDeserialize4 = bool;
                        boolDeserialize3 = bool7;
                        Boolean bool8 = bool3;
                        strDeserialize = str;
                        boolDeserialize2 = bool8;
                    } else if ("include_deleted".equals(strD)) {
                        boolDeserialize4 = bool;
                        boolDeserialize3 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool4;
                        Boolean bool9 = bool3;
                        strDeserialize = str;
                        boolDeserialize2 = bool9;
                    } else if ("include_has_explicit_shared_members".equals(strD)) {
                        strDeserialize = str;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool4;
                        Boolean bool10 = bool;
                        boolDeserialize3 = bool2;
                        boolDeserialize4 = bool10;
                    } else if ("include_mounted_folders".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool11 = bool3;
                        strDeserialize = str;
                        boolDeserialize2 = bool11;
                        Boolean bool12 = bool;
                        boolDeserialize3 = bool2;
                        boolDeserialize4 = bool12;
                    } else if ("limit".equals(strD)) {
                        l = (Long) StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(kVar);
                        boolDeserialize = bool4;
                        Boolean bool13 = bool3;
                        strDeserialize = str;
                        boolDeserialize2 = bool13;
                        Boolean bool14 = bool;
                        boolDeserialize3 = bool2;
                        boolDeserialize4 = bool14;
                    } else if ("shared_link".equals(strD)) {
                        sharedLink = (SharedLink) StoneSerializers.nullableStruct(SharedLink.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool4;
                        Boolean bool15 = bool3;
                        strDeserialize = str;
                        boolDeserialize2 = bool15;
                        Boolean bool16 = bool;
                        boolDeserialize3 = bool2;
                        boolDeserialize4 = bool16;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool4;
                        Boolean bool17 = bool3;
                        strDeserialize = str;
                        boolDeserialize2 = bool17;
                        Boolean bool18 = bool;
                        boolDeserialize3 = bool2;
                        boolDeserialize4 = bool18;
                    }
                    bool4 = boolDeserialize;
                    Boolean bool19 = boolDeserialize2;
                    str = strDeserialize;
                    bool3 = bool19;
                    Boolean bool20 = boolDeserialize4;
                    bool2 = boolDeserialize3;
                    bool = bool20;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                ListFolderArg listFolderArg = new ListFolderArg(str, bool.booleanValue(), boolDeserialize5.booleanValue(), bool2.booleanValue(), bool3.booleanValue(), bool4.booleanValue(), l, sharedLink);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFolderArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
