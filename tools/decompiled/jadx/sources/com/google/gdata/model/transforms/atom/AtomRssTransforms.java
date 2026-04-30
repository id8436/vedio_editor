package com.google.gdata.model.transforms.atom;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.google.common.collect.Lists;
import com.google.gdata.client.GDataProtocol;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ILink;
import com.google.gdata.data.docs.DocumentListEntry;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.Metadata;
import com.google.gdata.model.MetadataContext;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.MetadataValueTransform;
import com.google.gdata.model.QName;
import com.google.gdata.model.atom.Author;
import com.google.gdata.model.atom.Category;
import com.google.gdata.model.atom.Content;
import com.google.gdata.model.atom.Contributor;
import com.google.gdata.model.atom.Entry;
import com.google.gdata.model.atom.Feed;
import com.google.gdata.model.atom.Link;
import com.google.gdata.model.atom.OutOfLineContent;
import com.google.gdata.model.atom.Person;
import com.google.gdata.model.atom.Source;
import com.google.gdata.model.atom.TextContent;
import com.google.gdata.model.atompub.Edited;
import com.google.gdata.model.gd.GdAttributes;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import com.google.gdata.wireformats.XmlGenerator;
import com.google.gdata.wireformats.XmlWireFormatProperties;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AtomRssTransforms {
    private static final QName DOMAIN = new QName("domain");
    private static final QName CATEGORY = new QName(Namespaces.rssNs, "category");
    private static final QName ITEM = new QName(Namespaces.rssNs, DocumentListEntry.LABEL);
    private static final QName GUID = new QName(Namespaces.rssNs, "guid");
    private static final QName TITLE = new QName(Namespaces.rssNs, "title");
    private static final QName PUB_DATE = new QName(Namespaces.rssNs, "pubDate");
    private static final QName AUTHOR = new QName(Namespaces.rssNs, GDataProtocol.Query.AUTHOR);
    private static final QName RSS_NAME = new QName(Namespaces.rssNs, "rss");
    private static final QName DESCRIPTION = new QName(Namespaces.rssNs, "description");
    private static final QName LAST_BUILD_DATE = new QName(Namespaces.rssNs, "lastBuildDate");
    private static final QName COPYRIGHT = new QName(Namespaces.rssNs, "copyright");
    private static final QName MANAGING_EDITOR = new QName(Namespaces.rssNs, "managingEditor");
    private static final QName GENERATOR = new QName(Namespaces.rssNs, "generator");

    public static void addTransforms(MetadataRegistry metadataRegistry) {
        addCategoryTransforms(metadataRegistry);
        addContentTransforms(metadataRegistry);
        addEntryTransforms(metadataRegistry);
        addEntryOutOfLineContentTransforms(metadataRegistry);
        addFeedTransforms(metadataRegistry);
        addLinkTransforms(metadataRegistry);
        addSourceTransforms(metadataRegistry);
        addPersonTransforms(metadataRegistry);
        addGeneratorTransforms(metadataRegistry);
        addAppEditedTransforms(metadataRegistry);
    }

    private static void addCategoryTransforms(MetadataRegistry metadataRegistry) {
        metadataRegistry.build(Category.KEY, MetadataContext.RSS).setName(CATEGORY).setVirtualValue((Metadata.VirtualValue) new MetadataValueTransform(Category.TERM, Category.LABEL));
        metadataRegistry.build(Category.KEY, Category.SCHEME, MetadataContext.RSS).setName(DOMAIN);
        metadataRegistry.build(Category.KEY, Category.LABEL, MetadataContext.RSS).setVisible(false);
        metadataRegistry.build(Category.KEY, Category.TERM, MetadataContext.RSS).setVisible(false);
    }

    private static void addContentTransforms(MetadataRegistry metadataRegistry) {
        metadataRegistry.build(TextContent.KEY, MetadataContext.RSS).setName(DESCRIPTION).whitelistAttributes(new AttributeKey[0]);
        metadataRegistry.build(TextContent.CONSTRUCT, MetadataContext.RSS).whitelistAttributes(new AttributeKey[0]);
    }

    private static void addEntryTransforms(MetadataRegistry metadataRegistry) {
        metadataRegistry.build(Entry.KEY, MetadataContext.RSS).setName(ITEM);
        metadataRegistry.build(Entry.KEY, GdAttributes.ETAG, MetadataContext.RSS).setVisible(false);
        XmlWireFormatProperties xmlWireFormatProperties = new XmlWireFormatProperties();
        xmlWireFormatProperties.setElementGenerator(new XmlGenerator.XmlElementGenerator() { // from class: com.google.gdata.model.transforms.atom.AtomRssTransforms.1
            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator
            protected List<XmlWriter.Attribute> getAttributes(Element element, ElementMetadata<?, ?> elementMetadata) {
                List<XmlWriter.Attribute> attributes = super.getAttributes(element, elementMetadata);
                if (attributes == null) {
                    attributes = Lists.newArrayListWithExpectedSize(1);
                }
                attributes.add(new XmlWriter.Attribute("isPermaLink", "false"));
                return attributes;
            }
        });
        metadataRegistry.build(Entry.KEY, Entry.ID, MetadataContext.RSS).setName(GUID).setProperties(xmlWireFormatProperties);
        metadataRegistry.build(Entry.KEY, Entry.TITLE, MetadataContext.RSS).setName(TITLE);
        metadataRegistry.build(Entry.KEY, Entry.PUBLISHED, MetadataContext.RSS).setName(PUB_DATE).setVirtualValue(new Metadata.VirtualValue() { // from class: com.google.gdata.model.transforms.atom.AtomRssTransforms.2
            @Override // com.google.gdata.model.Metadata.VirtualValue
            public Object generate(Element element, ElementMetadata<?, ?> elementMetadata) {
                DateTime dateTime = (DateTime) element.getTextValue(Entry.PUBLISHED);
                return dateTime == null ? "" : dateTime.toStringRfc822();
            }

            @Override // com.google.gdata.model.Metadata.VirtualValue
            public void parse(Element element, ElementMetadata<?, ?> elementMetadata, Object obj) throws ParseException {
                element.setTextValue(DateTime.parseRfc822(obj.toString()));
            }
        });
        XmlWireFormatProperties xmlWireFormatProperties2 = new XmlWireFormatProperties();
        xmlWireFormatProperties2.setElementGenerator(new XmlGenerator.XmlElementGenerator() { // from class: com.google.gdata.model.transforms.atom.AtomRssTransforms.3
            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public boolean startElement(XmlWriter xmlWriter, Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws IOException {
                if (!(element2 instanceof Person)) {
                    return super.startElement(xmlWriter, element, element2, elementMetadata);
                }
                Person person = (Person) element2;
                String email = person.getEmail();
                String name = person.getName();
                StringBuilder sb = new StringBuilder();
                boolean z = email != null;
                if (z) {
                    sb.append(email);
                }
                if (name != null) {
                    if (z) {
                        sb.append(" (");
                    }
                    sb.append(name);
                    if (z) {
                        sb.append(")");
                    }
                }
                QName name2 = getName(element2, elementMetadata);
                xmlWriter.simpleElement(name2.getNs(), name2.getLocalName(), null, sb.toString());
                return false;
            }

            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public void textContent(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) {
            }

            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public void endElement(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) {
            }
        });
        metadataRegistry.build(Entry.KEY, Author.KEY, MetadataContext.RSS).setName(AUTHOR).setProperties(xmlWireFormatProperties2);
        metadataRegistry.build(Entry.KEY, Contributor.KEY, MetadataContext.RSS).setName(AUTHOR).setProperties(xmlWireFormatProperties2);
        metadataRegistry.build(Entry.KEY, Entry.RIGHTS, MetadataContext.RSS).setVisible(false);
    }

    private static void addEntryOutOfLineContentTransforms(MetadataRegistry metadataRegistry) {
        XmlWireFormatProperties xmlWireFormatProperties = new XmlWireFormatProperties();
        xmlWireFormatProperties.setElementGenerator(new XmlGenerator.XmlElementGenerator() { // from class: com.google.gdata.model.transforms.atom.AtomRssTransforms.4
            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public boolean startElement(XmlWriter xmlWriter, Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws IOException {
                if (!(element2 instanceof OutOfLineContent)) {
                    return super.startElement(xmlWriter, element, element2, elementMetadata);
                }
                OutOfLineContent outOfLineContent = (OutOfLineContent) element2;
                ContentType mimeType = outOfLineContent.getMimeType();
                URI src = outOfLineContent.getSrc();
                AtomRssTransforms.generateEnclosure(xmlWriter, mimeType == null ? null : mimeType.getMediaType(), src != null ? src.toString() : null, outOfLineContent.getLength());
                return false;
            }

            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public void textContent(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) {
            }

            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public void endElement(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) {
            }
        });
        metadataRegistry.build(OutOfLineContent.KEY, MetadataContext.RSS).setProperties(xmlWireFormatProperties);
    }

    private static void addFeedTransforms(MetadataRegistry metadataRegistry) {
        metadataRegistry.build(Feed.KEY, GdAttributes.ETAG, MetadataContext.RSS).setVisible(false);
        XmlWireFormatProperties xmlWireFormatProperties = new XmlWireFormatProperties();
        xmlWireFormatProperties.setElementGenerator(new XmlGenerator.XmlElementGenerator() { // from class: com.google.gdata.model.transforms.atom.AtomRssTransforms.5
            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public boolean startElement(XmlWriter xmlWriter, Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws IOException {
                Collection<XmlNamespace> namespaces = getNamespaces(element, element2, elementMetadata);
                List<XmlWriter.Attribute> attributes = getAttributes(element2, elementMetadata);
                if (attributes == null) {
                    attributes = Lists.newArrayList();
                }
                attributes.add(new XmlWriter.Attribute(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, AdminSettingsConstants.SERVICE_VERSION));
                xmlWriter.startElement(Namespaces.rssNs, "rss", attributes, namespaces);
                xmlWriter.startElement(Namespaces.rssNs, "channel", null, null);
                if (!element2.hasElement(Source.SUBTITLE) && !element2.hasElement(Content.KEY)) {
                    xmlWriter.simpleElement(Namespaces.rssNs, "description", null, "");
                    return true;
                }
                return true;
            }

            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public void endElement(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) throws IOException {
                xmlWriter.endElement(Namespaces.rssNs, "channel");
                super.endElement(xmlWriter, element, elementMetadata);
            }
        });
        metadataRegistry.build(Feed.KEY, MetadataContext.RSS).setName(RSS_NAME).setProperties(xmlWireFormatProperties);
        metadataRegistry.build(Feed.KEY, Feed.UPDATED, MetadataContext.RSS).setName(LAST_BUILD_DATE).setVirtualValue(new Metadata.VirtualValue() { // from class: com.google.gdata.model.transforms.atom.AtomRssTransforms.6
            @Override // com.google.gdata.model.Metadata.VirtualValue
            public Object generate(Element element, ElementMetadata<?, ?> elementMetadata) {
                DateTime dateTime = (DateTime) element.getTextValue(Feed.UPDATED);
                return dateTime == null ? "" : dateTime.toStringRfc822();
            }

            @Override // com.google.gdata.model.Metadata.VirtualValue
            public void parse(Element element, ElementMetadata<?, ?> elementMetadata, Object obj) throws ParseException {
                element.setTextValue(DateTime.parseRfc822(obj.toString()));
            }
        });
    }

    private static void addLinkTransforms(MetadataRegistry metadataRegistry) {
        XmlWireFormatProperties xmlWireFormatProperties = new XmlWireFormatProperties();
        xmlWireFormatProperties.setElementGenerator(new XmlGenerator.XmlElementGenerator() { // from class: com.google.gdata.model.transforms.atom.AtomRssTransforms.7
            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public boolean startElement(XmlWriter xmlWriter, Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws IOException {
                if (!(element2 instanceof Link)) {
                    return super.startElement(xmlWriter, element, element2, elementMetadata);
                }
                Link link = (Link) element2;
                String rel = link.getRel();
                String type = link.getType();
                String href = link.getHref();
                long length = link.getLength();
                if (rel != null && rel.equals(ILink.Rel.ENCLOSURE)) {
                    AtomRssTransforms.generateEnclosure(xmlWriter, type, href, length);
                } else if ("comments".equals(rel)) {
                    xmlWriter.simpleElement(Namespaces.rssNs, "comments", null, href);
                } else if ("alternate".equals(rel)) {
                    xmlWriter.simpleElement(Namespaces.rssNs, "link", null, href);
                } else if (ILink.Rel.VIA.equals(rel) && href != null) {
                    xmlWriter.simpleElement(Namespaces.rssNs, "source", Collections.singletonList(new XmlWriter.Attribute("url", href)), null);
                }
                return false;
            }

            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public void textContent(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) {
            }

            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public void endElement(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) {
            }
        });
        metadataRegistry.build(Link.KEY, MetadataContext.RSS).setProperties(xmlWireFormatProperties);
    }

    private static void addSourceTransforms(MetadataRegistry metadataRegistry) {
        metadataRegistry.build(Source.CONSTRUCT, Source.TITLE, MetadataContext.RSS).setName(TITLE);
        metadataRegistry.build(Source.CONSTRUCT, Source.SUBTITLE, MetadataContext.RSS).setName(DESCRIPTION);
        XmlWireFormatProperties xmlWireFormatProperties = new XmlWireFormatProperties();
        xmlWireFormatProperties.setElementGenerator(new XmlGenerator.XmlElementGenerator() { // from class: com.google.gdata.model.transforms.atom.AtomRssTransforms.8
            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public boolean startElement(XmlWriter xmlWriter, Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws IOException {
                boolean zEquals = element2.getElementId().equals(Source.ICON.getId());
                boolean zEquals2 = element2.getElementId().equals(Source.LOGO.getId());
                if ((!zEquals && !zEquals2) || !(element instanceof Source)) {
                    return super.startElement(xmlWriter, element, element2, elementMetadata);
                }
                Source source = (Source) element;
                if (zEquals && source.hasElement(Source.LOGO)) {
                    return false;
                }
                xmlWriter.startElement(Namespaces.rssNs, "image", null, null);
                xmlWriter.simpleElement(Namespaces.rssNs, "url", null, String.valueOf(element2.getTextValue()));
                TextContent title = source.getTitle();
                if (title != null) {
                    xmlWriter.simpleElement(Namespaces.rssNs, "title", null, title.getPlainText());
                }
                Link htmlLink = source.getHtmlLink();
                if (htmlLink != null) {
                    xmlWriter.simpleElement(Namespaces.rssNs, "link", null, htmlLink.getHref());
                }
                xmlWriter.endElement(Namespaces.rssNs, "image");
                return false;
            }

            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public void textContent(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) {
            }

            @Override // com.google.gdata.wireformats.XmlGenerator.XmlElementGenerator, com.google.gdata.wireformats.XmlGenerator.ElementGenerator
            public void endElement(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) {
            }
        });
        metadataRegistry.build(Source.CONSTRUCT, Source.ICON, MetadataContext.RSS).setProperties(xmlWireFormatProperties);
        metadataRegistry.build(Source.CONSTRUCT, Source.LOGO, MetadataContext.RSS).setProperties(xmlWireFormatProperties);
        metadataRegistry.build(Source.CONSTRUCT, Source.RIGHTS, MetadataContext.RSS).setVisible(true).setName(COPYRIGHT);
        metadataRegistry.build(Source.CONSTRUCT, Author.KEY, MetadataContext.RSS).setName(MANAGING_EDITOR).setVirtualValue((Metadata.VirtualValue) new MetadataValueTransform(Person.NAME));
    }

    private static void addPersonTransforms(MetadataRegistry metadataRegistry) {
        metadataRegistry.build(Person.KEY, Person.EMAIL, MetadataContext.RSS).setVisible(false);
        metadataRegistry.build(Person.KEY, Person.NAME, MetadataContext.RSS).setVisible(false);
        metadataRegistry.build(Person.KEY, Person.URI, MetadataContext.RSS).setVisible(false);
    }

    private static void addGeneratorTransforms(MetadataRegistry metadataRegistry) {
        metadataRegistry.build(Source.Generator.KEY, MetadataContext.RSS).setName(GENERATOR);
        metadataRegistry.build(Source.Generator.KEY, Source.Generator.URI, MetadataContext.RSS).setVisible(false);
        metadataRegistry.build(Source.Generator.KEY, Source.Generator.VERSION, MetadataContext.RSS).setVisible(false);
    }

    private static void addAppEditedTransforms(MetadataRegistry metadataRegistry) {
        metadataRegistry.build(Edited.KEY, MetadataContext.RSS).setVisible(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void generateEnclosure(XmlWriter xmlWriter, String str, String str2, long j) throws IOException {
        ArrayList arrayList = new ArrayList(3);
        if (str != null) {
            arrayList.add(new XmlWriter.Attribute("type", str));
        }
        if (str2 != null) {
            arrayList.add(new XmlWriter.Attribute("url", str2));
        }
        if (j == -1) {
            j = 0;
        }
        arrayList.add(new XmlWriter.Attribute("length", Long.toString(j)));
        xmlWriter.simpleElement(Namespaces.rssNs, ILink.Rel.ENCLOSURE, arrayList, null);
    }

    private AtomRssTransforms() {
    }
}
