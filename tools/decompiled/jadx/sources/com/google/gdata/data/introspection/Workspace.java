package com.google.gdata.data.introspection;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.Service;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ExtensionVisitor;
import com.google.gdata.data.PlainTextConstruct;
import com.google.gdata.data.TextConstruct;
import com.google.gdata.data.introspection.Collection.Handler;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.Version;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Workspace extends ExtensionPoint implements IWorkspace {
    private TextConstruct title;
    private Version coreVersion = Service.getVersion();
    private XmlNamespace atomPubNs = Namespaces.getAtomPubNs();
    private List<Collection> collectionList = new ArrayList();

    public Workspace() {
    }

    public Workspace(TextConstruct textConstruct) {
        this.title = textConstruct;
    }

    public TextConstruct getTitle() {
        return this.title;
    }

    public void setTitle(TextConstruct textConstruct) {
        this.title = textConstruct;
    }

    @Override // com.google.gdata.data.introspection.IWorkspace
    public List<Collection> getCollections() {
        return this.collectionList;
    }

    public void addCollection(Collection collection) {
        this.collectionList.add(collection);
    }

    @Override // com.google.gdata.data.introspection.IWorkspace
    public Collection addCollection(String str, String str2, String... strArr) {
        Collection collection = new Collection(str, new PlainTextConstruct(str2), strArr);
        addCollection(collection);
        return collection;
    }

    @Override // com.google.gdata.data.ExtensionPoint
    protected void visitChildren(ExtensionVisitor extensionVisitor) throws ExtensionVisitor.StoppedException {
        Iterator<Collection> it = this.collectionList.iterator();
        while (it.hasNext()) {
            visitChild(extensionVisitor, it.next());
        }
        super.visitChildren(extensionVisitor);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.coreVersion.isCompatible(Service.Versions.V1)) {
            arrayList.add(new XmlWriter.Attribute("title", this.title.getPlainText()));
        }
        xmlWriter.startElement(this.atomPubNs, "workspace", arrayList, null);
        if (!this.coreVersion.isCompatible(Service.Versions.V1)) {
            this.title.generateAtom(xmlWriter, "title");
        }
        xmlWriter.startRepeatingElement();
        Iterator<Collection> it = this.collectionList.iterator();
        while (it.hasNext()) {
            it.next().generate(xmlWriter, extensionProfile);
        }
        xmlWriter.endRepeatingElement();
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(this.atomPubNs, "workspace");
    }

    @Override // com.google.gdata.data.AbstractExtension
    public void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        if (this.coreVersion.isCompatible(Service.Versions.V1)) {
            this.title = new PlainTextConstruct(attributeHelper.consume("title", true));
        }
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile, attributes);
    }

    public class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile, Attributes attributes) {
            super(extensionProfile, Workspace.class, attributes);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (str.equals(Workspace.this.atomPubNs.getUri())) {
                if (str2.equals("collection")) {
                    Collection collection = new Collection();
                    Workspace.this.addCollection(collection);
                    collection.getClass();
                    return collection.new Handler(this.extProfile, attributes);
                }
            } else if (str.equals(Namespaces.atom) && str2.equals("title") && !Workspace.this.coreVersion.isCompatible(Service.Versions.V1)) {
                if (Workspace.this.title != null) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateTitle);
                }
                TextConstruct.ChildHandlerInfo childHandler = TextConstruct.getChildHandler(attributes);
                Workspace.this.title = childHandler.textConstruct;
                return childHandler.handler;
            }
            return super.getChildHandler(str, str2, attributes);
        }
    }

    public void processEndElement() throws ParseException {
        if (this.title == null) {
            throw new ParseException(CoreErrorDomain.ERR.workspaceTitleRequired);
        }
    }
}
