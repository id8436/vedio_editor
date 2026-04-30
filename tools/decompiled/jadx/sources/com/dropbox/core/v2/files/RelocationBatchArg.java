package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.RelocationPath;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class RelocationBatchArg {
    protected final boolean allowOwnershipTransfer;
    protected final boolean allowSharedFolder;
    protected final boolean autorename;
    protected final List<RelocationPath> entries;

    public RelocationBatchArg(List<RelocationPath> list, boolean z, boolean z2, boolean z3) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
        Iterator<RelocationPath> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'entries' is null");
            }
        }
        this.entries = list;
        this.allowSharedFolder = z;
        this.autorename = z2;
        this.allowOwnershipTransfer = z3;
    }

    public RelocationBatchArg(List<RelocationPath> list) {
        this(list, false, false, false);
    }

    public List<RelocationPath> getEntries() {
        return this.entries;
    }

    public boolean getAllowSharedFolder() {
        return this.allowSharedFolder;
    }

    public boolean getAutorename() {
        return this.autorename;
    }

    public boolean getAllowOwnershipTransfer() {
        return this.allowOwnershipTransfer;
    }

    public static Builder newBuilder(List<RelocationPath> list) {
        return new Builder(list);
    }

    public class Builder {
        protected boolean allowOwnershipTransfer;
        protected boolean allowSharedFolder;
        protected boolean autorename;
        protected final List<RelocationPath> entries;

        protected Builder(List<RelocationPath> list) {
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'entries' is null");
            }
            Iterator<RelocationPath> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'entries' is null");
                }
            }
            this.entries = list;
            this.allowSharedFolder = false;
            this.autorename = false;
            this.allowOwnershipTransfer = false;
        }

        public Builder withAllowSharedFolder(Boolean bool) {
            if (bool != null) {
                this.allowSharedFolder = bool.booleanValue();
            } else {
                this.allowSharedFolder = false;
            }
            return this;
        }

        public Builder withAutorename(Boolean bool) {
            if (bool != null) {
                this.autorename = bool.booleanValue();
            } else {
                this.autorename = false;
            }
            return this;
        }

        public Builder withAllowOwnershipTransfer(Boolean bool) {
            if (bool != null) {
                this.allowOwnershipTransfer = bool.booleanValue();
            } else {
                this.allowOwnershipTransfer = false;
            }
            return this;
        }

        public RelocationBatchArg build() {
            return new RelocationBatchArg(this.entries, this.allowSharedFolder, this.autorename, this.allowOwnershipTransfer);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.entries, Boolean.valueOf(this.allowSharedFolder), Boolean.valueOf(this.autorename), Boolean.valueOf(this.allowOwnershipTransfer)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RelocationBatchArg relocationBatchArg = (RelocationBatchArg) obj;
            return (this.entries == relocationBatchArg.entries || this.entries.equals(relocationBatchArg.entries)) && this.allowSharedFolder == relocationBatchArg.allowSharedFolder && this.autorename == relocationBatchArg.autorename && this.allowOwnershipTransfer == relocationBatchArg.allowOwnershipTransfer;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RelocationBatchArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RelocationBatchArg relocationBatchArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("entries");
            StoneSerializers.list(RelocationPath.Serializer.INSTANCE).serialize(relocationBatchArg.entries, gVar);
            gVar.a("allow_shared_folder");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(relocationBatchArg.allowSharedFolder), gVar);
            gVar.a("autorename");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(relocationBatchArg.autorename), gVar);
            gVar.a("allow_ownership_transfer");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(relocationBatchArg.allowOwnershipTransfer), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RelocationBatchArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            Boolean boolDeserialize2;
            Boolean boolDeserialize3;
            List list;
            List list2 = null;
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
                    if ("entries".equals(strD)) {
                        Boolean bool4 = bool3;
                        boolDeserialize2 = bool2;
                        boolDeserialize3 = bool;
                        list = (List) StoneSerializers.list(RelocationPath.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool4;
                    } else if ("allow_shared_folder".equals(strD)) {
                        list = list2;
                        Boolean bool5 = bool2;
                        boolDeserialize3 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool3;
                        boolDeserialize2 = bool5;
                    } else if ("autorename".equals(strD)) {
                        boolDeserialize3 = bool;
                        list = list2;
                        Boolean bool6 = bool3;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool6;
                    } else if ("allow_ownership_transfer".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize2 = bool2;
                        boolDeserialize3 = bool;
                        list = list2;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool3;
                        boolDeserialize2 = bool2;
                        boolDeserialize3 = bool;
                        list = list2;
                    }
                    list2 = list;
                    bool = boolDeserialize3;
                    bool2 = boolDeserialize2;
                    bool3 = boolDeserialize;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"entries\" missing.");
                }
                RelocationBatchArg relocationBatchArg = new RelocationBatchArg(list2, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return relocationBatchArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
