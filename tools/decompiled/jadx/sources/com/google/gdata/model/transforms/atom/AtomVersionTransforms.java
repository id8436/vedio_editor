package com.google.gdata.model.transforms.atom;

import com.google.gdata.client.Service;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataContext;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.atom.Entry;
import com.google.gdata.model.atom.Feed;
import com.google.gdata.model.gd.GdAttributes;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes3.dex */
public class AtomVersionTransforms {
    private static final MetadataContext V1_CONTEXT = MetadataContext.forVersion(Service.Versions.V1);

    public static void addTransforms(MetadataRegistry metadataRegistry) {
        addOssTransform(metadataRegistry, Feed.TOTAL_RESULTS);
        addOssTransform(metadataRegistry, Feed.START_INDEX);
        addOssTransform(metadataRegistry, Feed.ITEMS_PER_PAGE);
        metadataRegistry.build(Entry.KEY, GdAttributes.KIND, V1_CONTEXT).setVisible(false);
        metadataRegistry.build(Feed.KEY, GdAttributes.KIND, V1_CONTEXT).setVisible(false);
    }

    private static void addOssTransform(MetadataRegistry metadataRegistry, ElementKey<?, ?> elementKey) {
        metadataRegistry.build(elementKey, V1_CONTEXT).setName(new QName(Namespaces.openSearchNs, elementKey.getId().getLocalName()));
    }
}
