package com.google.gdata.data;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary.LibraryOneUpViewConfiguration;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionVisitor;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Source;
import com.google.gdata.data.TextConstruct;
import com.google.gdata.util.EventSourceParser;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.NotModifiedException;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.ParseUtil;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseFeed<F extends BaseFeed, E extends BaseEntry> extends Source implements IFeed, Kind.Adaptable, Kind.Adaptor {
    private static final Collection<XmlWriter.Attribute> rssHeaderAttrs = new Vector(1);
    protected List<E> entries;
    protected Class<? extends E> entryClass;
    protected FeedState feedState;

    @Override // com.google.gdata.data.IAtom
    public /* bridge */ /* synthetic */ ILink addLink(String str, String str2, String str3) {
        return super.addLink(str, str2, str3);
    }

    @Override // com.google.gdata.data.IFeed
    public /* bridge */ /* synthetic */ IGenerator getGenerator() {
        return super.getGenerator();
    }

    @Override // com.google.gdata.data.IAtom
    public /* bridge */ /* synthetic */ ILink getLink(String str, String str2) {
        return super.getLink(str, str2);
    }

    @Override // com.google.gdata.data.IFeed
    public /* bridge */ /* synthetic */ ITextConstruct getSubtitle() {
        return super.getSubtitle();
    }

    @Override // com.google.gdata.data.IAtom
    public /* bridge */ /* synthetic */ ITextConstruct getTitle() {
        return super.getTitle();
    }

    @Override // com.google.gdata.data.IFeed
    public /* bridge */ /* synthetic */ IGenerator setGenerator(String str, String str2, String str3) {
        return super.setGenerator(str, str2, str3);
    }

    public class FeedState {
        public String etag;
        public String fields;
        public String kind;
        public Service service;
        public String versionId;
        public boolean canPost = true;
        public int totalResults = -1;
        public int startIndex = -1;
        public int itemsPerPage = -1;
        public Kind.Adaptable adaptable = new Kind.AdaptableHelper();

        protected FeedState() {
        }
    }

    protected BaseFeed(Class<? extends E> cls) {
        this.entries = new LinkedList();
        this.feedState = new FeedState();
        this.entryClass = cls;
    }

    protected BaseFeed(Class<? extends E> cls, BaseFeed<?, ?> baseFeed) {
        super(baseFeed);
        this.entries = new LinkedList();
        this.feedState = baseFeed.feedState;
        this.entryClass = cls;
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.addDeclarations(createEntry());
    }

    public Service getService() {
        return this.feedState.service;
    }

    @Override // com.google.gdata.data.IAtom
    public void setService(Service service) {
        this.feedState.service = service;
        Iterator<E> it = this.entries.iterator();
        while (it.hasNext()) {
            it.next().setService(service);
        }
    }

    @Override // com.google.gdata.data.IFeed
    public boolean getCanPost() {
        return this.feedState.canPost;
    }

    @Override // com.google.gdata.data.IFeed
    public void setCanPost(boolean z) {
        this.feedState.canPost = z;
    }

    @Override // com.google.gdata.data.IAtom
    public void setVersionId(String str) {
        this.feedState.versionId = str;
    }

    @Override // com.google.gdata.data.IAtom
    public String getVersionId() {
        return this.feedState.versionId;
    }

    @Override // com.google.gdata.data.IAtom
    public String getEtag() {
        return this.feedState.etag;
    }

    @Override // com.google.gdata.data.IAtom
    public void setEtag(String str) {
        this.feedState.etag = str;
    }

    public String getSelectedFields() {
        return this.feedState.fields;
    }

    public void setSelectedFields(String str) {
        this.feedState.fields = str;
    }

    @Override // com.google.gdata.data.IAtom
    public String getKind() {
        return this.feedState.kind;
    }

    @Override // com.google.gdata.data.IAtom
    public void setKind(String str) {
        this.feedState.kind = str;
    }

    @Override // com.google.gdata.data.IFeed
    public int getTotalResults() {
        return this.feedState.totalResults;
    }

    @Override // com.google.gdata.data.IFeed
    public void setTotalResults(int i) {
        this.feedState.totalResults = i;
    }

    @Override // com.google.gdata.data.IFeed
    public int getStartIndex() {
        return this.feedState.startIndex;
    }

    @Override // com.google.gdata.data.IFeed
    public void setStartIndex(int i) {
        this.feedState.startIndex = i;
    }

    @Override // com.google.gdata.data.IFeed
    public int getItemsPerPage() {
        return this.feedState.itemsPerPage;
    }

    @Override // com.google.gdata.data.IFeed
    public void setItemsPerPage(int i) {
        this.feedState.itemsPerPage = i;
    }

    @Override // com.google.gdata.data.IFeed
    public List<E> getEntries() {
        return this.entries;
    }

    public void setEntries(List<E> list) {
        this.entries = list;
    }

    @Override // com.google.gdata.data.Kind.Adaptable
    public void addAdaptor(Kind.Adaptor adaptor) {
        this.feedState.adaptable.addAdaptor(adaptor);
    }

    @Override // com.google.gdata.data.Kind.Adaptable
    public Collection<Kind.Adaptor> getAdaptors() {
        return this.feedState.adaptable.getAdaptors();
    }

    @Override // com.google.gdata.data.Kind.Adaptable
    public <A extends Kind.Adaptor> A getAdaptor(Class<A> cls) {
        return (A) this.feedState.adaptable.getAdaptor(cls);
    }

    @Override // com.google.gdata.data.IFeed
    public E createEntry() {
        try {
            E eNewInstance = this.entryClass.newInstance();
            if (this.feedState.service != null) {
                eNewInstance.setService(this.feedState.service);
            }
            return eNewInstance;
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException(e2);
        } catch (InstantiationException e3) {
            throw new IllegalStateException(e3);
        }
    }

    @Override // com.google.gdata.data.IFeed
    public Link getEntryPostLink() {
        return getLink(ILink.Rel.ENTRY_POST, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.IAtom
    public Link getSelfLink() {
        return getLink("self", ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.IFeed
    public Link getNextLink() {
        return getLink(ILink.Rel.NEXT, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.IFeed
    public Link getPreviousLink() {
        return getLink(ILink.Rel.PREVIOUS, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.IFeed
    public Link getFeedBatchLink() {
        return getLink(ILink.Rel.FEED_BATCH, ILink.Type.ATOM);
    }

    public F getSelf() throws IOException, ServiceException {
        F f2;
        if (this.feedState.service == null) {
            throw new ServiceException(CoreErrorDomain.ERR.feedNotAssociated);
        }
        Link selfLink = getSelfLink();
        if (selfLink == null) {
            throw new UnsupportedOperationException("Feed cannot be retrieved");
        }
        URL url = new URL(selfLink.getHref());
        try {
            if (this.feedState.etag != null) {
                f2 = (F) this.feedState.service.getFeed(url, getClass(), this.feedState.etag);
            } else {
                f2 = (F) this.feedState.service.getFeed(url, getClass(), this.srcState.updated);
            }
            return f2;
        } catch (NotModifiedException e2) {
            return this;
        }
    }

    /* JADX WARN: Incorrect return type in method signature: <T:TE;>(TT;)TT; */
    public BaseEntry insert(BaseEntry baseEntry) throws IOException, ServiceException {
        if (this.feedState.service == null) {
            throw new ServiceException(CoreErrorDomain.ERR.entryNotAssociated);
        }
        Link entryPostLink = getEntryPostLink();
        if (entryPostLink == null) {
            throw new UnsupportedOperationException("Media cannot be inserted");
        }
        return (BaseEntry) this.feedState.service.insert(new URL(entryPostLink.getHref()), baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint
    protected void visitChildren(ExtensionVisitor extensionVisitor) throws ExtensionVisitor.StoppedException {
        Iterator<E> it = this.entries.iterator();
        while (it.hasNext()) {
            visitChild(extensionVisitor, it.next());
        }
        Iterator<Link> it2 = getLinks().iterator();
        while (it2.hasNext()) {
            visitChild(extensionVisitor, it2.next());
        }
        super.visitChildren(extensionVisitor);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        generateAtom(xmlWriter, extensionProfile);
    }

    @Override // com.google.gdata.data.Source
    public void generateAtom(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        generateFeedStart(extensionProfile, xmlWriter, null);
        generateEntries(xmlWriter, extensionProfile);
        generateFeedEnd(xmlWriter);
    }

    private void generateEntries(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        xmlWriter.startRepeatingElement();
        Iterator<E> it = this.entries.iterator();
        while (it.hasNext()) {
            it.next().generateAtom(xmlWriter, extensionProfile);
        }
        xmlWriter.endRepeatingElement();
    }

    public void generateFeedEnd(XmlWriter xmlWriter) throws IOException {
        xmlWriter.endElement(Namespaces.atomNs, "feed");
    }

    public void generateFeedStart(ExtensionProfile extensionProfile, XmlWriter xmlWriter, Collection<XmlNamespace> collection) throws IOException {
        XmlNamespace openSearchNs = Namespaces.getOpenSearchNs();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(Namespaces.atomNs);
        linkedHashSet.add(openSearchNs);
        linkedHashSet.addAll(extensionProfile.getNamespaceDecls());
        ArrayList arrayList = new ArrayList(3);
        if (this.feedState.kind != null && Service.getVersion().isAfter(Service.Versions.V1)) {
            linkedHashSet.add(Namespaces.gNs);
            arrayList.add(new XmlWriter.Attribute("gd", "kind", this.feedState.kind));
        }
        if (this.feedState.etag != null && Service.getVersion().isAfter(Service.Versions.V1)) {
            linkedHashSet.add(Namespaces.gNs);
            arrayList.add(new XmlWriter.Attribute("gd", "etag", this.feedState.etag));
        }
        if (this.feedState.fields != null && Service.getVersion().isAfter(Service.Versions.V1)) {
            linkedHashSet.add(Namespaces.gNs);
            arrayList.add(new XmlWriter.Attribute("gd", "fields", this.feedState.fields));
        }
        AttributeGenerator attributeGenerator = new AttributeGenerator();
        putAttributes(attributeGenerator);
        generateAttributes(arrayList, attributeGenerator);
        generateStartElement(xmlWriter, Namespaces.atomNs, "feed", arrayList, linkedHashSet);
        generateInnerAtom(xmlWriter, extensionProfile);
        if (getTotalResults() != -1) {
            xmlWriter.simpleElement(openSearchNs, "totalResults", null, String.valueOf(this.feedState.totalResults));
        }
        if (getStartIndex() != -1) {
            xmlWriter.simpleElement(openSearchNs, LibraryOneUpViewConfiguration.START_INDEX_KEY, null, String.valueOf(this.feedState.startIndex));
        }
        if (getItemsPerPage() != -1) {
            xmlWriter.simpleElement(openSearchNs, "itemsPerPage", null, String.valueOf(this.feedState.itemsPerPage));
        }
        generateExtensions(xmlWriter, extensionProfile);
    }

    public void generateRss(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        String name;
        String lang;
        XmlNamespace openSearchNs = Namespaces.getOpenSearchNs();
        Vector vector = new Vector();
        vector.add(Namespaces.atomNs);
        vector.add(openSearchNs);
        vector.addAll(extensionProfile.getNamespaceDecls());
        xmlWriter.startElement(Namespaces.rssNs, "rss", rssHeaderAttrs, vector);
        generateStartElement(xmlWriter, Namespaces.rssNs, "channel", null, null);
        if (this.srcState.id != null) {
            xmlWriter.simpleElement(Namespaces.atomNs, "id", null, this.srcState.id);
        }
        if (this.xmlBlob != null && (lang = this.xmlBlob.getLang()) != null) {
            xmlWriter.simpleElement(Namespaces.rssNs, "language", null, lang);
        }
        if (this.srcState.updated != null) {
            xmlWriter.simpleElement(Namespaces.rssNs, "lastBuildDate", null, this.srcState.updated.toStringRfc822());
        }
        xmlWriter.startRepeatingElement();
        Iterator<Category> it = this.srcState.categories.iterator();
        while (it.hasNext()) {
            it.next().generateRss(xmlWriter);
        }
        xmlWriter.endRepeatingElement();
        if (this.srcState.title != null) {
            this.srcState.title.generateRss(xmlWriter, "title", TextConstruct.RssFormat.PLAIN_TEXT);
        }
        if (this.srcState.subtitle != null) {
            this.srcState.subtitle.generateRss(xmlWriter, "description", TextConstruct.RssFormat.FULL_HTML);
        } else {
            xmlWriter.simpleElement(Namespaces.rssNs, "description", null, null);
        }
        Link htmlLink = getHtmlLink();
        if (htmlLink != null) {
            xmlWriter.simpleElement(Namespaces.rssNs, "link", null, htmlLink.getHref());
        }
        if (this.srcState.logo != null || this.srcState.icon != null) {
            xmlWriter.startElement(Namespaces.rssNs, "image", null, null);
            xmlWriter.simpleElement(Namespaces.rssNs, "url", null, this.srcState.logo != null ? this.srcState.logo : this.srcState.icon);
            if (this.srcState.title != null) {
                this.srcState.title.generateRss(xmlWriter, "title", TextConstruct.RssFormat.PLAIN_TEXT);
            }
            if (htmlLink != null) {
                xmlWriter.simpleElement(Namespaces.rssNs, "link", null, htmlLink.getHref());
            }
            xmlWriter.endElement(Namespaces.rssNs, "image");
        }
        if (this.srcState.rights != null) {
            this.srcState.rights.generateRss(xmlWriter, "copyright", TextConstruct.RssFormat.PLAIN_TEXT);
        }
        if (this.srcState.authors.size() > 0) {
            this.srcState.authors.get(0).generateRss(xmlWriter, "managingEditor");
        }
        if (this.srcState.generator != null && (name = this.srcState.generator.getName()) != null) {
            xmlWriter.simpleElement(Namespaces.rssNs, "generator", null, name);
        }
        if (getTotalResults() != -1) {
            xmlWriter.simpleElement(openSearchNs, "totalResults", null, String.valueOf(this.feedState.totalResults));
        }
        if (getStartIndex() != -1) {
            xmlWriter.simpleElement(openSearchNs, LibraryOneUpViewConfiguration.START_INDEX_KEY, null, String.valueOf(this.feedState.startIndex));
        }
        if (getItemsPerPage() != -1) {
            xmlWriter.simpleElement(openSearchNs, "itemsPerPage", null, String.valueOf(this.feedState.itemsPerPage));
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.startRepeatingElement();
        Iterator<E> it2 = this.entries.iterator();
        while (it2.hasNext()) {
            it2.next().generateRss(xmlWriter, extensionProfile);
        }
        xmlWriter.endRepeatingElement();
        xmlWriter.endElement(Namespaces.rssNs, "channel");
        xmlWriter.endElement(Namespaces.rssNs, "rss");
    }

    static {
        rssHeaderAttrs.add(new XmlWriter.Attribute(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, AdminSettingsConstants.SERVICE_VERSION));
    }

    public static BaseFeed<?, ?> readFeed(ParseSource parseSource) throws IOException, ServiceException {
        return readFeed(parseSource, null, null);
    }

    public static <F extends BaseFeed> F readFeed(ParseSource parseSource, Class<F> cls, ExtensionProfile extensionProfile) throws IOException, ServiceException {
        return (F) ParseUtil.readFeed(parseSource, cls, extensionProfile, null);
    }

    @Override // com.google.gdata.data.Source
    public void parseAtom(ExtensionProfile extensionProfile, InputStream inputStream) throws ParseException, IOException {
        new XmlParser().parse(inputStream, new FeedHandler(extensionProfile), Namespaces.atom, "feed");
    }

    @Override // com.google.gdata.data.Source
    public void parseAtom(ExtensionProfile extensionProfile, Reader reader) throws ParseException, IOException {
        new XmlParser().parse(reader, new FeedHandler(extensionProfile), Namespaces.atom, "feed");
    }

    public void parseAtom(ExtensionProfile extensionProfile, XmlEventSource xmlEventSource) throws ParseException, IOException {
        new EventSourceParser(new FeedHandler(extensionProfile), Namespaces.atom, "feed").parse(xmlEventSource);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException {
        return new FeedHandler(extensionProfile);
    }

    public class FeedHandler extends Source.SourceHandler {
        private XmlNamespace openSearchNs;

        public FeedHandler(ExtensionProfile extensionProfile) {
            super(extensionProfile, BaseFeed.this.getClass());
            this.openSearchNs = Namespaces.getOpenSearchNs();
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("http://schemas.google.com/g/2005")) {
                if (str2.equals("etag")) {
                    BaseFeed.this.setEtag(str3);
                    return;
                } else if (str2.equals("fields")) {
                    BaseFeed.this.setSelectedFields(str3);
                    return;
                } else if (str2.equals("kind")) {
                    BaseFeed.this.setKind(str3);
                    return;
                }
            }
            super.processAttribute(str, str2, str3);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // com.google.gdata.data.Source.SourceHandler, com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            XmlParser.ElementHandler extensionHandler = BaseFeed.this.getExtensionHandler(this.extProfile, BaseFeed.this.getClass(), str, str2, attributes);
            if (extensionHandler == null) {
                if (str.equals(Namespaces.atom)) {
                    if (str2.equals("entry")) {
                        BaseEntry baseEntryCreateEntry = BaseFeed.this.createEntry();
                        BaseFeed.this.entries.add((E) baseEntryCreateEntry);
                        baseEntryCreateEntry.getClass();
                        return new BaseEntry.AtomHandler(this.extProfile);
                    }
                    return super.getChildHandler(str, str2, attributes);
                }
                if (str.equals(this.openSearchNs.getUri())) {
                    if (str2.equals("totalResults")) {
                        return new TotalResultsHandler();
                    }
                    if (str2.equals(LibraryOneUpViewConfiguration.START_INDEX_KEY)) {
                        return new StartIndexHandler();
                    }
                    if (str2.equals("itemsPerPage")) {
                        return new ItemsPerPageHandler();
                    }
                    return null;
                }
                return super.getChildHandler(str, str2, attributes);
            }
            return extensionHandler;
        }

        class TotalResultsHandler extends XmlParser.ElementHandler {
            private TotalResultsHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (BaseFeed.this.feedState.totalResults != -1) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateTotalResults);
                }
                if (this.value == null) {
                    throw new ParseException(CoreErrorDomain.ERR.logoValueRequired);
                }
                try {
                    BaseFeed.this.feedState.totalResults = Integer.valueOf(this.value).intValue();
                } catch (NumberFormatException e2) {
                    throw new ParseException(CoreErrorDomain.ERR.totalResultsNotInteger);
                }
            }
        }

        class StartIndexHandler extends XmlParser.ElementHandler {
            private StartIndexHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (BaseFeed.this.feedState.startIndex != -1) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateStartIndex);
                }
                if (this.value == null) {
                    throw new ParseException(CoreErrorDomain.ERR.logoValueRequired);
                }
                try {
                    BaseFeed.this.feedState.startIndex = Integer.valueOf(this.value).intValue();
                } catch (NumberFormatException e2) {
                    throw new ParseException(CoreErrorDomain.ERR.startIndexNotInteger);
                }
            }
        }

        class ItemsPerPageHandler extends XmlParser.ElementHandler {
            private ItemsPerPageHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (BaseFeed.this.feedState.itemsPerPage != -1) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateItemsPerPage);
                }
                if (this.value == null) {
                    throw new ParseException(CoreErrorDomain.ERR.logoValueRequired);
                }
                try {
                    BaseFeed.this.feedState.itemsPerPage = Integer.valueOf(this.value).intValue();
                } catch (NumberFormatException e2) {
                    throw new ParseException(CoreErrorDomain.ERR.itemsPerPageNotInteger);
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            BaseFeed.this.feedState.canPost = BaseFeed.this.getEntryPostLink() != null;
        }
    }

    public BaseFeed<?, ?> getAdaptedFeed() throws Kind.AdaptorException {
        List arrayList;
        BaseFeed<?, ?> baseFeed = null;
        for (Kind.Adaptor adaptor : getAdaptors()) {
            if (adaptor instanceof BaseFeed) {
                baseFeed = (baseFeed == null || baseFeed.getClass().isAssignableFrom(adaptor.getClass())) ? (BaseFeed) adaptor : baseFeed;
            }
        }
        if (baseFeed != null) {
            if (baseFeed != this) {
                arrayList = this.entries;
            } else {
                arrayList = new ArrayList();
                arrayList.addAll(this.entries);
            }
            baseFeed.getEntries().clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                baseFeed.getEntries().add(((BaseEntry) it.next()).getAdaptedEntry());
            }
        }
        return baseFeed;
    }

    public <T extends BaseEntry> List<T> getEntries(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = getEntries().iterator();
        while (it.hasNext()) {
            BaseEntry baseEntry = (BaseEntry) it.next().getAdaptor(cls);
            if (baseEntry != null) {
                arrayList.add(baseEntry);
            }
        }
        return arrayList;
    }
}
