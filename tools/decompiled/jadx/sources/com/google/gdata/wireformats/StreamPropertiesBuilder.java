package com.google.gdata.wireformats;

import com.google.common.collect.Maps;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.util.ContentType;
import com.google.gdata.wireformats.StreamPropertiesBuilder;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class StreamPropertiesBuilder<T extends StreamPropertiesBuilder<T>> {
    protected AltRegistry altRegistry;
    protected ContentType contentType;
    protected ExtensionProfile extensionProfile;
    protected final Map<String, String> queryMap = Maps.newHashMap();
    protected ElementMetadata<?, ?> rootMetadata;

    protected StreamPropertiesBuilder() {
    }

    protected StreamPropertiesBuilder(StreamProperties streamProperties) {
        this.altRegistry = streamProperties.getAltRegistry();
        this.contentType = streamProperties.getContentType();
        this.extensionProfile = streamProperties.getExtensionProfile();
        this.rootMetadata = streamProperties.getRootMetadata();
        for (String str : streamProperties.getQueryParameterNames()) {
            this.queryMap.put(str, streamProperties.getQueryParameter(str));
        }
    }

    public final T thisInstance() {
        return this;
    }

    public T setAltRegistry(AltRegistry altRegistry) {
        this.altRegistry = altRegistry;
        return (T) thisInstance();
    }

    public T setContentType(ContentType contentType) {
        this.contentType = contentType;
        return (T) thisInstance();
    }

    public T setExtensionProfile(ExtensionProfile extensionProfile) {
        this.extensionProfile = extensionProfile;
        return (T) thisInstance();
    }

    public T setQueryParameter(String str, String str2) {
        thisInstance().queryMap.put(str, str2);
        return (T) thisInstance();
    }

    public T setQueryParameters(Map<String, String> map) {
        this.queryMap.putAll(map);
        return (T) thisInstance();
    }

    public T setElementMetadata(ElementMetadata<?, ?> elementMetadata) {
        this.rootMetadata = elementMetadata;
        return (T) thisInstance();
    }

    public class StreamPropertiesImpl implements StreamProperties {
        private final AltRegistry altRegistry;
        private final ContentType contentType;
        private final ElementMetadata<?, ?> elementMetadata;
        private final ExtensionProfile extensionProfile;
        private final Map<String, String> queryMap;

        protected StreamPropertiesImpl(StreamPropertiesBuilder<?> streamPropertiesBuilder) {
            this.altRegistry = streamPropertiesBuilder.altRegistry;
            this.contentType = streamPropertiesBuilder.contentType;
            this.extensionProfile = streamPropertiesBuilder.extensionProfile;
            this.queryMap = streamPropertiesBuilder.queryMap;
            this.elementMetadata = streamPropertiesBuilder.rootMetadata;
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public AltRegistry getAltRegistry() {
            return this.altRegistry;
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public ContentType getContentType() {
            return this.contentType;
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public ExtensionProfile getExtensionProfile() {
            return this.extensionProfile;
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public Collection<String> getQueryParameterNames() {
            return this.queryMap.keySet();
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public String getQueryParameter(String str) {
            return this.queryMap.get(str);
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public ElementMetadata<?, ?> getRootMetadata() {
            return this.elementMetadata;
        }
    }
}
