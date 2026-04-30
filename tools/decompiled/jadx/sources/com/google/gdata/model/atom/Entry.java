package com.google.gdata.model.atom;

import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.common.collect.Lists;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.GDataProtocol;
import com.google.gdata.client.Service;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.ILink;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.ValidationContext;
import com.google.gdata.model.atompub.Control;
import com.google.gdata.model.atompub.Edited;
import com.google.gdata.model.batch.BatchId;
import com.google.gdata.model.batch.BatchInterrupted;
import com.google.gdata.model.batch.BatchOperation;
import com.google.gdata.model.batch.BatchStatus;
import com.google.gdata.model.gd.GdAttributes;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.NotModifiedException;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class Entry extends Element implements IEntry {
    protected EntryState state;
    public static final ElementKey<Void, Entry> KEY = ElementKey.of(new QName(Namespaces.atomNs, "entry"), Entry.class);
    public static final ElementKey<String, Element> ID = Source.ID;
    public static final ElementKey<DateTime, Element> UPDATED = Source.UPDATED;
    public static final ElementKey<DateTime, Element> PUBLISHED = ElementKey.of(new QName(Namespaces.atomNs, BehanceSDKPublishConstants.KEY_PUBLISHED), DateTime.class, Element.class);
    public static final ElementKey<String, TextContent> TITLE = Source.TITLE;
    public static final ElementKey<String, TextContent> RIGHTS = Source.RIGHTS;
    public static final ElementKey<String, TextContent> SUMMARY = ElementKey.of(new QName(Namespaces.atomNs, "summary"), String.class, TextContent.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(PUBLISHED);
            metadataRegistry.build(SUMMARY);
            ElementCreator cardinality = metadataRegistry.build(KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            cardinality.addAttribute(GdAttributes.ETAG);
            cardinality.addAttribute(GdAttributes.KIND);
            cardinality.addAttribute(GdAttributes.FIELDS);
            cardinality.addElement(ID);
            cardinality.addElement(PUBLISHED);
            cardinality.addElement(UPDATED);
            cardinality.addElement(Edited.KEY);
            cardinality.addElement(Control.KEY);
            cardinality.addElement(Category.KEY);
            cardinality.addElement(TITLE);
            cardinality.addElement(SUMMARY);
            cardinality.addElement(RIGHTS);
            cardinality.addElement(Content.KEY).adapt("text", TextContent.KEY).adapt("other", OtherContent.KEY).adapt(OutOfLineContent.KIND, OutOfLineContent.KEY);
            cardinality.addElement(Link.KEY);
            cardinality.addElement(Author.KEY);
            cardinality.addElement(Contributor.KEY);
            cardinality.addElement(Source.KEY);
            cardinality.addElement(BatchId.KEY);
            cardinality.addElement(BatchInterrupted.KEY);
            cardinality.addElement(BatchOperation.KEY);
            cardinality.addElement(BatchStatus.KEY);
            TextContent.registerMetadata(metadataRegistry);
            OtherContent.registerMetadata(metadataRegistry);
            OutOfLineContent.registerMetadata(metadataRegistry);
        }
    }

    public class EntryState {
        public boolean canEdit = true;
        public Service service;
        public String versionId;

        protected EntryState() {
        }
    }

    public Entry() {
        this(KEY);
    }

    protected Entry(ElementKey<?, ? extends Entry> elementKey) {
        super(elementKey);
        this.state = new EntryState();
    }

    protected Entry(ElementKey<?, ? extends Entry> elementKey, Entry entry) {
        super(elementKey, entry);
        this.state = entry.state;
    }

    @Override // com.google.gdata.data.IAtom
    public String getId() {
        return (String) getElementValue(ID);
    }

    @Override // com.google.gdata.data.IAtom
    public void setId(String str) {
        if (str != null && "-".equals(str)) {
            throw new IllegalArgumentException("Entry.id must not be equal to '-'.");
        }
        setElement(ID, str == null ? null : new Element(ID).setTextValue(str));
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

    @Override // com.google.gdata.data.IEntry
    public String getSelectedFields() {
        return (String) getAttributeValue(GdAttributes.FIELDS);
    }

    @Override // com.google.gdata.data.IEntry
    public void setSelectedFields(String str) {
        setAttributeValue(GdAttributes.FIELDS, str);
    }

    @Override // com.google.gdata.data.IEntry
    public DateTime getPublished() {
        return (DateTime) getElementValue(PUBLISHED);
    }

    @Override // com.google.gdata.data.IEntry
    public void setPublished(DateTime dateTime) {
        if (dateTime != null && dateTime.getTzShift() == null) {
            throw new IllegalArgumentException("Entry.published must have a timezone.");
        }
        setElement(PUBLISHED, dateTime == null ? null : new Element(PUBLISHED).setTextValue(dateTime));
    }

    @Override // com.google.gdata.data.IAtom
    public DateTime getUpdated() {
        return (DateTime) getElementValue(UPDATED);
    }

    @Override // com.google.gdata.data.IAtom
    public void setUpdated(DateTime dateTime) {
        if (dateTime != null && dateTime.getTzShift() == null) {
            throw new IllegalArgumentException("Entry.updated must have a timezone.");
        }
        setElement(UPDATED, dateTime == null ? null : new Element(UPDATED).setTextValue(dateTime));
    }

    @Override // com.google.gdata.data.IEntry
    public DateTime getEdited() {
        return (DateTime) getElementValue(Edited.KEY);
    }

    @Override // com.google.gdata.data.IEntry
    public void setEdited(DateTime dateTime) {
        if (dateTime != null && dateTime.getTzShift() == null) {
            throw new IllegalArgumentException("Entry.edited must have a timezone.");
        }
        setElement(Edited.KEY, dateTime == null ? null : new Edited(dateTime));
    }

    @Override // com.google.gdata.data.IAtom
    public Set<Category> getCategories() {
        return getElementSet(Category.KEY);
    }

    public void addCategory(Category category) {
        addElement(Category.KEY, category);
    }

    public void clearCategories() {
        removeElement(Category.KEY);
    }

    @Override // com.google.gdata.data.IAtom
    public TextContent getTitle() {
        return (TextContent) getElement(TITLE);
    }

    public void setTitle(TextContent textContent) {
        setElement(TITLE, textContent);
    }

    @Override // com.google.gdata.data.IEntry
    public TextContent getSummary() {
        return (TextContent) getElement(SUMMARY);
    }

    public void setSummary(TextContent textContent) {
        setElement(SUMMARY, textContent);
    }

    public TextContent getRights() {
        return (TextContent) getElement(RIGHTS);
    }

    public void setRights(TextContent textContent) {
        setElement(RIGHTS, textContent);
    }

    @Override // com.google.gdata.data.IEntry
    public Content getContent() {
        return (Content) getElement(Content.KEY);
    }

    public void setContent(Content content) {
        setElement(Content.KEY, content);
    }

    public void removeContent() {
        removeElement(Content.KEY);
    }

    public TextContent getTextContent() {
        Content content = getContent();
        if (content == null) {
            return null;
        }
        if (!(content instanceof TextContent)) {
            throw new IllegalStateException("Content object is not a TextContent");
        }
        return (TextContent) content;
    }

    public String getPlainTextContent() {
        TextContent textContent = getTextContent();
        if (textContent == null) {
            return null;
        }
        return textContent.getPlainText();
    }

    @Override // com.google.gdata.data.IAtom
    public List<Link> getLinks() {
        return getElements(Link.KEY);
    }

    public void addLink(Link link) {
        addElement(Link.KEY, link);
    }

    @Override // com.google.gdata.data.IAtom
    public Link addLink(String str, String str2, String str3) {
        try {
            Link link = new Link(str, str2, new URI(str3));
            addLink(link);
            return link;
        } catch (URISyntaxException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public boolean removeLink(Link link) {
        return removeElement(Link.KEY, link);
    }

    @Override // com.google.gdata.data.IAtom
    public void removeLinks() {
        removeElement(Link.KEY);
    }

    @Override // com.google.gdata.data.IAtom
    public List<Person> getAuthors() {
        return getElements(Author.KEY);
    }

    public void addAuthor(Person person) {
        addElement(Author.KEY, person);
    }

    public boolean removeAuthor(Person person) {
        return removeElement(Author.KEY, person);
    }

    public void clearAuthors() {
        removeElement(Author.KEY);
    }

    public List<Person> getContributors() {
        return getElements(Contributor.KEY);
    }

    public void addContributor(Person person) {
        addElement(Contributor.KEY, person);
    }

    public boolean removeContributor(Person person) {
        return removeElement(Contributor.KEY, person);
    }

    public void clearContributors() {
        removeElement(Contributor.KEY);
    }

    public Source getSource() {
        return (Source) getElement(Source.KEY);
    }

    public void setSource(Source source) {
        setElement(Source.KEY, source);
    }

    public void setDraft(Boolean bool) {
        Control control = null;
        if (Boolean.TRUE.equals(bool)) {
            control = new Control();
            control.setDraft(true);
        }
        setElement(Control.KEY, control);
    }

    public boolean isDraft() {
        Control control = getControl();
        return control != null && control.isDraft();
    }

    public Control getControl() {
        return (Control) getElement(Control.KEY);
    }

    public Entry setControl(Control control) {
        setElement(Control.KEY, control);
        return this;
    }

    public boolean hasControl() {
        return hasElement(Control.KEY);
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

    @Override // com.google.gdata.data.IAtom
    public Link getLink(String str, String str2) {
        for (Link link : getLinks()) {
            if (link.matches(str, str2)) {
                return link;
            }
        }
        return null;
    }

    public List<Link> getLinks(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Link link : getLinks()) {
            if (link.matches(str, str2)) {
                arrayList.add(link);
            }
        }
        return arrayList;
    }

    @Override // com.google.gdata.data.IAtom
    public void removeLinks(String str, String str2) {
        ArrayList arrayListNewArrayList = Lists.newArrayList();
        for (Link link : getLinks()) {
            if (link.matches(str, str2)) {
                arrayListNewArrayList.add(link);
            }
        }
        Iterator it = arrayListNewArrayList.iterator();
        while (it.hasNext()) {
            removeLink((Link) it.next());
        }
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
        addLink(link);
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
        return getLink(ILink.Rel.MEDIA_EDIT, (String) null);
    }

    @Override // com.google.gdata.data.IEntry
    public Link getResumableEditMediaLink() {
        return getLink(ILink.Rel.RESUMABLE_EDIT_MEDIA, (String) null);
    }

    public Link getHtmlLink() {
        return getLink("alternate", ILink.Type.HTML);
    }

    public Entry getSelf() throws IOException, ServiceException {
        if (this.state.service == null) {
            throw new ServiceException(CoreErrorDomain.ERR.entryNotAssociated);
        }
        Link selfLink = getSelfLink();
        if (selfLink == null) {
            throw new UnsupportedOperationException("Entry cannot be retrieved");
        }
        URL url = selfLink.getHrefUri().toURL();
        try {
            String etag = getEtag();
            if (etag != null) {
                return (Entry) this.state.service.getEntry(url, getClass(), etag);
            }
            return (Entry) this.state.service.getEntry(url, getClass(), getEdited() != null ? getEdited() : getUpdated());
        } catch (NotModifiedException e2) {
            return this;
        }
    }

    public Entry update() throws IOException, ServiceException {
        if (this.state.service == null) {
            throw new ServiceException(CoreErrorDomain.ERR.entryNotAssociated);
        }
        Link editLink = getEditLink();
        if (editLink == null) {
            throw new UnsupportedOperationException("Entry cannot be updated");
        }
        return (Entry) this.state.service.update(editLink.getHrefUri().toURL(), this);
    }

    public void delete() throws IOException, ServiceException {
        if (this.state.service == null) {
            throw new ServiceException(CoreErrorDomain.ERR.entryNotAssociated);
        }
        Link editLink = getEditLink();
        if (editLink == null) {
            throw new UnsupportedOperationException("Entry cannot be deleted");
        }
        URI hrefUri = editLink.getHrefUri();
        String etag = getEtag();
        Service service = this.state.service;
        if (GDataProtocol.isWeakEtag(etag)) {
            etag = null;
        }
        service.delete(hrefUri, etag);
    }

    @Override // com.google.gdata.model.Element
    protected Element narrow(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        String elementKind = Kinds.getElementKind(this);
        return elementKind != null ? adapt(this, elementMetadata, elementKind) : super.narrow(elementMetadata, validationContext);
    }
}
