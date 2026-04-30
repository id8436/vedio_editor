package com.dropbox.core.v2.files;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.files.WriteMode;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class CommitInfo {
    protected final boolean autorename;
    protected final Date clientModified;
    protected final WriteMode mode;
    protected final boolean mute;
    protected final String path;

    public CommitInfo(String str, WriteMode writeMode, boolean z, Date date, boolean z2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        if (writeMode == null) {
            throw new IllegalArgumentException("Required value for 'mode' is null");
        }
        this.mode = writeMode;
        this.autorename = z;
        this.clientModified = LangUtil.truncateMillis(date);
        this.mute = z2;
    }

    public CommitInfo(String str) {
        this(str, WriteMode.ADD, false, null, false);
    }

    public String getPath() {
        return this.path;
    }

    public WriteMode getMode() {
        return this.mode;
    }

    public boolean getAutorename() {
        return this.autorename;
    }

    public Date getClientModified() {
        return this.clientModified;
    }

    public boolean getMute() {
        return this.mute;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected boolean autorename;
        protected Date clientModified;
        protected WriteMode mode;
        protected boolean mute;
        protected final String path;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            this.mode = WriteMode.ADD;
            this.autorename = false;
            this.clientModified = null;
            this.mute = false;
        }

        public Builder withMode(WriteMode writeMode) {
            if (writeMode != null) {
                this.mode = writeMode;
            } else {
                this.mode = WriteMode.ADD;
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

        public Builder withClientModified(Date date) {
            this.clientModified = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withMute(Boolean bool) {
            if (bool != null) {
                this.mute = bool.booleanValue();
            } else {
                this.mute = false;
            }
            return this;
        }

        public CommitInfo build() {
            return new CommitInfo(this.path, this.mode, this.autorename, this.clientModified, this.mute);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.mode, Boolean.valueOf(this.autorename), this.clientModified, Boolean.valueOf(this.mute)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            CommitInfo commitInfo = (CommitInfo) obj;
            return (this.path == commitInfo.path || this.path.equals(commitInfo.path)) && (this.mode == commitInfo.mode || this.mode.equals(commitInfo.mode)) && this.autorename == commitInfo.autorename && ((this.clientModified == commitInfo.clientModified || (this.clientModified != null && this.clientModified.equals(commitInfo.clientModified))) && this.mute == commitInfo.mute);
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<CommitInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(CommitInfo commitInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(commitInfo.path, gVar);
            gVar.a(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey);
            WriteMode.Serializer.INSTANCE.serialize(commitInfo.mode, gVar);
            gVar.a("autorename");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(commitInfo.autorename), gVar);
            if (commitInfo.clientModified != null) {
                gVar.a("client_modified");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(commitInfo.clientModified, gVar);
            }
            gVar.a("mute");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(commitInfo.mute), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public CommitInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String strDeserialize;
            Boolean boolDeserialize2;
            Date date = null;
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
                CommitInfo commitInfo = new CommitInfo(str, writeModeDeserialize, bool.booleanValue(), date, bool2.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return commitInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
