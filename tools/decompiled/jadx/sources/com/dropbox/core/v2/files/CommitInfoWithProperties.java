package com.dropbox.core.v2.files;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.fileproperties.PropertyGroup;
import com.dropbox.core.v2.files.CommitInfo;
import com.dropbox.core.v2.files.WriteMode;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class CommitInfoWithProperties extends CommitInfo {
    protected final List<PropertyGroup> propertyGroups;

    public CommitInfoWithProperties(String str, WriteMode writeMode, boolean z, Date date, boolean z2, List<PropertyGroup> list) {
        super(str, writeMode, z, date, z2);
        if (list != null) {
            Iterator<PropertyGroup> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                }
            }
        }
        this.propertyGroups = list;
    }

    public CommitInfoWithProperties(String str) {
        this(str, WriteMode.ADD, false, null, false, null);
    }

    @Override // com.dropbox.core.v2.files.CommitInfo
    public String getPath() {
        return this.path;
    }

    @Override // com.dropbox.core.v2.files.CommitInfo
    public WriteMode getMode() {
        return this.mode;
    }

    @Override // com.dropbox.core.v2.files.CommitInfo
    public boolean getAutorename() {
        return this.autorename;
    }

    @Override // com.dropbox.core.v2.files.CommitInfo
    public Date getClientModified() {
        return this.clientModified;
    }

    @Override // com.dropbox.core.v2.files.CommitInfo
    public boolean getMute() {
        return this.mute;
    }

    public List<PropertyGroup> getPropertyGroups() {
        return this.propertyGroups;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder extends CommitInfo.Builder {
        protected List<PropertyGroup> propertyGroups;

        protected Builder(String str) {
            super(str);
            this.propertyGroups = null;
        }

        public Builder withPropertyGroups(List<PropertyGroup> list) {
            if (list != null) {
                Iterator<PropertyGroup> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                    }
                }
            }
            this.propertyGroups = list;
            return this;
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public Builder withMode(WriteMode writeMode) {
            super.withMode(writeMode);
            return this;
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public Builder withAutorename(Boolean bool) {
            super.withAutorename(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public Builder withClientModified(Date date) {
            super.withClientModified(date);
            return this;
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public Builder withMute(Boolean bool) {
            super.withMute(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public CommitInfoWithProperties build() {
            return new CommitInfoWithProperties(this.path, this.mode, this.autorename, this.clientModified, this.mute, this.propertyGroups);
        }
    }

    @Override // com.dropbox.core.v2.files.CommitInfo
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.propertyGroups}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.files.CommitInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            CommitInfoWithProperties commitInfoWithProperties = (CommitInfoWithProperties) obj;
            if ((this.path == commitInfoWithProperties.path || this.path.equals(commitInfoWithProperties.path)) && ((this.mode == commitInfoWithProperties.mode || this.mode.equals(commitInfoWithProperties.mode)) && this.autorename == commitInfoWithProperties.autorename && ((this.clientModified == commitInfoWithProperties.clientModified || (this.clientModified != null && this.clientModified.equals(commitInfoWithProperties.clientModified))) && this.mute == commitInfoWithProperties.mute))) {
                if (this.propertyGroups == commitInfoWithProperties.propertyGroups) {
                    return true;
                }
                if (this.propertyGroups != null && this.propertyGroups.equals(commitInfoWithProperties.propertyGroups)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.files.CommitInfo
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.files.CommitInfo
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<CommitInfoWithProperties> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(CommitInfoWithProperties commitInfoWithProperties, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(commitInfoWithProperties.path, gVar);
            gVar.a(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey);
            WriteMode.Serializer.INSTANCE.serialize(commitInfoWithProperties.mode, gVar);
            gVar.a("autorename");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(commitInfoWithProperties.autorename), gVar);
            if (commitInfoWithProperties.clientModified != null) {
                gVar.a("client_modified");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(commitInfoWithProperties.clientModified, gVar);
            }
            gVar.a("mute");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(commitInfoWithProperties.mute), gVar);
            if (commitInfoWithProperties.propertyGroups != null) {
                gVar.a("property_groups");
                StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).serialize(commitInfoWithProperties.propertyGroups, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public CommitInfoWithProperties deserialize(k kVar, boolean z) throws IOException {
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
                WriteMode writeModeDeserialize = WriteMode.ADD;
                Boolean bool = false;
                Boolean bool2 = false;
                Date date = null;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        boolDeserialize2 = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey.equals(strD)) {
                        writeModeDeserialize = WriteMode.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool3 = bool;
                        strDeserialize = str;
                        boolDeserialize2 = bool3;
                    } else if ("autorename".equals(strD)) {
                        strDeserialize = str;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("client_modified".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool4 = bool;
                        strDeserialize = str;
                        boolDeserialize2 = bool4;
                    } else if ("mute".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool5 = bool;
                        strDeserialize = str;
                        boolDeserialize2 = bool5;
                    } else if ("property_groups".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool6 = bool;
                        strDeserialize = str;
                        boolDeserialize2 = bool6;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool2;
                        Boolean bool7 = bool;
                        strDeserialize = str;
                        boolDeserialize2 = bool7;
                    }
                    bool2 = boolDeserialize;
                    Boolean bool8 = boolDeserialize2;
                    str = strDeserialize;
                    bool = bool8;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                CommitInfoWithProperties commitInfoWithProperties = new CommitInfoWithProperties(str, writeModeDeserialize, bool.booleanValue(), date, bool2.booleanValue(), list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return commitInfoWithProperties;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
