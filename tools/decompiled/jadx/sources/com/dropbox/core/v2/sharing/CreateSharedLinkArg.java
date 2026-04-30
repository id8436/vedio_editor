package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.PendingUploadMode;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class CreateSharedLinkArg {
    protected final String path;
    protected final PendingUploadMode pendingUpload;
    protected final boolean shortUrl;

    public CreateSharedLinkArg(String str, boolean z, PendingUploadMode pendingUploadMode) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        this.path = str;
        this.shortUrl = z;
        this.pendingUpload = pendingUploadMode;
    }

    public CreateSharedLinkArg(String str) {
        this(str, false, null);
    }

    public String getPath() {
        return this.path;
    }

    public boolean getShortUrl() {
        return this.shortUrl;
    }

    public PendingUploadMode getPendingUpload() {
        return this.pendingUpload;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected final String path;
        protected PendingUploadMode pendingUpload;
        protected boolean shortUrl;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            this.path = str;
            this.shortUrl = false;
            this.pendingUpload = null;
        }

        public Builder withShortUrl(Boolean bool) {
            if (bool != null) {
                this.shortUrl = bool.booleanValue();
            } else {
                this.shortUrl = false;
            }
            return this;
        }

        public Builder withPendingUpload(PendingUploadMode pendingUploadMode) {
            this.pendingUpload = pendingUploadMode;
            return this;
        }

        public CreateSharedLinkArg build() {
            return new CreateSharedLinkArg(this.path, this.shortUrl, this.pendingUpload);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, Boolean.valueOf(this.shortUrl), this.pendingUpload});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            CreateSharedLinkArg createSharedLinkArg = (CreateSharedLinkArg) obj;
            if ((this.path == createSharedLinkArg.path || this.path.equals(createSharedLinkArg.path)) && this.shortUrl == createSharedLinkArg.shortUrl) {
                if (this.pendingUpload == createSharedLinkArg.pendingUpload) {
                    return true;
                }
                if (this.pendingUpload != null && this.pendingUpload.equals(createSharedLinkArg.pendingUpload)) {
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

    class Serializer extends StructSerializer<CreateSharedLinkArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(CreateSharedLinkArg createSharedLinkArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(createSharedLinkArg.path, gVar);
            gVar.a("short_url");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(createSharedLinkArg.shortUrl), gVar);
            if (createSharedLinkArg.pendingUpload != null) {
                gVar.a("pending_upload");
                StoneSerializers.nullable(PendingUploadMode.Serializer.INSTANCE).serialize(createSharedLinkArg.pendingUpload, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public CreateSharedLinkArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PendingUploadMode pendingUploadMode;
            Boolean boolDeserialize;
            String strDeserialize;
            PendingUploadMode pendingUploadMode2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        PendingUploadMode pendingUploadMode3 = pendingUploadMode2;
                        boolDeserialize = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        pendingUploadMode = pendingUploadMode3;
                    } else if ("short_url".equals(strD)) {
                        strDeserialize = str;
                        pendingUploadMode = pendingUploadMode2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("pending_upload".equals(strD)) {
                        pendingUploadMode = (PendingUploadMode) StoneSerializers.nullable(PendingUploadMode.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        pendingUploadMode = pendingUploadMode2;
                        boolDeserialize = bool;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    bool = boolDeserialize;
                    pendingUploadMode2 = pendingUploadMode;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                CreateSharedLinkArg createSharedLinkArg = new CreateSharedLinkArg(str, bool.booleanValue(), pendingUploadMode2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return createSharedLinkArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
