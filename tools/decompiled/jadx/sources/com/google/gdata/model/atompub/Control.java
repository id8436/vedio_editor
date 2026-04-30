package com.google.gdata.model.atompub;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.atompub.Draft;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes3.dex */
public class Control extends Element {
    public static final ElementKey<Void, Control> KEY = ElementKey.of(new QName(Namespaces.atomPubStandardNs, "control"), Void.class, Control.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY).addElement(Draft.KEY);
        }
    }

    public Control() {
        super(KEY);
    }

    protected Control(ElementKey<?, ? extends Control> elementKey) {
        super(elementKey);
    }

    protected Control(ElementKey<?, ? extends Control> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Control lock() {
        return (Control) super.lock();
    }

    public Draft getDraft() {
        return (Draft) super.getElement(Draft.KEY);
    }

    public Control setDraft(Draft draft) {
        super.setElement(Draft.KEY, draft);
        return this;
    }

    public boolean hasDraft() {
        return super.hasElement(Draft.KEY);
    }

    public boolean isDraft() {
        return hasDraft() && Draft.Value.YES.equals(getElementValue(Draft.KEY));
    }

    public void setDraft(boolean z) {
        if (z) {
            setDraft(new Draft(Draft.Value.YES));
        } else {
            removeElement(Draft.KEY);
        }
    }
}
