package com.google.gdata.model.transforms.atompub;

import com.google.gdata.client.Service;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataContext;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.atom.Source;
import com.google.gdata.model.atompub.Accept;
import com.google.gdata.model.atompub.Categories;
import com.google.gdata.model.atompub.Collection;
import com.google.gdata.model.atompub.Control;
import com.google.gdata.model.atompub.Draft;
import com.google.gdata.model.atompub.Edited;
import com.google.gdata.model.atompub.ServiceDocument;
import com.google.gdata.model.atompub.Workspace;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes3.dex */
public class AtompubVersionTransforms {
    private static final MetadataContext V1_CONTEXT = MetadataContext.forVersion(Service.Versions.V1);

    public static void addTransforms(MetadataRegistry metadataRegistry) {
        addAtompubTransforms(metadataRegistry, Accept.KEY, Categories.KEY, Collection.KEY, Draft.KEY, Edited.KEY, Control.KEY, ServiceDocument.KEY, Workspace.KEY);
        metadataRegistry.build(Workspace.KEY, Workspace.TITLE, V1_CONTEXT).setVisible(true);
        metadataRegistry.build(Workspace.KEY, Source.TITLE, V1_CONTEXT).setVisible(false);
        metadataRegistry.build(Collection.KEY, Collection.TITLE, V1_CONTEXT).setVisible(true);
        metadataRegistry.build(Collection.KEY, Source.TITLE, V1_CONTEXT).setVisible(false);
    }

    private static void addAtompubTransforms(MetadataRegistry metadataRegistry, ElementKey<?, ?>... elementKeyArr) {
        for (ElementKey<?, ?> elementKey : elementKeyArr) {
            addAtompubTransform(metadataRegistry, elementKey);
        }
    }

    private static void addAtompubTransform(MetadataRegistry metadataRegistry, ElementKey<?, ?> elementKey) {
        metadataRegistry.build(elementKey, V1_CONTEXT).setName(new QName(Namespaces.atomPubDraftNs, elementKey.getId().getLocalName()));
    }
}
