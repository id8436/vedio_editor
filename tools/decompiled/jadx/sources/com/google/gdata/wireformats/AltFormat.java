package com.google.gdata.wireformats;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.common.base.Preconditions;
import java.util.Collection;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AltFormat {
    private final List<ContentType> acceptList;
    private final AltFormat base;
    private final ContentType contentType;
    private final Set<AltFormat> extraInputFormats;
    private final boolean isSelectableByType;
    private final String name;
    private final WireFormat wireFormat;
    public static final AltFormat RSS = builder().setName("rss").setWireFormat(WireFormat.XML).setContentType(ContentType.RSS).setAcceptableXmlTypes().setSelectableByType(true).build();
    public static final AltFormat OPENSEARCH = builder().setName("opensearch").setWireFormat(WireFormat.XML).setContentType(ContentType.OPENSEARCH).setAcceptableXmlTypes().setSelectableByType(true).build();
    public static final AltFormat ATOM_SERVICE = builder().setName("atom-service").setWireFormat(WireFormat.XML).setContentType(ContentType.ATOM_SERVICE).setAcceptableXmlTypes().setSelectableByType(true).build();
    public static final AltFormat APPLICATION_XML = builder().setName("application-xml").setWireFormat(WireFormat.XML).setContentType(ContentType.APPLICATION_XML).setAcceptableXmlTypes().setSelectableByType(true).build();
    public static final AltFormat MEDIA = builder().setName("media").setContentType(ContentType.ANY).build();
    public static final AltFormat MEDIA_MULTIPART = builder().setName("media-multipart").setContentType(ContentType.MULTIPART_RELATED).setSelectableByType(true).build();
    public static final AltFormat ATOM = builder().setName("atom").setWireFormat(WireFormat.XML).setContentType(ContentType.ATOM).setAcceptableXmlTypes().addAllowedInputFormats(MEDIA, MEDIA_MULTIPART, APPLICATION_XML).setSelectableByType(true).build();

    public static Builder builder() {
        return new Builder();
    }

    public static Builder builder(AltFormat altFormat) {
        return new Builder();
    }

    private AltFormat(Builder builder) {
        this.base = builder.base;
        this.name = builder.name;
        this.wireFormat = builder.wireFormat;
        this.contentType = builder.contentType;
        ImmutableList.Builder builder2 = ImmutableList.builder();
        builder2.add(this.contentType);
        if (builder.acceptableTypes != null) {
            builder2.addAll((Iterable) builder.acceptableTypes);
        }
        this.acceptList = builder2.build();
        this.isSelectableByType = builder.isSelectableByType;
        this.extraInputFormats = builder.extraInputFormats.build();
    }

    @Deprecated
    public AltFormat(String str, WireFormat wireFormat, ContentType contentType, List<ContentType> list, boolean z) {
        this(builder().setName(str).setWireFormat(wireFormat).setContentType(contentType).setAcceptableTypes(list).setSelectableByType(z).check());
    }

    public String getName() {
        return this.name;
    }

    public WireFormat getWireFormat() {
        return this.wireFormat;
    }

    public ContentType getContentType() {
        return this.contentType;
    }

    public List<ContentType> getMatchingTypes() {
        return this.acceptList;
    }

    public boolean isSelectableByType() {
        return this.isSelectableByType;
    }

    public boolean allowInputFormat(AltFormat altFormat) {
        return altFormat == this || this.extraInputFormats.contains(altFormat);
    }

    public boolean hasBaseFormat() {
        return this.base != null;
    }

    public AltFormat getBaseFormat() {
        return this.base;
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof AltFormat) && this.name.equals(((AltFormat) obj).name));
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public String toString() {
        return this.name + "[" + this.contentType + "]";
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class Builder {
        private Set<ContentType> acceptableTypes;
        private AltFormat base;
        private ContentType contentType;
        private final ImmutableSet.Builder<AltFormat> extraInputFormats;
        private boolean isSelectableByType;
        private String name;
        private WireFormat wireFormat;

        private Builder() {
            this.extraInputFormats = ImmutableSet.builder();
        }

        private Builder(AltFormat altFormat) {
            this.extraInputFormats = ImmutableSet.builder();
            this.name = altFormat.name;
            this.wireFormat = altFormat.wireFormat;
            this.contentType = altFormat.contentType;
            this.acceptableTypes = ImmutableSet.copyOf((Collection) altFormat.acceptList);
            this.extraInputFormats.addAll((Iterable<? extends AltFormat>) altFormat.extraInputFormats);
            this.isSelectableByType = altFormat.isSelectableByType;
            this.base = altFormat.base;
        }

        public Builder setName(String str) {
            this.name = str;
            return this;
        }

        public Builder setWireFormat(WireFormat wireFormat) {
            this.wireFormat = wireFormat;
            return this;
        }

        public Builder setContentType(ContentType contentType) {
            this.contentType = contentType;
            return this;
        }

        public Builder setSelectableByType(boolean z) {
            this.isSelectableByType = z;
            return this;
        }

        public Builder setBaseFormat(AltFormat altFormat) {
            this.base = altFormat;
            return this;
        }

        public Builder setAcceptableTextTypes() {
            return setAcceptableTypes(ContentType.TEXT_PLAIN);
        }

        public Builder setAcceptableXmlTypes() {
            return setAcceptableTypes(ContentType.TEXT_XML, ContentType.TEXT_PLAIN);
        }

        public Builder setAcceptableTypes(ContentType... contentTypeArr) {
            if (contentTypeArr == null) {
                this.acceptableTypes = ImmutableSet.of();
            } else {
                this.acceptableTypes = ImmutableSet.copyOf(contentTypeArr);
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Builder setAcceptableTypes(Iterable<ContentType> iterable) {
            if (iterable == null) {
                this.acceptableTypes = ImmutableSet.of();
            } else {
                this.acceptableTypes = ImmutableSet.copyOf(iterable);
            }
            return this;
        }

        public Builder addAllowedInputFormats(AltFormat... altFormatArr) {
            for (AltFormat altFormat : altFormatArr) {
                this.extraInputFormats.add(altFormat);
            }
            return this;
        }

        public AltFormat build() {
            check();
            return new AltFormat(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Builder check() {
            Preconditions.checkState(this.name != null, "Name must be set");
            Preconditions.checkState(this.contentType != null, "contentType must be set");
            return this;
        }
    }
}
