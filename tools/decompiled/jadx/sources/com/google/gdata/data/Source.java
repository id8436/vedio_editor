package com.google.gdata.data;

import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.GDataProtocol;
import com.google.gdata.data.Category.AtomHandler;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.Generator.AtomHandler;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link.AtomHandler;
import com.google.gdata.data.Person.AtomHandler;
import com.google.gdata.data.TextConstruct;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Source extends ExtensionPoint {
    protected SourceState srcState;

    public class SourceState {
        public Generator generator;
        public String icon;
        public String id;
        public String logo;
        public TextConstruct rights;
        public TextConstruct subtitle;
        public TextConstruct title;
        public DateTime updated;
        public HashSet<Category> categories = new HashSet<>();
        public LinkedList<Link> links = new LinkedList<>();
        public LinkedList<Person> authors = new LinkedList<>();
        public LinkedList<Person> contributors = new LinkedList<>();

        protected SourceState() {
        }
    }

    public Source() {
        this.srcState = new SourceState();
    }

    protected Source(Source source) {
        super(source);
        this.srcState = source.srcState;
    }

    public String getId() {
        return this.srcState.id;
    }

    public void setId(String str) {
        this.srcState.id = str;
    }

    public DateTime getUpdated() {
        return this.srcState.updated;
    }

    public void setUpdated(DateTime dateTime) {
        this.srcState.updated = dateTime;
    }

    public Set<Category> getCategories() {
        return this.srcState.categories;
    }

    public TextConstruct getTitle() {
        return this.srcState.title;
    }

    public void setTitle(TextConstruct textConstruct) {
        this.srcState.title = textConstruct;
    }

    public TextConstruct getSubtitle() {
        return this.srcState.subtitle;
    }

    public void setSubtitle(TextConstruct textConstruct) {
        this.srcState.subtitle = textConstruct;
    }

    public TextConstruct getRights() {
        return this.srcState.rights;
    }

    public void setRights(TextConstruct textConstruct) {
        this.srcState.rights = textConstruct;
    }

    public String getIcon() {
        return this.srcState.icon;
    }

    public void setIcon(String str) {
        this.srcState.icon = str;
    }

    public String getLogo() {
        return this.srcState.logo;
    }

    public void setLogo(String str) {
        this.srcState.logo = str;
    }

    public List<Link> getLinks() {
        return this.srcState.links;
    }

    public List<Person> getAuthors() {
        return this.srcState.authors;
    }

    public List<Person> getContributors() {
        return this.srcState.contributors;
    }

    public Generator getGenerator() {
        return this.srcState.generator;
    }

    public void setGenerator(Generator generator) {
        this.srcState.generator = generator;
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
        for (Link link : this.srcState.links) {
            if (link.matches(str, str2)) {
                return link;
            }
        }
        return null;
    }

    public List<Link> getLinks(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Link link : this.srcState.links) {
            if (link.matches(str, str2)) {
                arrayList.add(link);
            }
        }
        return arrayList;
    }

    public void addLink(Link link) {
        this.srcState.links.add(link);
    }

    public Link addLink(String str, String str2, String str3) {
        Link link = new Link(str, str2, str3);
        addLink(link);
        return link;
    }

    public void removeLinks(String str, String str2) {
        Iterator<Link> it = this.srcState.links.iterator();
        while (it.hasNext()) {
            if (it.next().matches(str, str2)) {
                it.remove();
            }
        }
    }

    public void removeLinks() {
        this.srcState.links.clear();
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
        this.srcState.links.add(link);
    }

    public Link getHtmlLink() {
        return getLink("alternate", ILink.Type.HTML);
    }

    public void generateAtom(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        generateStartElement(xmlWriter, Namespaces.atomNs, "source", null, null);
        generateInnerAtom(xmlWriter, extensionProfile);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.atomNs, "source");
    }

    protected void generateInnerAtom(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        if (this.srcState.id != null) {
            xmlWriter.simpleElement(Namespaces.atomNs, "id", null, this.srcState.id);
        }
        if (this.srcState.updated != null) {
            xmlWriter.simpleElement(Namespaces.atomNs, AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED, null, this.srcState.updated.toString());
        }
        xmlWriter.startRepeatingElement();
        Iterator<Category> it = this.srcState.categories.iterator();
        while (it.hasNext()) {
            it.next().generateAtom(xmlWriter);
        }
        xmlWriter.endRepeatingElement();
        if (this.srcState.title != null) {
            this.srcState.title.generateAtom(xmlWriter, "title");
        }
        if (this.srcState.subtitle != null) {
            this.srcState.subtitle.generateAtom(xmlWriter, "subtitle");
        }
        if (this.srcState.rights != null) {
            this.srcState.rights.generateAtom(xmlWriter, "rights");
        }
        if (this.srcState.icon != null) {
            xmlWriter.simpleElement(Namespaces.atomNs, "icon", null, this.srcState.icon);
        }
        if (this.srcState.logo != null) {
            xmlWriter.simpleElement(Namespaces.atomNs, "logo", null, this.srcState.logo);
        }
        xmlWriter.startRepeatingElement();
        Iterator<Link> it2 = this.srcState.links.iterator();
        while (it2.hasNext()) {
            it2.next().generateAtom(xmlWriter, extensionProfile);
        }
        xmlWriter.endRepeatingElement();
        xmlWriter.startRepeatingElement();
        Iterator<Person> it3 = this.srcState.authors.iterator();
        while (it3.hasNext()) {
            it3.next().generateAtom(extensionProfile, xmlWriter, GDataProtocol.Query.AUTHOR);
        }
        xmlWriter.endRepeatingElement();
        xmlWriter.startRepeatingElement();
        Iterator<Person> it4 = this.srcState.contributors.iterator();
        while (it4.hasNext()) {
            it4.next().generateAtom(extensionProfile, xmlWriter, "contributor");
        }
        xmlWriter.endRepeatingElement();
        if (this.srcState.generator != null) {
            this.srcState.generator.generateAtom(xmlWriter);
        }
    }

    public void parseAtom(ExtensionProfile extensionProfile, InputStream inputStream) throws ParseException, IOException {
        new XmlParser().parse(inputStream, new SourceHandler(extensionProfile), Namespaces.atom, "source");
    }

    public void parseAtom(ExtensionProfile extensionProfile, Reader reader) throws ParseException, IOException {
        new XmlParser().parse(reader, new SourceHandler(extensionProfile), Namespaces.atom, "source");
    }

    public class SourceHandler extends ExtensionPoint.ExtensionHandler {
        public SourceHandler(ExtensionProfile extensionProfile) {
            super(Source.this, extensionProfile, Source.class);
        }

        protected SourceHandler(ExtensionProfile extensionProfile, Class<? extends ExtensionPoint> cls) {
            super(Source.this, extensionProfile, cls);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            if (str.equals(Namespaces.atom)) {
                if (str2.equals("id")) {
                    return new IdHandler();
                }
                if (str2.equals(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED)) {
                    return new UpdatedHandler();
                }
                if (str2.equals("category")) {
                    Category category = new Category();
                    Kind.Adaptable adaptable = Source.this instanceof Kind.Adaptable ? (Kind.Adaptable) Source.this : null;
                    category.getClass();
                    return category.new AtomHandler(this.extProfile, Source.this.srcState.categories, adaptable);
                }
                if (str2.equals("title")) {
                    TextConstruct.ChildHandlerInfo childHandler = TextConstruct.getChildHandler(attributes);
                    if (Source.this.srcState.title != null) {
                        throw new ParseException(CoreErrorDomain.ERR.duplicateTitle);
                    }
                    Source.this.srcState.title = childHandler.textConstruct;
                    return childHandler.handler;
                }
                if (str2.equals("subtitle")) {
                    TextConstruct.ChildHandlerInfo childHandler2 = TextConstruct.getChildHandler(attributes);
                    if (Source.this.srcState.subtitle != null) {
                        throw new ParseException(CoreErrorDomain.ERR.duplicateSubtitle);
                    }
                    Source.this.srcState.subtitle = childHandler2.textConstruct;
                    return childHandler2.handler;
                }
                if (str2.equals("rights")) {
                    TextConstruct.ChildHandlerInfo childHandler3 = TextConstruct.getChildHandler(attributes);
                    if (Source.this.srcState.rights != null) {
                        throw new ParseException(CoreErrorDomain.ERR.duplicateRights);
                    }
                    Source.this.srcState.rights = childHandler3.textConstruct;
                    return childHandler3.handler;
                }
                if (str2.equals("icon")) {
                    return new IconHandler();
                }
                if (str2.equals("logo")) {
                    return new LogoHandler();
                }
                if (str2.equals("link")) {
                    Link link = new Link();
                    Source.this.srcState.links.add(link);
                    link.getClass();
                    return link.new AtomHandler(this.extProfile);
                }
                if (str2.equals(GDataProtocol.Query.AUTHOR)) {
                    Person person = new Person();
                    Source.this.srcState.authors.add(person);
                    person.getClass();
                    return person.new AtomHandler(this.extProfile);
                }
                if (str2.equals("contributor")) {
                    Person person2 = new Person();
                    Source.this.srcState.contributors.add(person2);
                    person2.getClass();
                    return person2.new AtomHandler(this.extProfile);
                }
                if (!str2.equals("generator")) {
                    return null;
                }
                if (Source.this.srcState.generator != null) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateGenerator);
                }
                Source.this.srcState.generator = new Generator();
                Generator generator = Source.this.srcState.generator;
                generator.getClass();
                return generator.new AtomHandler();
            }
            return super.getChildHandler(str, str2, attributes);
        }

        class IdHandler extends XmlParser.ElementHandler {
            private IdHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (Source.this.srcState.id != null) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateFeedId);
                }
                if (this.value == null) {
                    throw new ParseException(CoreErrorDomain.ERR.idValueRequired);
                }
                Source.this.srcState.id = this.value;
            }
        }

        class UpdatedHandler extends Rfc3339Handler {
            UpdatedHandler() {
            }

            @Override // com.google.gdata.data.Rfc3339Handler, com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                super.processEndElement();
                Source.this.srcState.updated = getDateTime();
            }
        }

        class IconHandler extends XmlParser.ElementHandler {
            private IconHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (Source.this.srcState.icon != null) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateIcon);
                }
                if (this.value == null) {
                    throw new ParseException(CoreErrorDomain.ERR.iconValueRequired);
                }
                Source.this.srcState.icon = this.value;
            }
        }

        class LogoHandler extends XmlParser.ElementHandler {
            private LogoHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (Source.this.srcState.logo != null) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateLogo);
                }
                if (this.value == null) {
                    throw new ParseException(CoreErrorDomain.ERR.logoValueRequired);
                }
                Source.this.srcState.logo = this.value;
            }
        }
    }
}
