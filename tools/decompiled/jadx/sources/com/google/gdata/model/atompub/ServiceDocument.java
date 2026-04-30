package com.google.gdata.model.atompub;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.data.introspection.IServiceDocument;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.atom.TextContent;
import com.google.gdata.util.Namespaces;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ServiceDocument extends Element implements IServiceDocument {
    public static final ElementKey<Void, ServiceDocument> KEY = ElementKey.of(new QName(Namespaces.atomPubStandardNs, NotificationCompat.CATEGORY_SERVICE), Void.class, ServiceDocument.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY).addElement(Workspace.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE).setRequired(true);
        }
    }

    public ServiceDocument() {
        super(KEY);
    }

    protected ServiceDocument(ElementKey<?, ? extends ServiceDocument> elementKey) {
        super(elementKey);
    }

    protected ServiceDocument(ElementKey<?, ? extends ServiceDocument> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public ServiceDocument lock() {
        return (ServiceDocument) super.lock();
    }

    @Override // com.google.gdata.data.introspection.IServiceDocument
    public List<Workspace> getWorkspaces() {
        return super.getElements(Workspace.KEY);
    }

    public ServiceDocument addWorkspace(Workspace workspace) {
        super.addElement(workspace);
        return this;
    }

    public boolean removeWorkspace(Workspace workspace) {
        return super.removeElement(workspace);
    }

    public void clearWorkspaces() {
        super.removeElement(Workspace.KEY);
    }

    public boolean hasWorkspaces() {
        return super.hasElement(Workspace.KEY);
    }

    @Override // com.google.gdata.data.introspection.IServiceDocument
    public Workspace addWorkspace(String str) {
        Workspace workspace = new Workspace(TextContent.plainText(str));
        addWorkspace(workspace);
        return workspace;
    }
}
