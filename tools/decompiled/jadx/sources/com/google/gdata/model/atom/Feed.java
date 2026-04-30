package com.google.gdata.model.atom;

import com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary.LibraryOneUpViewConfiguration;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.Service;
import com.google.gdata.data.IFeed;
import com.google.gdata.data.IGenerator;
import com.google.gdata.data.ILink;
import com.google.gdata.data.ITextConstruct;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.ValidationContext;
import com.google.gdata.model.batch.BatchOperation;
import com.google.gdata.model.gd.GdAttributes;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.NotModifiedException;
import com.google.gdata.util.ServiceException;
import com.google.gdata.wireformats.ContentCreationException;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Feed extends Source implements IFeed {
    protected final FeedState feedState;
    public static final ElementKey<Void, Feed> KEY = ElementKey.of(new QName(Namespaces.atomNs, "feed"), Feed.class);
    public static final AttributeKey<URI> XML_BASE = AttributeKey.of(new QName(Namespaces.xmlNs, "base"), URI.class);
    public static final ElementKey<Integer, Element> ITEMS_PER_PAGE = ElementKey.of(new QName(Namespaces.openSearch1_1Ns, "itemsPerPage"), Integer.class, Element.class);
    public static final ElementKey<Integer, Element> START_INDEX = ElementKey.of(new QName(Namespaces.openSearch1_1Ns, LibraryOneUpViewConfiguration.START_INDEX_KEY), Integer.class, Element.class);
    public static final ElementKey<Integer, Element> TOTAL_RESULTS = ElementKey.of(new QName(Namespaces.openSearch1_1Ns, "totalResults"), Integer.class, Element.class);

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

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            Source.registerMetadata(metadataRegistry);
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(GdAttributes.ETAG);
            elementCreatorBuild.addAttribute(GdAttributes.KIND);
            elementCreatorBuild.addAttribute(GdAttributes.FIELDS);
            elementCreatorBuild.addAttribute(XML_BASE);
            elementCreatorBuild.addElement(TOTAL_RESULTS);
            elementCreatorBuild.addElement(START_INDEX);
            elementCreatorBuild.addElement(ITEMS_PER_PAGE);
            elementCreatorBuild.addElement(BatchOperation.KEY);
            elementCreatorBuild.addUndeclaredElementMarker();
            elementCreatorBuild.addElement(Entry.KEY);
        }
    }

    public class FeedState {
        public boolean canPost = true;
        public Service service;
        public String versionId;

        protected FeedState() {
        }
    }

    public Feed() {
        this(KEY);
    }

    protected Feed(ElementKey<?, ? extends Feed> elementKey) {
        super(elementKey);
        this.feedState = new FeedState();
    }

    protected Feed(ElementKey<?, ? extends Feed> elementKey, Feed feed) {
        super(elementKey, feed);
        this.feedState = feed.feedState;
    }

    public Service getService() {
        return this.feedState.service;
    }

    @Override // com.google.gdata.data.IAtom
    public void setService(Service service) {
        this.feedState.service = service;
        Iterator<? extends Entry> it = getEntries().iterator();
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
    public String getVersionId() {
        return this.feedState.versionId;
    }

    @Override // com.google.gdata.data.IAtom
    public void setVersionId(String str) {
        this.feedState.versionId = str;
    }

    @Override // com.google.gdata.data.IAtom
    public String getEtag() {
        return (String) getAttributeValue(GdAttributes.ETAG);
    }

    @Override // com.google.gdata.data.IAtom
    public void setEtag(String str) {
        setAttributeValue(GdAttributes.ETAG, str);
    }

    @Override // com.google.gdata.data.IAtom
    public String getKind() {
        return (String) getAttributeValue(GdAttributes.KIND);
    }

    @Override // com.google.gdata.data.IAtom
    public void setKind(String str) {
        setAttributeValue(GdAttributes.KIND, str);
    }

    public String getSelectedFields() {
        return (String) getAttributeValue(GdAttributes.FIELDS);
    }

    public void setSelectedFields(String str) {
        setAttributeValue(GdAttributes.FIELDS, str);
    }

    public URI getXmlBase() {
        return (URI) getAttributeValue(XML_BASE);
    }

    public void setXmlBase(URI uri) {
        setAttributeValue(XML_BASE, uri);
    }

    @Override // com.google.gdata.data.IFeed
    public int getTotalResults() {
        Integer num = (Integer) getElementValue(TOTAL_RESULTS);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.gdata.data.IFeed
    public void setTotalResults(int i) {
        if (i != -1) {
            setElement(TOTAL_RESULTS, new Element(TOTAL_RESULTS).setTextValue(Integer.valueOf(i)));
        } else {
            removeElement(TOTAL_RESULTS);
        }
    }

    @Override // com.google.gdata.data.IFeed
    public int getStartIndex() {
        Integer num = (Integer) getElementValue(START_INDEX);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.gdata.data.IFeed
    public void setStartIndex(int i) {
        if (i != -1) {
            setElement(START_INDEX, new Element(START_INDEX).setTextValue(Integer.valueOf(i)));
        } else {
            removeElement(START_INDEX);
        }
    }

    @Override // com.google.gdata.data.IFeed
    public int getItemsPerPage() {
        Integer num = (Integer) getElementValue(ITEMS_PER_PAGE);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.gdata.data.IFeed
    public void setItemsPerPage(int i) {
        if (i != -1) {
            setElement(ITEMS_PER_PAGE, new Element(ITEMS_PER_PAGE).setTextValue(Integer.valueOf(i)));
        } else {
            removeElement(ITEMS_PER_PAGE);
        }
    }

    @Override // com.google.gdata.data.IFeed
    public List<? extends Entry> getEntries() {
        return getElements(Entry.KEY);
    }

    protected <T extends Entry> List<T> getEntries(ElementKey<?, T> elementKey) {
        return getElements(elementKey);
    }

    public void setEntries(Collection<? extends Entry> collection) {
        clearEntries();
        Iterator<? extends Entry> it = collection.iterator();
        while (it.hasNext()) {
            addElement(Entry.KEY, it.next());
        }
    }

    public void clearEntries() {
        removeElement(Entry.KEY);
    }

    public void addEntry(Entry entry) {
        addElement(entry);
    }

    public boolean removeEntry(Entry entry) {
        return removeElement(Entry.KEY, entry);
    }

    @Override // com.google.gdata.data.IFeed
    public Entry createEntry() {
        return createEntry(Entry.KEY);
    }

    public <E extends Entry> E createEntry(ElementKey<?, E> elementKey) {
        try {
            E e2 = (E) Element.createElement(elementKey);
            if (this.feedState.service != null) {
                e2.setService(this.feedState.service);
            }
            return e2;
        } catch (ContentCreationException e3) {
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

    public Feed getSelf() throws IOException, ServiceException {
        Feed feed;
        if (this.feedState.service == null) {
            throw new ServiceException(CoreErrorDomain.ERR.feedNotAssociated);
        }
        Link selfLink = getSelfLink();
        if (selfLink == null) {
            throw new UnsupportedOperationException("Feed cannot be retrieved");
        }
        URL url = selfLink.getHrefUri().toURL();
        try {
            String etag = getEtag();
            if (etag != null) {
                feed = (Feed) this.feedState.service.getFeed(url, getClass(), etag);
            } else {
                feed = (Feed) this.feedState.service.getFeed(url, getClass(), getUpdated());
            }
            return feed;
        } catch (NotModifiedException e2) {
            return this;
        }
    }

    @Override // com.google.gdata.data.IAtom
    public void removeLinks() {
        removeElement(Link.KEY);
    }

    public <T extends Entry> T insert(T t) throws IOException, ServiceException {
        if (this.feedState.service == null) {
            throw new ServiceException(CoreErrorDomain.ERR.entryNotAssociated);
        }
        Link entryPostLink = getEntryPostLink();
        if (entryPostLink == null) {
            throw new UnsupportedOperationException("Media cannot be inserted");
        }
        return (T) this.feedState.service.insert(entryPostLink.getHrefUri().toURL(), t);
    }

    @Override // com.google.gdata.model.Element
    protected Element narrow(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        String elementKind = Kinds.getElementKind(this);
        return elementKind != null ? adapt(this, elementMetadata, elementKind) : super.narrow(elementMetadata, validationContext);
    }

    @Override // com.google.gdata.model.Element
    public Element resolve(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        this.feedState.canPost = getEntryPostLink() != null;
        return super.resolve(elementMetadata, validationContext);
    }

    public <T extends Entry> List<T> getEntries(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        for (Entry entry : getEntries()) {
            if (cls.isInstance(entry)) {
                arrayList.add(cls.cast(entry));
            }
        }
        return arrayList;
    }
}
