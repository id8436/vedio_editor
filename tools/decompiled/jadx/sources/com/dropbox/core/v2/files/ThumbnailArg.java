package com.dropbox.core.v2.files;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.ThumbnailFormat;
import com.dropbox.core.v2.files.ThumbnailSize;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class ThumbnailArg {
    protected final ThumbnailFormat format;
    protected final String path;
    protected final ThumbnailSize size;

    public ThumbnailArg(String str, ThumbnailFormat thumbnailFormat, ThumbnailSize thumbnailSize) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        if (thumbnailFormat == null) {
            throw new IllegalArgumentException("Required value for 'format' is null");
        }
        this.format = thumbnailFormat;
        if (thumbnailSize == null) {
            throw new IllegalArgumentException("Required value for 'size' is null");
        }
        this.size = thumbnailSize;
    }

    public ThumbnailArg(String str) {
        this(str, ThumbnailFormat.JPEG, ThumbnailSize.W64H64);
    }

    public String getPath() {
        return this.path;
    }

    public ThumbnailFormat getFormat() {
        return this.format;
    }

    public ThumbnailSize getSize() {
        return this.size;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected ThumbnailFormat format;
        protected final String path;
        protected ThumbnailSize size;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            this.format = ThumbnailFormat.JPEG;
            this.size = ThumbnailSize.W64H64;
        }

        public Builder withFormat(ThumbnailFormat thumbnailFormat) {
            if (thumbnailFormat != null) {
                this.format = thumbnailFormat;
            } else {
                this.format = ThumbnailFormat.JPEG;
            }
            return this;
        }

        public Builder withSize(ThumbnailSize thumbnailSize) {
            if (thumbnailSize != null) {
                this.size = thumbnailSize;
            } else {
                this.size = ThumbnailSize.W64H64;
            }
            return this;
        }

        public ThumbnailArg build() {
            return new ThumbnailArg(this.path, this.format, this.size);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.format, this.size});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ThumbnailArg thumbnailArg = (ThumbnailArg) obj;
            return (this.path == thumbnailArg.path || this.path.equals(thumbnailArg.path)) && (this.format == thumbnailArg.format || this.format.equals(thumbnailArg.format)) && (this.size == thumbnailArg.size || this.size.equals(thumbnailArg.size));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ThumbnailArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ThumbnailArg thumbnailArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(thumbnailArg.path, gVar);
            gVar.a("format");
            ThumbnailFormat.Serializer.INSTANCE.serialize(thumbnailArg.format, gVar);
            gVar.a(AdobeCommunityConstants.AdobeCommunityResourceSizeKey);
            ThumbnailSize.Serializer.INSTANCE.serialize(thumbnailArg.size, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ThumbnailArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            ThumbnailSize thumbnailSizeDeserialize;
            ThumbnailFormat thumbnailFormatDeserialize;
            String strDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                ThumbnailFormat thumbnailFormat = ThumbnailFormat.JPEG;
                ThumbnailSize thumbnailSize = ThumbnailSize.W64H64;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        ThumbnailSize thumbnailSize2 = thumbnailSize;
                        thumbnailFormatDeserialize = thumbnailFormat;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        thumbnailSizeDeserialize = thumbnailSize2;
                    } else if ("format".equals(strD)) {
                        strDeserialize = str;
                        thumbnailSizeDeserialize = thumbnailSize;
                        thumbnailFormatDeserialize = ThumbnailFormat.Serializer.INSTANCE.deserialize(kVar);
                    } else if (AdobeCommunityConstants.AdobeCommunityResourceSizeKey.equals(strD)) {
                        thumbnailSizeDeserialize = ThumbnailSize.Serializer.INSTANCE.deserialize(kVar);
                        thumbnailFormatDeserialize = thumbnailFormat;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        thumbnailSizeDeserialize = thumbnailSize;
                        thumbnailFormatDeserialize = thumbnailFormat;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    thumbnailFormat = thumbnailFormatDeserialize;
                    thumbnailSize = thumbnailSizeDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                ThumbnailArg thumbnailArg = new ThumbnailArg(str, thumbnailFormat, thumbnailSize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return thumbnailArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
