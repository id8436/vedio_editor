package com.google.gdata.client;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GDataProtocol;
import com.google.gdata.client.http.HttpGDataRequest;
import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Feed;
import com.google.gdata.data.IAtom;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.IFeed;
import com.google.gdata.data.ILink;
import com.google.gdata.data.ParseSource;
import com.google.gdata.data.introspection.IServiceDocument;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataContext;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.Schema;
import com.google.gdata.model.batch.BatchUtils;
import com.google.gdata.model.transforms.atom.AtomVersionTransforms;
import com.google.gdata.model.transforms.atompub.AtompubVersionTransforms;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.util.common.net.UriParameterMap;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.AltRegistry;
import com.google.gdata.wireformats.StreamProperties;
import com.google.gdata.wireformats.input.AtomDualParser;
import com.google.gdata.wireformats.input.AtomServiceDualParser;
import com.google.gdata.wireformats.input.InputParser;
import com.google.gdata.wireformats.input.InputProperties;
import com.google.gdata.wireformats.output.AtomDualGenerator;
import com.google.gdata.wireformats.output.AtomServiceDualGenerator;
import com.google.gdata.wireformats.output.OutputGenerator;
import com.google.gdata.wireformats.output.OutputProperties;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URL;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Service {
    protected final MetadataRegistry metadataRegistry;
    private Version protocolVersion;
    private static final String SERVICE_VERSION = "GData-Java/" + Service.class.getPackage().getImplementationVersion() + "(gzip)";
    private static final Version CORE_VERSION = initServiceVersion(Service.class, Versions.V1);
    private static final AltRegistry BASE_REGISTRY = new AltRegistry();
    protected ExtensionProfile extProfile = new ExtensionProfile();
    protected GDataRequestFactory requestFactory = new HttpGDataRequest.Factory();
    private ContentType contentType = ContentType.ATOM;
    protected int connectTimeout = -1;
    int readTimeout = -1;
    private AltRegistry altRegistry = BASE_REGISTRY;
    private boolean strictValidation = true;

    /* JADX INFO: loaded from: classes3.dex */
    public interface GDataRequest {

        public enum RequestType {
            QUERY,
            INSERT,
            UPDATE,
            PATCH,
            DELETE,
            BATCH
        }

        void end();

        void execute() throws IOException, ServiceException;

        ParseSource getParseSource() throws IOException, ServiceException;

        ContentType getRequestContentType();

        OutputStream getRequestStream() throws IOException;

        URL getRequestUrl();

        ContentType getResponseContentType() throws IOException, ServiceException;

        DateTime getResponseDateHeader(String str);

        String getResponseHeader(String str);

        InputStream getResponseStream() throws IOException;

        void setConnectTimeout(int i);

        void setEtag(String str);

        void setHeader(String str, String str2);

        void setIfModifiedSince(DateTime dateTime);

        void setPrivateHeader(String str, String str2);

        void setReadTimeout(int i);
    }

    /* JADX INFO: loaded from: classes3.dex */
    public interface GDataRequestFactory {
        GDataRequest getRequest(Query query, ContentType contentType) throws IOException, ServiceException;

        GDataRequest getRequest(GDataRequest.RequestType requestType, URL url, ContentType contentType) throws IOException, ServiceException;

        void setAuthToken(AuthTokenFactory.AuthToken authToken);

        void setHeader(String str, String str2);

        void setPrivateHeader(String str, String str2);
    }

    static {
        BASE_REGISTRY.register(AltFormat.ATOM, new AtomDualParser(), new AtomDualGenerator());
        BASE_REGISTRY.register(AltFormat.ATOM_SERVICE, new AtomServiceDualParser(), new AtomServiceDualGenerator());
        BASE_REGISTRY.register(AltFormat.APPLICATION_XML, null, new AtomDualGenerator(AltFormat.APPLICATION_XML));
        BASE_REGISTRY.lock();
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class Versions {
        public static final Version V1 = new Version(Service.class, 1, 0, new Version[0]);
        public static final Version V2 = new Version(Service.class, 2, 0, new Version[0]);
        public static final Version V2_1 = new Version(Service.class, 2, 1, new Version[0]);
        public static final Version V2_2 = new Version(Service.class, 2, 2, new Version[0]);
        public static final Version V3 = new Version(Service.class, 3, 0, new Version[0]);

        private Versions() {
        }
    }

    protected static Version initServiceVersion(Class<? extends Service> cls, Version version) {
        VersionRegistry versionRegistryEnsureRegistry = VersionRegistry.ensureRegistry();
        Version versionFromProperty = null;
        try {
            return versionRegistryEnsureRegistry.getVersion(cls);
        } catch (IllegalStateException e2) {
            try {
                versionFromProperty = VersionRegistry.getVersionFromProperty(cls);
            } catch (SecurityException e3) {
            }
            if (versionFromProperty != null) {
                version = versionFromProperty;
            }
            versionRegistryEnsureRegistry.addDefaultVersion(version, false);
            return version;
        }
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(Service.class);
    }

    private static Version initProtocolVersion(Class<? extends Service> cls) {
        VersionRegistry versionRegistry = VersionRegistry.get();
        while (cls != Service.class) {
            try {
                return versionRegistry.getVersion(cls);
            } catch (IllegalStateException e2) {
                cls = cls.getSuperclass();
            }
        }
        try {
            return getVersion();
        } catch (IllegalStateException e3) {
            return CORE_VERSION;
        }
    }

    public Service() {
        this.requestFactory.setHeader("User-Agent", getServiceVersion());
        this.protocolVersion = initProtocolVersion(getClass());
        new Feed().declareExtensions(this.extProfile);
        this.metadataRegistry = new MetadataRegistry();
        com.google.gdata.model.atom.Feed.registerMetadata(this.metadataRegistry);
        AtomVersionTransforms.addTransforms(this.metadataRegistry);
        AtompubVersionTransforms.addTransforms(this.metadataRegistry);
    }

    public static AltRegistry getDefaultAltRegistry() {
        return BASE_REGISTRY;
    }

    public Version getProtocolVersion() {
        return this.protocolVersion;
    }

    public void setProtocolVersion(Version version) {
        if (!this.protocolVersion.getServiceClass().equals(version.getServiceClass())) {
            throw new IllegalArgumentException("Invalid service class, was: " + version.getServiceClass() + ", expected: " + this.protocolVersion.getServiceClass());
        }
        this.protocolVersion = version;
    }

    protected void startVersionScope() {
        VersionRegistry.get().setThreadVersion(this.protocolVersion);
    }

    protected void endVersionScope() {
        VersionRegistry.get().resetThreadVersion();
    }

    public String getServiceVersion() {
        return SERVICE_VERSION;
    }

    public ExtensionProfile getExtensionProfile() {
        return this.extProfile;
    }

    public void setExtensionProfile(ExtensionProfile extensionProfile) {
        this.extProfile = extensionProfile;
    }

    public MetadataRegistry getMetadataRegistry() {
        return this.metadataRegistry;
    }

    public Schema getSchema() {
        return this.metadataRegistry.createSchema();
    }

    public GDataRequestFactory getRequestFactory() {
        return this.requestFactory;
    }

    public void setRequestFactory(GDataRequestFactory gDataRequestFactory) {
        this.requestFactory = gDataRequestFactory;
    }

    public void setHeader(String str, String str2) {
        getRequestFactory().setHeader(str, str2);
    }

    public void setPrivateHeader(String str, String str2) {
        getRequestFactory().setPrivateHeader(str, str2);
    }

    public void setOAuthProxyHeaders(Map<String, String> map) {
        for (String str : map.keySet()) {
            setHeader(str, map.get(str));
        }
    }

    public void useSsl() {
        if (!(this.requestFactory instanceof HttpGDataRequest.Factory)) {
            throw new UnsupportedOperationException("Not a http transport");
        }
        ((HttpGDataRequest.Factory) this.requestFactory).useSsl();
    }

    public void setAcceptLanguage(String str) {
        this.requestFactory.setHeader("Accept-Language", str);
    }

    public GDataRequest createRequest(GDataRequest.RequestType requestType, URL url, ContentType contentType) throws IOException, ServiceException {
        GDataRequest request = this.requestFactory.getRequest(requestType, url, contentType);
        setTimeouts(request);
        return request;
    }

    protected GDataRequest createRequest(Query query, ContentType contentType) throws IOException, ServiceException {
        GDataRequest request = this.requestFactory.getRequest(query, contentType);
        setTimeouts(request);
        return request;
    }

    public void setTimeouts(GDataRequest gDataRequest) {
        if (this.connectTimeout >= 0) {
            gDataRequest.setConnectTimeout(this.connectTimeout);
        }
        if (this.readTimeout >= 0) {
            gDataRequest.setReadTimeout(this.readTimeout);
        }
    }

    public ContentType getContentType() {
        return this.contentType;
    }

    public void setContentType(ContentType contentType) {
        this.contentType = contentType;
    }

    public void setConnectTimeout(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Timeout value cannot be negative");
        }
        this.connectTimeout = i;
    }

    public void setReadTimeout(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Timeout value cannot be negative");
        }
        this.readTimeout = i;
    }

    public AltRegistry getAltRegistry() {
        return this.altRegistry;
    }

    public void setAltRegistry(AltRegistry altRegistry) {
        this.altRegistry = altRegistry;
    }

    public boolean getStrictValidation() {
        return this.strictValidation;
    }

    public void setStrictValidation(boolean z) {
        this.strictValidation = z;
    }

    protected <T> Class<T> classOf(T t) {
        return (Class<T>) t.getClass();
    }

    public <S extends IServiceDocument> S introspect(URL url, Class<S> cls) throws IOException, ServiceException {
        String query = url.getQuery();
        String str = "alt=" + AltFormat.ATOM_SERVICE.getName();
        if (query == null || query.indexOf(str) == -1) {
            url = new URL(url.toString() + (query == null ? '?' : '&') + str);
        }
        GDataRequest gDataRequestCreateFeedRequest = createFeedRequest(url);
        try {
            startVersionScope();
            gDataRequestCreateFeedRequest.execute();
            return (S) parseResponseData(gDataRequestCreateFeedRequest, cls);
        } finally {
            endVersionScope();
            gDataRequestCreateFeedRequest.end();
        }
    }

    public <F extends IFeed> F getFeed(URL url, Class<F> cls, DateTime dateTime) throws IOException, ServiceException {
        return (F) getFeed(createFeedRequest(url), cls, dateTime);
    }

    public <F extends IFeed> F getFeed(URL url, Class<F> cls, String str) throws IOException, ServiceException {
        return (F) getFeed(createFeedRequest(url), cls, str);
    }

    public <F extends IFeed> F getFeed(URL url, Class<F> cls) throws IOException, ServiceException {
        return (F) getFeed(url, cls, (String) null);
    }

    public <F extends IFeed> F getFeed(Query query, Class<F> cls) throws IOException, ServiceException {
        return (F) getFeed(query, cls, (String) null);
    }

    public <F extends IFeed> F getFeed(Query query, Class<F> cls, DateTime dateTime) throws IOException, ServiceException {
        return (F) getFeed(createFeedRequest(query), cls, dateTime);
    }

    public <F extends IFeed> F getFeed(Query query, Class<F> cls, String str) throws IOException, ServiceException {
        return (F) getFeed(createFeedRequest(query), cls, str);
    }

    private <F extends IFeed> F getFeed(GDataRequest gDataRequest, Class<F> cls, DateTime dateTime) throws IOException, ServiceException {
        try {
            startVersionScope();
            gDataRequest.setIfModifiedSince(dateTime);
            gDataRequest.execute();
            return (F) parseResponseData(gDataRequest, cls);
        } finally {
            endVersionScope();
            gDataRequest.end();
        }
    }

    private <F extends IFeed> F getFeed(GDataRequest gDataRequest, Class<F> cls, String str) throws IOException, ServiceException {
        try {
            startVersionScope();
            gDataRequest.setEtag(str);
            gDataRequest.execute();
            return (F) parseResponseData(gDataRequest, cls);
        } finally {
            endVersionScope();
            gDataRequest.end();
        }
    }

    public GDataRequest createFeedRequest(URL url) throws IOException, ServiceException {
        return createRequest(GDataRequest.RequestType.QUERY, url, this.contentType);
    }

    public <F extends IFeed> F query(Query query, Class<F> cls) throws IOException, ServiceException {
        return (F) query(query, cls, (String) null);
    }

    public <F extends IFeed> F query(Query query, Class<F> cls, DateTime dateTime) throws IOException, ServiceException {
        return (F) getFeed(query, cls, dateTime);
    }

    public <F extends IFeed> F query(Query query, Class<F> cls, String str) throws IOException, ServiceException {
        return (F) getFeed(query, cls, str);
    }

    public GDataRequest createFeedRequest(Query query) throws IOException, ServiceException {
        return createRequest(query, this.contentType);
    }

    public <E extends IEntry> E getEntry(URL url, Class<E> cls) throws IOException, ServiceException {
        return (E) getEntry(url, cls, (String) null);
    }

    public <E extends IEntry> E getEntry(URL url, Class<E> cls, DateTime dateTime) throws IOException, ServiceException {
        GDataRequest gDataRequestCreateEntryRequest = createEntryRequest(url);
        try {
            startVersionScope();
            gDataRequestCreateEntryRequest.setIfModifiedSince(dateTime);
            gDataRequestCreateEntryRequest.execute();
            return (E) parseResponseData(gDataRequestCreateEntryRequest, cls);
        } finally {
            endVersionScope();
            gDataRequestCreateEntryRequest.end();
        }
    }

    public <E extends IEntry> E getEntry(URL url, Class<E> cls, String str) throws IOException, ServiceException {
        GDataRequest gDataRequestCreateEntryRequest = createEntryRequest(url);
        try {
            startVersionScope();
            gDataRequestCreateEntryRequest.setEtag(str);
            gDataRequestCreateEntryRequest.execute();
            return (E) parseResponseData(gDataRequestCreateEntryRequest, cls);
        } finally {
            endVersionScope();
            gDataRequestCreateEntryRequest.end();
        }
    }

    public GDataRequest createEntryRequest(URL url) throws IOException, ServiceException {
        return createRequest(GDataRequest.RequestType.QUERY, url, this.contentType);
    }

    public <E extends IEntry> E insert(URL url, E e2) throws IOException, ServiceException {
        if (e2 == null) {
            throw new NullPointerException("Must supply entry");
        }
        GDataRequest gDataRequestCreateInsertRequest = createInsertRequest(url);
        try {
            startVersionScope();
            writeRequestData(gDataRequestCreateInsertRequest, e2);
            gDataRequestCreateInsertRequest.execute();
            return (E) parseResponseData(gDataRequestCreateInsertRequest, classOf(e2));
        } finally {
            endVersionScope();
            gDataRequestCreateInsertRequest.end();
        }
    }

    public <F extends IFeed> F batch(URL url, F f2) throws IOException, ServiceException {
        GDataRequest gDataRequestCreateInsertRequest = createInsertRequest(url);
        try {
            startVersionScope();
            writeRequestData(gDataRequestCreateInsertRequest, f2);
            gDataRequestCreateInsertRequest.execute();
            F f3 = (F) parseResponseData(gDataRequestCreateInsertRequest, classOf(f2));
            f3.getEntries().size();
            BatchUtils.throwIfInterrupted(f3);
            return f3;
        } finally {
            endVersionScope();
            gDataRequestCreateInsertRequest.end();
        }
    }

    public GDataRequest createInsertRequest(URL url) throws IOException, ServiceException {
        return createRequest(GDataRequest.RequestType.INSERT, url, this.contentType);
    }

    public GDataRequest createBatchRequest(URL url) throws IOException, ServiceException {
        return createRequest(GDataRequest.RequestType.BATCH, url, this.contentType);
    }

    public <E extends IEntry> E update(URL url, E e2) throws IOException, ServiceException {
        String etag = e2.getEtag();
        if (GDataProtocol.isWeakEtag(etag)) {
            etag = null;
        }
        return (E) update(url, e2, etag);
    }

    public <E extends IEntry> E update(URL url, E e2, String str) throws IOException, ServiceException {
        GDataRequest gDataRequestCreateUpdateRequest = createUpdateRequest(url);
        try {
            startVersionScope();
            gDataRequestCreateUpdateRequest.setEtag(str);
            writeRequestData(gDataRequestCreateUpdateRequest, e2);
            gDataRequestCreateUpdateRequest.execute();
            return (E) parseResponseData(gDataRequestCreateUpdateRequest, classOf(e2));
        } finally {
            endVersionScope();
            gDataRequestCreateUpdateRequest.end();
        }
    }

    public GDataRequest createUpdateRequest(URL url) throws IOException, ServiceException {
        return createRequest(GDataRequest.RequestType.UPDATE, url, this.contentType);
    }

    public <E extends IEntry> E patch(URL url, String str, E e2) throws IOException, ServiceException {
        String str2 = null;
        if (e2 != null) {
            String etag = e2.getEtag();
            if (!GDataProtocol.isWeakEtag(etag)) {
                str2 = etag;
            }
        }
        return (E) patch(url, str, e2, str2);
    }

    public <E extends IEntry> E patch(URL url, String str, E e2, String str2) throws IOException, ServiceException {
        GDataRequest gDataRequestCreatePatchRequest = createPatchRequest(url);
        try {
            startVersionScope();
            gDataRequestCreatePatchRequest.setEtag(str2);
            e2.setSelectedFields(str);
            writeRequestData(gDataRequestCreatePatchRequest, e2);
            gDataRequestCreatePatchRequest.execute();
            return (E) parseResponseData(gDataRequestCreatePatchRequest, classOf(e2));
        } finally {
            endVersionScope();
            gDataRequestCreatePatchRequest.end();
        }
    }

    public GDataRequest createPatchRequest(URL url) throws IOException, ServiceException {
        return createRequest(GDataRequest.RequestType.PATCH, url, ContentType.APPLICATION_XML);
    }

    public void delete(URL url) throws IOException, ServiceException {
        delete(url, (String) null);
    }

    public void delete(URI uri) throws IOException, ServiceException {
        delete(uri.toURL(), (String) null);
    }

    public void delete(URL url, String str) throws IOException, ServiceException {
        GDataRequest gDataRequestCreateDeleteRequest = createDeleteRequest(url);
        try {
            startVersionScope();
            gDataRequestCreateDeleteRequest.setEtag(str);
            gDataRequestCreateDeleteRequest.execute();
        } finally {
            gDataRequestCreateDeleteRequest.end();
        }
    }

    public void delete(URI uri, String str) throws IOException, ServiceException {
        delete(uri.toURL(), str);
    }

    public GDataRequest createDeleteRequest(URL url) throws IOException, ServiceException {
        return createRequest(GDataRequest.RequestType.DELETE, url, this.contentType);
    }

    @Deprecated
    public InputStream getStreamFromLink(ILink iLink) throws IOException, ServiceException {
        GDataRequest gDataRequestCreateLinkQueryRequest = createLinkQueryRequest(iLink);
        gDataRequestCreateLinkQueryRequest.execute();
        return gDataRequestCreateLinkQueryRequest.getResponseStream();
    }

    public GDataRequest createLinkQueryRequest(ILink iLink) throws IOException, ServiceException {
        return createRequest(GDataRequest.RequestType.QUERY, new URL(iLink.getHref()), null);
    }

    /* JADX INFO: loaded from: classes3.dex */
    public abstract class ClientStreamProperties implements StreamProperties {
        protected final UriParameterMap queryMap;
        protected final GDataRequest req;

        protected ClientStreamProperties(GDataRequest gDataRequest) {
            this.queryMap = Service.computeQueryMap(gDataRequest);
            this.req = gDataRequest;
        }

        protected ClientStreamProperties() {
            this.queryMap = UriParameterMap.EMPTY_MAP;
            this.req = null;
        }

        public GDataRequest getGDataRequest() {
            return this.req;
        }

        public Version getRequestVersion() {
            return Service.this.getProtocolVersion();
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public AltRegistry getAltRegistry() {
            return Service.this.getAltRegistry();
        }

        public boolean isPartial() {
            return false;
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public ExtensionProfile getExtensionProfile() {
            return Service.this.getExtensionProfile();
        }

        protected MetadataContext getMetadataContext() {
            return MetadataContext.forContext(getAltFormat(), null, Service.this.getProtocolVersion());
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public Collection<String> getQueryParameterNames() {
            return this.queryMap.keySet();
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public String getQueryParameter(String str) {
            return this.queryMap.getFirst(str);
        }

        protected AltFormat getAltFormat() {
            AltFormat altFormatLookupName = getAltRegistry().lookupName(this.queryMap.getFirst(GDataProtocol.Parameter.ALT));
            return altFormatLookupName != null ? altFormatLookupName : AltFormat.ATOM;
        }

        protected UriParameterMap getParameterMap() {
            return this.queryMap;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class ClientInputProperties extends ClientStreamProperties implements InputProperties {
        private ElementMetadata<?, ?> elementMetadata;
        private final Class<?> expectType;
        protected final ContentType inputType;

        protected ClientInputProperties(GDataRequest gDataRequest, Class<?> cls) throws IOException, ServiceException {
            super(gDataRequest);
            this.expectType = cls;
            this.inputType = gDataRequest.getResponseContentType();
            init();
        }

        protected ClientInputProperties(ContentType contentType, Class<?> cls) throws IOException, ServiceException {
            super();
            this.expectType = cls;
            this.inputType = contentType;
            init();
        }

        private void init() {
            if (Element.class.isAssignableFrom(this.expectType)) {
                this.elementMetadata = Service.this.getSchema().bind(Element.getDefaultKey(this.expectType.asSubclass(Element.class)), getMetadataContext());
            } else {
                this.elementMetadata = null;
            }
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public ContentType getContentType() {
            return this.inputType;
        }

        @Override // com.google.gdata.wireformats.input.InputProperties
        public Class<?> getRootType() {
            return this.expectType;
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public ElementMetadata<?, ?> getRootMetadata() {
            return this.elementMetadata;
        }

        @Override // com.google.gdata.client.Service.ClientStreamProperties
        public boolean isPartial() {
            return getQueryParameter("fields") != null;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class ClientOutputProperties extends ClientStreamProperties implements OutputProperties {
        private ElementMetadata<?, ?> elementMetadata;
        protected final ContentType requestType;

        @Override // com.google.gdata.client.Service.ClientStreamProperties, com.google.gdata.wireformats.StreamProperties
        public /* bridge */ /* synthetic */ AltRegistry getAltRegistry() {
            return super.getAltRegistry();
        }

        @Override // com.google.gdata.client.Service.ClientStreamProperties, com.google.gdata.wireformats.StreamProperties
        public /* bridge */ /* synthetic */ ExtensionProfile getExtensionProfile() {
            return super.getExtensionProfile();
        }

        @Override // com.google.gdata.client.Service.ClientStreamProperties
        public /* bridge */ /* synthetic */ GDataRequest getGDataRequest() {
            return super.getGDataRequest();
        }

        @Override // com.google.gdata.client.Service.ClientStreamProperties, com.google.gdata.wireformats.StreamProperties
        public /* bridge */ /* synthetic */ String getQueryParameter(String str) {
            return super.getQueryParameter(str);
        }

        @Override // com.google.gdata.client.Service.ClientStreamProperties, com.google.gdata.wireformats.StreamProperties
        public /* bridge */ /* synthetic */ Collection getQueryParameterNames() {
            return super.getQueryParameterNames();
        }

        @Override // com.google.gdata.client.Service.ClientStreamProperties
        public /* bridge */ /* synthetic */ Version getRequestVersion() {
            return super.getRequestVersion();
        }

        @Override // com.google.gdata.client.Service.ClientStreamProperties
        public /* bridge */ /* synthetic */ boolean isPartial() {
            return super.isPartial();
        }

        public ClientOutputProperties(GDataRequest gDataRequest, Object obj) {
            super(gDataRequest);
            this.requestType = gDataRequest.getRequestContentType();
            init(obj);
        }

        public ClientOutputProperties(ContentType contentType, Object obj) {
            super();
            this.requestType = contentType;
            init(obj);
        }

        private void init(Object obj) {
            if (obj instanceof Element) {
                this.elementMetadata = Service.this.getSchema().bind(((Element) obj).getElementKey(), getMetadataContext());
            } else {
                this.elementMetadata = null;
            }
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public ContentType getContentType() {
            return this.requestType;
        }

        @Override // com.google.gdata.wireformats.StreamProperties
        public ElementMetadata<?, ?> getRootMetadata() {
            return this.elementMetadata;
        }

        public String getCallback() {
            return null;
        }
    }

    public void writeRequestData(GDataRequest gDataRequest, Object obj) throws IOException {
        writeRequestData(gDataRequest, new ClientOutputProperties(gDataRequest, obj), obj);
    }

    protected void writeRequestData(GDataRequest gDataRequest, ClientOutputProperties clientOutputProperties, Object obj) throws IOException {
        AltFormat altFormatLookupType = this.altRegistry.lookupType(clientOutputProperties.getContentType());
        if (altFormatLookupType == null) {
            altFormatLookupType = this.altRegistry.lookupName(AltFormat.MEDIA.getName());
        }
        if (altFormatLookupType == null) {
            throw new IllegalStateException("Unsupported request type: " + clientOutputProperties.getContentType());
        }
        OutputGenerator<?> generator = this.altRegistry.getGenerator(altFormatLookupType);
        if (!generator.getSourceType().isAssignableFrom(obj.getClass())) {
            throw new IllegalArgumentException("Invalid source type: expected: " + generator.getSourceType() + " but got: " + obj.getClass() + " for output format " + altFormatLookupType);
        }
        boolean z = !this.strictValidation || altFormatLookupType.equals(AltFormat.APPLICATION_XML);
        if (z) {
            AbstractExtension.disableStrictValidation();
        }
        try {
            generator.generate(gDataRequest.getRequestStream(), clientOutputProperties, obj);
        } finally {
            if (z) {
                AbstractExtension.enableStrictValidation();
            }
        }
    }

    public <E> E parseResponseData(GDataRequest gDataRequest, Class<E> cls) throws IOException, ServiceException {
        return (E) parseResponseData(gDataRequest.getParseSource(), new ClientInputProperties(gDataRequest, (Class<?>) cls), cls);
    }

    protected <E> E parseResponseData(ParseSource parseSource, ContentType contentType, Class<E> cls) throws IOException, ServiceException {
        return (E) parseResponseData(parseSource, new ClientInputProperties(contentType, (Class<?>) cls), cls);
    }

    private <E> E parseResponseData(ParseSource parseSource, InputProperties inputProperties, Class<E> cls) throws IOException, ServiceException {
        Preconditions.checkNotNull("resultType", cls);
        AltFormat altFormatLookupType = null;
        String queryParameter = inputProperties.getQueryParameter(GDataProtocol.Parameter.ALT);
        if (queryParameter != null) {
            altFormatLookupType = this.altRegistry.lookupName(queryParameter);
        }
        if (altFormatLookupType == null && (altFormatLookupType = this.altRegistry.lookupType(inputProperties.getContentType())) == null) {
            throw new ParseException("Unrecognized content type:" + inputProperties.getContentType());
        }
        InputParser<?> parser = this.altRegistry.getParser(altFormatLookupType);
        if (parser == null) {
            throw new ParseException("No parser for content type:" + altFormatLookupType);
        }
        if (!parser.getResultType().isAssignableFrom(cls)) {
            throw new IllegalStateException("Input parser (" + parser + ") does not produce expected result type: " + cls);
        }
        boolean z = (this.strictValidation && (inputProperties.getQueryParameter("fields") == null || Element.class.isAssignableFrom(cls))) ? false : true;
        if (z) {
            AbstractExtension.disableStrictValidation();
        }
        try {
            E e2 = (E) parser.parse(parseSource, inputProperties, cls);
            if (e2 instanceof IAtom) {
                ((IAtom) e2).setService(this);
            }
            return e2;
        } finally {
            if (z) {
                AbstractExtension.enableStrictValidation();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static UriParameterMap computeQueryMap(GDataRequest gDataRequest) {
        String query = gDataRequest.getRequestUrl().getQuery();
        return query == null ? UriParameterMap.EMPTY_MAP : UriParameterMap.parse(query);
    }
}
