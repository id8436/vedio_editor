package com.google.gdata.model.atompub;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.introspection.IWorkspace;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.ValidationContext;
import com.google.gdata.model.atom.Source;
import com.google.gdata.model.atom.TextContent;
import com.google.gdata.util.Namespaces;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Workspace extends Element implements IWorkspace {
    public static final ElementKey<Void, Workspace> KEY = ElementKey.of(new QName(Namespaces.atomPubStandardNs, "workspace"), Workspace.class);
    public static final AttributeKey<String> TITLE = AttributeKey.of(new QName("title"));

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(TITLE).setVisible(false);
            elementCreatorBuild.addElement(Collection.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            elementCreatorBuild.addElement(Source.TITLE).setRequired(true);
        }
    }

    public Workspace() {
        super(KEY);
    }

    protected Workspace(ElementKey<?, ? extends Workspace> elementKey) {
        super(elementKey);
    }

    protected Workspace(ElementKey<?, ? extends Workspace> elementKey, Element element) {
        super(elementKey, element);
    }

    public Workspace(TextContent textContent) {
        this();
        setTitle(textContent);
    }

    @Override // com.google.gdata.data.introspection.IWorkspace
    public List<Collection> getCollections() {
        return super.getElements(Collection.KEY);
    }

    public void addCollection(Collection collection) {
        super.addElement(Collection.KEY, collection);
    }

    @Override // com.google.gdata.data.introspection.IWorkspace
    public Collection addCollection(String str, String str2, String... strArr) {
        Collection collection = new Collection(str, TextContent.plainText(str2), strArr);
        addCollection(collection);
        return collection;
    }

    public boolean removeCollection(Collection collection) {
        return super.removeElement(Collection.KEY, collection);
    }

    public boolean hasCollections() {
        return super.hasElement(Collection.KEY);
    }

    public TextContent getTitle() {
        return (TextContent) super.getElement(Source.TITLE);
    }

    public void setTitle(TextContent textContent) {
        setAttributeValue(TITLE, textContent == null ? null : textContent.getPlainText());
        super.setElement(Source.TITLE, textContent);
    }

    public boolean hasTitle() {
        return super.hasElement(Source.TITLE);
    }

    @Override // com.google.gdata.model.Element
    public Element resolve(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        String str = (String) getAttributeValue(TITLE);
        TextContent textContent = (TextContent) getElement(Source.TITLE);
        if (str != null) {
            if (textContent == null) {
                addElement(Source.TITLE, TextContent.plainText(str));
            } else if (!str.equals(textContent.getPlainText())) {
                validationContext.addError(this, CoreErrorDomain.ERR.duplicateTitle);
            }
        } else if (textContent != null) {
            setAttributeValue(TITLE, textContent.getPlainText());
        }
        return super.resolve(elementMetadata, validationContext);
    }

    @Override // com.google.gdata.model.Element
    public String toString() {
        return "{Workspace" + super.toString() + "}";
    }
}
