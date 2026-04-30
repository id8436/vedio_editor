package com.google.gdata.data.introspection;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ExtensionVisitor;
import com.google.gdata.data.PlainTextConstruct;
import com.google.gdata.data.introspection.Workspace.Handler;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class ServiceDocument extends ExtensionPoint implements IServiceDocument {
    private XmlNamespace atomPubNs = Namespaces.getAtomPubNs();
    List<Workspace> workspaces = new ArrayList();

    @Override // com.google.gdata.data.introspection.IServiceDocument
    public List<Workspace> getWorkspaces() {
        return this.workspaces;
    }

    public void addWorkspace(Workspace workspace) {
        this.workspaces.add(workspace);
    }

    @Override // com.google.gdata.data.introspection.IServiceDocument
    public Workspace addWorkspace(String str) {
        Workspace workspace = new Workspace(new PlainTextConstruct(str));
        this.workspaces.add(workspace);
        return workspace;
    }

    @Override // com.google.gdata.data.ExtensionPoint
    protected void visitChildren(ExtensionVisitor extensionVisitor) throws ExtensionVisitor.StoppedException {
        Iterator<Workspace> it = this.workspaces.iterator();
        while (it.hasNext()) {
            visitChild(extensionVisitor, it.next());
        }
        super.visitChildren(extensionVisitor);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        xmlWriter.startElement(this.atomPubNs, NotificationCompat.CATEGORY_SERVICE, null, null);
        xmlWriter.startRepeatingElement();
        Iterator<Workspace> it = this.workspaces.iterator();
        while (it.hasNext()) {
            it.next().generate(xmlWriter, extensionProfile);
        }
        xmlWriter.endRepeatingElement();
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(this.atomPubNs, NotificationCompat.CATEGORY_SERVICE);
    }

    public void parse(ExtensionProfile extensionProfile, Reader reader) throws ParseException, IOException {
        new XmlParser().parse(reader, new Handler(extensionProfile), this.atomPubNs.getUri(), NotificationCompat.CATEGORY_SERVICE);
    }

    public void parse(ExtensionProfile extensionProfile, InputStream inputStream) throws ParseException, IOException {
        new XmlParser().parse(inputStream, new Handler(extensionProfile), this.atomPubNs.getUri(), NotificationCompat.CATEGORY_SERVICE);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    public class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(ServiceDocument.this, extensionProfile, ServiceDocument.class);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (!str.equals(ServiceDocument.this.atomPubNs.getUri()) || !str2.equals("workspace")) {
                return super.getChildHandler(str, str2, attributes);
            }
            Workspace workspace = new Workspace();
            ServiceDocument.this.workspaces.add(workspace);
            workspace.getClass();
            return workspace.new Handler(this.extProfile, attributes);
        }
    }

    public void processEndElement() throws ParseException {
        if (this.workspaces.size() == 0) {
            throw new ParseException(CoreErrorDomain.ERR.workspaceRequired);
        }
    }
}
