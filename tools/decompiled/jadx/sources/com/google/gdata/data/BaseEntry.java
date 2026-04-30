package com.google.gdata.data;

import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.GDataProtocol;
import com.google.gdata.client.Service;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category.AtomHandler;
import com.google.gdata.data.Content;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionVisitor;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link.AtomHandler;
import com.google.gdata.data.Person.AtomHandler;
import com.google.gdata.data.PubControl.AtomHandler;
import com.google.gdata.data.Source.SourceHandler;
import com.google.gdata.data.TextConstruct;
import com.google.gdata.data.batch.BatchInterrupted;
import com.google.gdata.data.batch.BatchStatus;
import com.google.gdata.data.docs.DocumentListEntry;
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
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.Vector;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseEntry<E extends BaseEntry> extends ExtensionPoint implements IEntry, Kind.Adaptable, Kind.Adaptor {
    private static final Collection<XmlNamespace> namespaceDeclsAtom = new Vector(1);
    private static final Collection<XmlNamespace> namespaceDeclsRss = new Vector(1);
    private XmlNamespace atomPubNs;
    protected EntryState state;

    public class EntryState {
        public Content content;
        public DateTime edited;
        public String etag;
        public String fields;
        public String id;
        public String kind;
        public PubControl pubControl;
        public DateTime published;
        public TextConstruct rights;
        public Service service;
        public Source source;
        public TextConstruct summary;
        public TextConstruct title;
        public DateTime updated;
        public String versionId;
        public HashSet<Category> categories = new HashSet<>();
        public LinkedList<Link> links = new LinkedList<>();
        public LinkedList<Person> authors = new LinkedList<>();
        public LinkedList<Person> contributors = new LinkedList<>();
        public boolean canEdit = true;
        public Kind.Adaptable adaptable = new Kind.AdaptableHelper();

        protected EntryState() {
        }
    }

    protected BaseEntry() {
        this.state = new EntryState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public XmlNamespace getAtomPubNs() {
        if (this.atomPubNs == null) {
            this.atomPubNs = Namespaces.getAtomPubNs();
        }
        return this.atomPubNs;
    }

    protected BaseEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        this.state = baseEntry.state;
    }

    @Override // com.google.gdata.data.IAtom
    public String getId() {
        return this.state.id;
    }

    @Override // com.google.gdata.data.IAtom
    public void setId(String str) {
        if (str != null && "-".equals(str)) {
            throw new IllegalArgumentException("Entry.id must not be equal to '-'.");
        }
        this.state.id = str;
    }

    @Override // com.google.gdata.data.IAtom
    public String getVersionId() {
        return this.state.versionId;
    }

    @Override // com.google.gdata.data.IAtom
    public void setVersionId(String str) {
        this.state.versionId = str;
    }

    @Override // com.google.gdata.data.IAtom
    public String getEtag() {
        return this.state.etag;
    }

    @Override // com.google.gdata.data.IAtom
    public void setEtag(String str) {
        this.state.etag = str;
    }

    @Override // com.google.gdata.data.IEntry
    public String getSelectedFields() {
        return this.state.fields;
    }

    @Override // com.google.gdata.data.IEntry
    public void setSelectedFields(String str) {
        this.state.fields = str;
    }

    @Override // com.google.gdata.data.IAtom
    public String getKind() {
        return this.state.kind;
    }

    @Override // com.google.gdata.data.IAtom
    public void setKind(String str) {
        this.state.kind = str;
    }

    @Override // com.google.gdata.data.IEntry
    public DateTime getPublished() {
        return this.state.published;
    }

    @Override // com.google.gdata.data.IEntry
    public void setPublished(DateTime dateTime) {
        if (dateTime != null && dateTime.getTzShift() == null) {
            throw new IllegalArgumentException("Entry.published must have a timezone.");
        }
        this.state.published = dateTime;
    }

    @Override // com.google.gdata.data.IAtom
    public DateTime getUpdated() {
        return this.state.updated;
    }

    @Override // com.google.gdata.data.IAtom
    public void setUpdated(DateTime dateTime) {
        if (dateTime != null && dateTime.getTzShift() == null) {
            throw new IllegalArgumentException("Entry.updated must have a timezone.");
        }
        this.state.updated = dateTime;
    }

    @Override // com.google.gdata.data.IEntry
    public DateTime getEdited() {
        return this.state.edited;
    }

    @Override // com.google.gdata.data.IEntry
    public void setEdited(DateTime dateTime) {
        if (dateTime != null && dateTime.getTzShift() == null) {
            throw new IllegalArgumentException("Entry.edited must have a timezone.");
        }
        this.state.edited = dateTime;
    }

    @Override // com.google.gdata.data.IAtom
    public Set<Category> getCategories() {
        return this.state.categories;
    }

    @Override // com.google.gdata.data.IAtom
    public TextConstruct getTitle() {
        return this.state.title;
    }

    public void setTitle(TextConstruct textConstruct) {
        this.state.title = textConstruct;
    }

    @Override // com.google.gdata.data.IEntry
    public TextConstruct getSummary() {
        return this.state.summary;
    }

    public void setSummary(TextConstruct textConstruct) {
        this.state.summary = textConstruct;
    }

    public TextConstruct getRights() {
        return this.state.rights;
    }

    public void setRights(TextConstruct textConstruct) {
        this.state.rights = textConstruct;
    }

    @Override // com.google.gdata.data.IEntry
    public Content getContent() {
        return this.state.content;
    }

    public void setContent(Content content) {
        this.state.content = content;
    }

    public TextContent getTextContent() {
        if (!(getContent() instanceof TextContent)) {
            throw new IllegalStateException("Content object is not a TextContent");
        }
        return (TextContent) getContent();
    }

    public String getPlainTextContent() {
        TextConstruct content = getTextContent().getContent();
        if (!(content instanceof PlainTextConstruct)) {
            throw new IllegalStateException("TextConstruct object is not a PlainTextConstruct");
        }
        return content.getPlainText();
    }

    public void setContent(TextConstruct textConstruct) {
        this.state.content = new TextContent(textConstruct);
    }

    @Override // com.google.gdata.data.IAtom
    public List<Link> getLinks() {
        return this.state.links;
    }

    public void addLink(Link link) {
        this.state.links.add(link);
    }

    @Override // com.google.gdata.data.IAtom
    public Link addLink(String str, String str2, String str3) {
        Link link = new Link(str, str2, str3);
        addLink(link);
        return link;
    }

    @Override // com.google.gdata.data.IAtom
    public List<Person> getAuthors() {
        return this.state.authors;
    }

    public List<Person> getContributors() {
        return this.state.contributors;
    }

    public Source getSource() {
        return this.state.source;
    }

    public void setSource(Source source) {
        this.state.source = source;
    }

    public void setDraft(Boolean bool) {
        if (this.state.pubControl == null) {
            if (Boolean.TRUE.equals(bool)) {
                this.state.pubControl = new PubControl();
            } else {
                return;
            }
        }
        this.state.pubControl.setDraft(bool);
    }

    public boolean isDraft() {
        if (this.state.pubControl != null) {
            return this.state.pubControl.isDraft();
        }
        return false;
    }

    public PubControl getPubControl() {
        return this.state.pubControl;
    }

    public void setPubControl(PubControl pubControl) {
        this.state.pubControl = pubControl;
    }

    @Override // com.google.gdata.data.IAtom
    public void setService(Service service) {
        this.state.service = service;
    }

    public Service getService() {
        return this.state.service;
    }

    @Override // com.google.gdata.data.IEntry
    public boolean getCanEdit() {
        return this.state.canEdit;
    }

    @Override // com.google.gdata.data.IEntry
    public void setCanEdit(boolean z) {
        this.state.canEdit = z;
    }

    @Override // com.google.gdata.data.Kind.Adaptable
    public void addAdaptor(Kind.Adaptor adaptor) {
        this.state.adaptable.addAdaptor(adaptor);
    }

    @Override // com.google.gdata.data.Kind.Adaptable
    public Collection<Kind.Adaptor> getAdaptors() {
        return this.state.adaptable.getAdaptors();
    }

    @Override // com.google.gdata.data.Kind.Adaptable
    public <A extends Kind.Adaptor> A getAdaptor(Class<A> cls) {
        return (A) this.state.adaptable.getAdaptor(cls);
    }

    @Override // com.google.gdata.data.IAtom
    public Link getLink(String str, String str2) {
        for (Link link : this.state.links) {
            if (link.matches(str, str2)) {
                return link;
            }
        }
        return null;
    }

    public List<Link> getLinks(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Link link : this.state.links) {
            if (link.matches(str, str2)) {
                arrayList.add(link);
            }
        }
        return arrayList;
    }

    @Override // com.google.gdata.data.IAtom
    public void removeLinks(String str, String str2) {
        Iterator<Link> it = this.state.links.iterator();
        while (it.hasNext()) {
            if (it.next().matches(str, str2)) {
                it.remove();
            }
        }
    }

    @Override // com.google.gdata.data.IAtom
    public void removeLinks() {
        this.state.links.clear();
    }

    public void addHtmlLink(String str, String str2, String str3) {
        Link link = new Link();
        link.setRel("alternate");
        link.setType(ILink.Type.HTML);
        link.setHref(str);
        if (str2 != null) {
            link.setHrefLang(str2);
        }
        if (str3 != null) {
            link.setTitle(str3);
        }
        this.state.links.add(link);
    }

    @Override // com.google.gdata.data.IAtom
    public Link getSelfLink() {
        return getLink("self", ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.IEntry
    public Link getEditLink() {
        return getLink(ILink.Rel.ENTRY_EDIT, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.IEntry
    public Link getMediaEditLink() {
        Link link = getLink(ILink.Rel.MEDIA_EDIT, (String) null);
        if (link == null) {
            return getLink(ILink.Rel.MEDIA_EDIT_BACKCOMPAT, (String) null);
        }
        return link;
    }

    @Override // com.google.gdata.data.IEntry
    public Link getResumableEditMediaLink() {
        return getLink(ILink.Rel.RESUMABLE_EDIT_MEDIA, (String) null);
    }

    public Link getHtmlLink() {
        return getLink("alternate", ILink.Type.HTML);
    }

    public E getSelf() throws IOException, ServiceException {
        if (this.state.service == null) {
            throw new ServiceException(CoreErrorDomain.ERR.entryNotAssociated);
        }
        Link selfLink = getSelfLink();
        if (selfLink == null) {
            throw new UnsupportedOperationException("Entry cannot be retrieved");
        }
        URL url = new URL(selfLink.getHref());
        try {
            if (this.state.etag != null) {
                return (E) this.state.service.getEntry(url, getClass(), this.state.etag);
            }
            return (E) this.state.service.getEntry(url, getClass(), this.state.edited != null ? this.state.edited : this.state.updated);
        } catch (NotModifiedException e2) {
            return this;
        }
    }

    public E update() throws IOException, ServiceException {
        if (this.state.service == null) {
            throw new ServiceException(CoreErrorDomain.ERR.entryNotAssociated);
        }
        Link editLink = getEditLink();
        if (editLink == null) {
            throw new UnsupportedOperationException("Entry cannot be updated");
        }
        return (E) this.state.service.update(new URL(editLink.getHref()), this);
    }

    public void delete() throws IOException, ServiceException {
        if (this.state.service == null) {
            throw new ServiceException(CoreErrorDomain.ERR.entryNotAssociated);
        }
        Link editLink = getEditLink();
        if (editLink == null) {
            throw new UnsupportedOperationException("Entry cannot be deleted");
        }
        this.state.service.delete(new URL(editLink.getHref()), GDataProtocol.isWeakEtag(this.state.etag) ? null : this.state.etag);
    }

    class OutOfLineReference implements Extension, Reference {
        private OutOfLineContent oolContent;

        private OutOfLineReference(OutOfLineContent outOfLineContent) {
            this.oolContent = outOfLineContent;
        }

        @Override // com.google.gdata.data.Reference
        public String getHref() {
            return this.oolContent.getUri();
        }

        @Override // com.google.gdata.data.Reference
        public void setHref(String str) {
            this.oolContent.setUri(str);
        }

        @Override // com.google.gdata.data.Extension
        public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) {
            throw new IllegalStateException("Should not be generated");
        }

        @Override // com.google.gdata.data.Extension
        public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
            throw new IllegalStateException("Should not be parsed");
        }
    }

    @Override // com.google.gdata.data.ExtensionPoint
    protected void visitChildren(ExtensionVisitor extensionVisitor) throws ExtensionVisitor.StoppedException {
        if (this.state.content instanceof OutOfLineContent) {
            visitChild(extensionVisitor, new OutOfLineReference((OutOfLineContent) this.state.content));
        }
        Iterator<Link> it = getLinks().iterator();
        while (it.hasNext()) {
            visitChild(extensionVisitor, it.next());
        }
        super.visitChildren(extensionVisitor);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        generateAtom(xmlWriter, extensionProfile);
    }

    public void generateAtom(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        LinkedHashSet linkedHashSet = new LinkedHashSet(namespaceDeclsAtom);
        linkedHashSet.addAll(extensionProfile.getNamespaceDecls());
        ArrayList arrayList = new ArrayList(3);
        if (this.state.kind != null && Service.getVersion().isAfter(Service.Versions.V1)) {
            linkedHashSet.add(Namespaces.gNs);
            arrayList.add(new XmlWriter.Attribute("gd", "kind", this.state.kind));
        }
        if (this.state.etag != null && !Service.getVersion().isCompatible(Service.Versions.V1)) {
            linkedHashSet.add(Namespaces.gNs);
            arrayList.add(new XmlWriter.Attribute("gd", "etag", this.state.etag));
        }
        if (this.state.fields != null && Service.getVersion().isAfter(Service.Versions.V1)) {
            linkedHashSet.add(Namespaces.gNs);
            arrayList.add(new XmlWriter.Attribute("gd", "fields", this.state.fields));
        }
        AttributeGenerator attributeGenerator = new AttributeGenerator();
        putAttributes(attributeGenerator);
        generateAttributes(arrayList, attributeGenerator);
        generateStartElement(xmlWriter, Namespaces.atomNs, "entry", arrayList, linkedHashSet);
        if (this.state.id != null) {
            xmlWriter.simpleElement(Namespaces.atomNs, "id", null, this.state.id);
        }
        if (this.state.published != null) {
            xmlWriter.simpleElement(Namespaces.atomNs, BehanceSDKPublishConstants.KEY_PUBLISHED, null, this.state.published.toString());
        }
        if (this.state.updated != null) {
            xmlWriter.simpleElement(Namespaces.atomNs, AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED, null, this.state.updated.toString());
        }
        if (this.state.edited != null) {
            xmlWriter.simpleElement(getAtomPubNs(), "edited", null, this.state.edited.toString());
        }
        if (this.state.pubControl != null) {
            this.state.pubControl.generateAtom(xmlWriter, extensionProfile);
        }
        xmlWriter.startRepeatingElement();
        Iterator<Category> it = this.state.categories.iterator();
        while (it.hasNext()) {
            it.next().generateAtom(xmlWriter);
        }
        xmlWriter.endRepeatingElement();
        if (this.state.title != null) {
            this.state.title.generateAtom(xmlWriter, "title");
        }
        if (this.state.summary != null) {
            this.state.summary.generateAtom(xmlWriter, "summary");
        }
        if (this.state.rights != null) {
            this.state.rights.generateAtom(xmlWriter, "rights");
        }
        if (this.state.content != null) {
            this.state.content.generateAtom(xmlWriter, extensionProfile);
        }
        xmlWriter.startRepeatingElement();
        Iterator<Link> it2 = this.state.links.iterator();
        while (it2.hasNext()) {
            it2.next().generateAtom(xmlWriter, extensionProfile);
        }
        xmlWriter.endRepeatingElement();
        xmlWriter.startRepeatingElement();
        Iterator<Person> it3 = this.state.authors.iterator();
        while (it3.hasNext()) {
            it3.next().generateAtom(extensionProfile, xmlWriter, GDataProtocol.Query.AUTHOR);
        }
        xmlWriter.endRepeatingElement();
        xmlWriter.startRepeatingElement();
        Iterator<Person> it4 = this.state.contributors.iterator();
        while (it4.hasNext()) {
            it4.next().generateAtom(extensionProfile, xmlWriter, "contributor");
        }
        xmlWriter.endRepeatingElement();
        if (this.state.source != null) {
            this.state.source.generateAtom(xmlWriter, extensionProfile);
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.atomNs, "entry");
    }

    public void generateRss(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        Vector vector = new Vector(namespaceDeclsRss);
        vector.addAll(extensionProfile.getNamespaceDecls());
        generateStartElement(xmlWriter, Namespaces.rssNs, DocumentListEntry.LABEL, null, vector);
        if (this.state.id != null) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(new XmlWriter.Attribute("isPermaLink", "false"));
            xmlWriter.simpleElement(Namespaces.rssNs, "guid", arrayList, this.state.id);
        }
        String lang = this.state.content != null ? this.state.content.getLang() : null;
        if (lang == null && this.state.summary != null) {
            lang = this.state.summary.getLang();
        }
        if (lang == null && this.state.title != null) {
            lang = this.state.title.getLang();
        }
        if (lang != null) {
            xmlWriter.simpleElement(Namespaces.rssNs, "language", null, lang);
        }
        if (this.state.published != null) {
            xmlWriter.simpleElement(Namespaces.rssNs, "pubDate", null, this.state.published.toStringRfc822());
        }
        if (this.state.updated != null) {
            xmlWriter.simpleElement(Namespaces.atomNs, AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED, null, this.state.updated.toString());
        }
        xmlWriter.startRepeatingElement();
        Iterator<Category> it = this.state.categories.iterator();
        while (it.hasNext()) {
            it.next().generateRss(xmlWriter);
        }
        xmlWriter.endRepeatingElement();
        if (this.state.title != null) {
            this.state.title.generateRss(xmlWriter, "title", TextConstruct.RssFormat.PLAIN_TEXT);
        }
        if (this.state.summary != null) {
            this.state.summary.generateAtom(xmlWriter, "summary");
        }
        if (this.state.content != null) {
            this.state.content.generateRss(xmlWriter, extensionProfile);
        }
        xmlWriter.startRepeatingElement();
        Iterator<Link> it2 = this.state.links.iterator();
        while (it2.hasNext()) {
            it2.next().generateRss(xmlWriter);
        }
        xmlWriter.endRepeatingElement();
        xmlWriter.startRepeatingElement();
        Iterator<Person> it3 = this.state.authors.iterator();
        while (it3.hasNext()) {
            it3.next().generateRss(xmlWriter, GDataProtocol.Query.AUTHOR);
        }
        xmlWriter.endRepeatingElement();
        xmlWriter.startRepeatingElement();
        Iterator<Person> it4 = this.state.contributors.iterator();
        while (it4.hasNext()) {
            it4.next().generateRss(xmlWriter, GDataProtocol.Query.AUTHOR);
        }
        xmlWriter.endRepeatingElement();
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.rssNs, DocumentListEntry.LABEL);
    }

    static {
        namespaceDeclsAtom.add(Namespaces.atomNs);
        namespaceDeclsRss.add(Namespaces.atomNs);
    }

    public static BaseEntry<?> readEntry(ParseSource parseSource) throws IOException, ServiceException {
        return readEntry(parseSource, null, null);
    }

    public static <T extends BaseEntry> T readEntry(ParseSource parseSource, Class<T> cls, ExtensionProfile extensionProfile) throws IOException, ServiceException {
        return (T) ParseUtil.readEntry(parseSource, cls, extensionProfile, null);
    }

    public void parseAtom(ExtensionProfile extensionProfile, InputStream inputStream) throws ParseException, IOException {
        new XmlParser().parse(inputStream, new AtomHandler(extensionProfile), Namespaces.atom, "entry");
    }

    public void parseAtom(ExtensionProfile extensionProfile, Reader reader) throws ParseException, IOException {
        new XmlParser().parse(reader, new AtomHandler(extensionProfile), Namespaces.atom, "entry");
    }

    public void parseAtom(ExtensionProfile extensionProfile, XmlEventSource xmlEventSource) throws ParseException, IOException {
        new EventSourceParser(new AtomHandler(extensionProfile), Namespaces.atom, "entry").parse(xmlEventSource);
    }

    protected Content.ChildHandlerInfo getContentHandlerInfo(ExtensionProfile extensionProfile, Attributes attributes) throws ParseException, IOException {
        return Content.getChildHandler(extensionProfile, attributes);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new AtomHandler(extensionProfile);
    }

    public class AtomHandler extends ExtensionPoint.ExtensionHandler {
        public AtomHandler(ExtensionProfile extensionProfile) {
            super(BaseEntry.this, extensionProfile, BaseEntry.this.getClass());
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("http://schemas.google.com/g/2005")) {
                if (str2.equals("etag")) {
                    BaseEntry.this.setEtag(str3);
                    return;
                } else if (str2.equals("fields")) {
                    BaseEntry.this.setSelectedFields(str3);
                    return;
                } else if (str2.equals("kind")) {
                    BaseEntry.this.setKind(str3);
                    return;
                }
            }
            super.processAttribute(str, str2, str3);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            Person person;
            if (!str.equals(Namespaces.atom)) {
                if (str.equals(BaseEntry.this.getAtomPubNs().getUri())) {
                    if (str2.equals("control")) {
                        BaseEntry.this.state.pubControl = new PubControl();
                        PubControl pubControl = BaseEntry.this.state.pubControl;
                        pubControl.getClass();
                        return pubControl.new AtomHandler(this.extProfile);
                    }
                    if (str2.equals("edited")) {
                        return new EditedHandler();
                    }
                } else {
                    return super.getChildHandler(str, str2, attributes);
                }
            } else {
                if (str2.equals("id")) {
                    return new IdHandler();
                }
                if (str2.equals(BehanceSDKPublishConstants.KEY_PUBLISHED)) {
                    return new PublishedHandler();
                }
                if (str2.equals(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED)) {
                    return new UpdatedHandler();
                }
                if (str2.equals("title")) {
                    TextConstruct.ChildHandlerInfo childHandler = TextConstruct.getChildHandler(attributes);
                    if (BaseEntry.this.state.title != null) {
                        throw new ParseException(CoreErrorDomain.ERR.duplicateTitle);
                    }
                    BaseEntry.this.state.title = childHandler.textConstruct;
                    return childHandler.handler;
                }
                if (str2.equals("summary")) {
                    TextConstruct.ChildHandlerInfo childHandler2 = TextConstruct.getChildHandler(attributes);
                    if (BaseEntry.this.state.summary != null) {
                        throw new ParseException(CoreErrorDomain.ERR.duplicateSummary);
                    }
                    BaseEntry.this.state.summary = childHandler2.textConstruct;
                    return childHandler2.handler;
                }
                if (str2.equals("rights")) {
                    TextConstruct.ChildHandlerInfo childHandler3 = TextConstruct.getChildHandler(attributes);
                    if (BaseEntry.this.state.rights != null) {
                        throw new ParseException(CoreErrorDomain.ERR.duplicateRights);
                    }
                    BaseEntry.this.state.rights = childHandler3.textConstruct;
                    return childHandler3.handler;
                }
                if (str2.equals("content")) {
                    if (BaseEntry.this.state.content != null) {
                        throw new ParseException(CoreErrorDomain.ERR.duplicateContent);
                    }
                    Content.ChildHandlerInfo contentHandlerInfo = BaseEntry.this.getContentHandlerInfo(this.extProfile, attributes);
                    BaseEntry.this.state.content = contentHandlerInfo.content;
                    return contentHandlerInfo.handler;
                }
                if (str2.equals("category")) {
                    Category category = new Category();
                    category.getClass();
                    return category.new AtomHandler(this.extProfile, BaseEntry.this.state.categories, BaseEntry.this);
                }
                if (str2.equals("link")) {
                    Link link = new Link();
                    BaseEntry.this.state.links.add(link);
                    link.getClass();
                    return link.new AtomHandler(this.extProfile);
                }
                if (str2.equals(GDataProtocol.Query.AUTHOR)) {
                    ExtensionDescription extensionDescription = BaseEntry.this.getExtensionDescription(this.extProfile, this.extendedClass, str, str2);
                    if (extensionDescription != null && extensionDescription.getExtensionClass() != null) {
                        person = (Person) ExtensionPoint.createExtensionInstance(extensionDescription.getExtensionClass());
                    } else {
                        person = new Person();
                    }
                    BaseEntry.this.state.authors.add(person);
                    return person.getHandler(this.extProfile, str, str2, attributes);
                }
                if (str2.equals("contributor")) {
                    Person person2 = new Person();
                    BaseEntry.this.state.contributors.add(person2);
                    person2.getClass();
                    return person2.new AtomHandler(this.extProfile);
                }
                if (str2.equals("source")) {
                    BaseEntry.this.state.source = new Source();
                    Source source = BaseEntry.this.state.source;
                    source.getClass();
                    return source.new SourceHandler(this.extProfile);
                }
            }
            return null;
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (BaseEntry.this.getExtension(BatchStatus.class) == null && BaseEntry.this.getExtension(BatchInterrupted.class) == null) {
                super.processEndElement();
            }
        }

        class IdHandler extends XmlParser.ElementHandler {
            IdHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (BaseEntry.this.state.id != null) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateEntryId);
                }
                if (this.value == null) {
                    throw new ParseException(CoreErrorDomain.ERR.idValueRequired);
                }
                BaseEntry.this.state.id = this.value;
            }
        }

        class PublishedHandler extends Rfc3339Handler {
            PublishedHandler() {
            }

            @Override // com.google.gdata.data.Rfc3339Handler, com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                super.processEndElement();
                BaseEntry.this.state.published = getDateTime();
            }
        }

        class UpdatedHandler extends Rfc3339Handler {
            UpdatedHandler() {
            }

            @Override // com.google.gdata.data.Rfc3339Handler, com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                super.processEndElement();
                BaseEntry.this.state.updated = getDateTime();
            }
        }

        class EditedHandler extends Rfc3339Handler {
            EditedHandler() {
            }

            @Override // com.google.gdata.data.Rfc3339Handler, com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                super.processEndElement();
                BaseEntry.this.state.edited = getDateTime();
            }
        }
    }

    public BaseEntry<?> getAdaptedEntry() throws Kind.AdaptorException {
        BaseEntry<?> baseEntry = null;
        for (Kind.Adaptor adaptor : getAdaptors()) {
            if (adaptor instanceof BaseEntry) {
                baseEntry = (baseEntry == null || baseEntry.getClass().isAssignableFrom(adaptor.getClass())) ? (BaseEntry) adaptor : baseEntry;
            }
        }
        return baseEntry;
    }
}
