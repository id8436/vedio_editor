package com.google.gdata.model.atom;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.google.common.collect.Lists;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.IGenerator;
import com.google.gdata.data.ILink;
import com.google.gdata.data.codesearch.Package;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.util.Namespaces;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Source extends Element {
    public static final ElementKey<Void, Source> CONSTRUCT = ElementKey.of(null, Source.class);
    public static final ElementKey<Void, Source> KEY = ElementKey.of(new QName(Namespaces.atomNs, "source"), Void.class, Source.class);
    public static final ElementKey<String, Element> ID = ElementKey.of(new QName(Namespaces.atomNs, "id"));
    public static final ElementKey<DateTime, Element> UPDATED = ElementKey.of(new QName(Namespaces.atomNs, AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED), DateTime.class, Element.class);
    public static final ElementKey<String, TextContent> TITLE = ElementKey.of(new QName(Namespaces.atomNs, "title"), String.class, TextContent.class);
    public static final ElementKey<String, TextContent> SUBTITLE = ElementKey.of(new QName(Namespaces.atomNs, "subtitle"), String.class, TextContent.class);
    public static final ElementKey<String, TextContent> RIGHTS = ElementKey.of(new QName(Namespaces.atomNs, "rights"), String.class, TextContent.class);
    public static final ElementKey<URI, Element> ICON = ElementKey.of(new QName(Namespaces.atomNs, "icon"), URI.class, Element.class);
    public static final ElementKey<URI, Element> LOGO = ElementKey.of(new QName(Namespaces.atomNs, "logo"), URI.class, Element.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(CONSTRUCT)) {
            metadataRegistry.build(ID);
            metadataRegistry.build(UPDATED);
            metadataRegistry.build(TITLE);
            metadataRegistry.build(SUBTITLE);
            metadataRegistry.build(RIGHTS);
            metadataRegistry.build(ICON);
            metadataRegistry.build(LOGO);
            ElementCreator elementCreatorBuild = metadataRegistry.build(CONSTRUCT);
            elementCreatorBuild.addElement(ID);
            elementCreatorBuild.addElement(UPDATED);
            elementCreatorBuild.addElement(Category.KEY);
            elementCreatorBuild.addElement(TITLE);
            elementCreatorBuild.addElement(SUBTITLE);
            elementCreatorBuild.addElement(RIGHTS);
            elementCreatorBuild.addElement(ICON);
            elementCreatorBuild.addElement(LOGO);
            elementCreatorBuild.addElement(Link.KEY);
            elementCreatorBuild.addElement(Author.KEY);
            elementCreatorBuild.addElement(Contributor.KEY);
            elementCreatorBuild.addElement(Generator.KEY);
            metadataRegistry.build(KEY);
        }
    }

    public class Generator extends Element implements IGenerator {
        public static final ElementKey<String, Generator> KEY = ElementKey.of(new QName(Namespaces.atomNs, "generator"), String.class, Generator.class);
        public static final AttributeKey<String> VERSION = AttributeKey.of(new QName(AdobeCommunityConstants.AdobeCommunityResourceVersionKey));
        public static final AttributeKey<URI> URI = AttributeKey.of(new QName(Package.ATTRIBUTE_URI), URI.class);

        public static void registerMetadata(MetadataRegistry metadataRegistry) {
            if (!metadataRegistry.isRegistered(KEY)) {
                ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
                elementCreatorBuild.addAttribute(VERSION);
                elementCreatorBuild.addAttribute(URI);
            }
        }

        public Generator() {
            super(KEY);
        }

        public Generator(ElementKey<?, ? extends Generator> elementKey) {
            super(elementKey);
        }

        @Override // com.google.gdata.data.IGenerator
        public String getVersion() {
            return (String) getAttributeValue(VERSION);
        }

        public void setVersion(String str) {
            setAttributeValue(VERSION, str);
        }

        @Override // com.google.gdata.data.IGenerator
        @Deprecated
        public String getHref() {
            URI uriUri = getUriUri();
            if (uriUri == null) {
                return null;
            }
            return uriUri.toString();
        }

        public URI getUriUri() {
            return (URI) getAttributeValue(URI);
        }

        @Deprecated
        public void setUri(String str) {
            URI uri;
            if (str == null) {
                uri = null;
            } else {
                try {
                    uri = new URI(str);
                } catch (URISyntaxException e2) {
                    throw new IllegalArgumentException(e2);
                }
            }
            setUri(uri);
        }

        public void setUri(URI uri) {
            setAttributeValue(URI, uri);
        }

        @Override // com.google.gdata.data.IGenerator
        public String getName() {
            return (String) getTextValue();
        }

        public void setName(String str) {
            setTextValue(str);
        }
    }

    public Source() {
        super(KEY);
    }

    protected Source(ElementKey<?, ? extends Source> elementKey) {
        super(elementKey);
    }

    protected Source(Source source) {
        this(KEY, source);
    }

    protected Source(ElementKey<?, ? extends Source> elementKey, Element element) {
        super(elementKey, element);
    }

    public String getId() {
        return (String) getElementValue(ID);
    }

    public void setId(String str) {
        setElement(ID, str == null ? null : new Element(ID).setTextValue(str));
    }

    public DateTime getUpdated() {
        return (DateTime) getElementValue(UPDATED);
    }

    public void setUpdated(DateTime dateTime) {
        setElement(UPDATED, dateTime == null ? null : new Element(UPDATED).setTextValue(dateTime));
    }

    public Set<Category> getCategories() {
        return getElementSet(Category.KEY);
    }

    public void addCategory(Category category) {
        addElement(Category.KEY, category);
    }

    public void clearCategories() {
        removeElement(Category.KEY);
    }

    public TextContent getTitle() {
        return (TextContent) getElement(TITLE);
    }

    public void setTitle(TextContent textContent) {
        setElement(TITLE, textContent);
    }

    public TextContent getSubtitle() {
        return (TextContent) getElement(SUBTITLE);
    }

    public void setSubtitle(TextContent textContent) {
        setElement(SUBTITLE, textContent);
    }

    public TextContent getRights() {
        return (TextContent) getElement(RIGHTS);
    }

    public void setRights(TextContent textContent) {
        setElement(RIGHTS, textContent);
    }

    @Deprecated
    public String getIcon() {
        URI iconUri = getIconUri();
        if (iconUri == null) {
            return null;
        }
        return iconUri.toString();
    }

    public URI getIconUri() {
        return (URI) getElementValue(ICON);
    }

    @Deprecated
    public void setIcon(String str) {
        URI uri;
        if (str == null) {
            uri = null;
        } else {
            try {
                uri = new URI(str);
            } catch (URISyntaxException e2) {
                throw new IllegalArgumentException(e2);
            }
        }
        setIcon(uri);
    }

    public void setIcon(URI uri) {
        setElement(ICON, uri == null ? null : new Element(ICON).setTextValue(uri));
    }

    @Deprecated
    public String getLogo() {
        URI logoUri = getLogoUri();
        if (logoUri == null) {
            return null;
        }
        return logoUri.toString();
    }

    public URI getLogoUri() {
        return (URI) getElementValue(LOGO);
    }

    @Deprecated
    public void setLogo(String str) {
        URI uri;
        if (str == null) {
            uri = null;
        } else {
            try {
                uri = new URI(str);
            } catch (URISyntaxException e2) {
                throw new IllegalArgumentException(e2);
            }
        }
        setLogo(uri);
    }

    public void setLogo(URI uri) {
        setElement(LOGO, uri == null ? null : new Element(LOGO).setTextValue(uri));
    }

    public List<Link> getLinks() {
        return getElements(Link.KEY);
    }

    public void addLink(Link link) {
        addElement(Link.KEY, link);
    }

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

    public void clearLinks() {
        removeElement(Link.KEY);
    }

    public List<Person> getAuthors() {
        return getElements(Author.KEY);
    }

    public void addAuthor(Person person) {
        addElement(Author.KEY, person);
    }

    public void addAuthors(List<Person> list) {
        Iterator<Person> it = list.iterator();
        while (it.hasNext()) {
            addAuthor(it.next());
        }
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

    public void addContributors(List<Person> list) {
        Iterator<Person> it = list.iterator();
        while (it.hasNext()) {
            addContributor(it.next());
        }
    }

    public boolean removeContributor(Person person) {
        return removeElement(Contributor.KEY, person);
    }

    public void clearContributors() {
        removeElement(Contributor.KEY);
    }

    public Generator getGenerator() {
        return (Generator) getElement(Generator.KEY);
    }

    public void setGenerator(Generator generator) {
        setElement(Generator.KEY, generator);
    }

    public Generator setGenerator(String str, String str2, String str3) {
        Generator generator = new Generator();
        generator.setVersion(str);
        generator.setUri(str2);
        generator.setName(str3);
        setGenerator(generator);
        return generator;
    }

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
        try {
            Link link = new Link("alternate", ILink.Type.HTML, new URI(str));
            if (str2 != null) {
                link.setHrefLang(str2);
            }
            if (str3 != null) {
                link.setTitle(str3);
            }
            addElement(Link.KEY, link);
        } catch (URISyntaxException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public Link getHtmlLink() {
        return getLink("alternate", ILink.Type.HTML);
    }
}
