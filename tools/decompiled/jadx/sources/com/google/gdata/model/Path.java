package com.google.gdata.model;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.gdata.util.common.base.Objects;
import com.google.gdata.util.common.base.Preconditions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
public class Path {
    public static final Path ROOT = builder().build();
    private final ElementMetadata<?, ?> root;
    private final AttributeMetadata<?> selectedAttribute;
    private final ElementMetadata<?, ?> selectedElement;
    private final boolean selectsAttribute;
    private final List<MetadataKey<?>> steps;

    public class Builder {
        private ElementMetadata<?, ?> root;
        private AttributeMetadata<?> selectedAttribute;
        private ElementMetadata<?, ?> selectedElement;
        private boolean selectsAttribute;
        private List<MetadataKey<?>> steps;

        private Builder() {
            this.steps = Lists.newArrayList();
        }

        Builder fromRoot(ElementMetadata<?, ?> elementMetadata) {
            ElementMetadata<?, ?> elementMetadata2 = (ElementMetadata) Preconditions.checkNotNull(elementMetadata);
            this.root = elementMetadata2;
            this.selectedElement = elementMetadata2;
            if (this.steps != null) {
                ArrayList arrayListNewArrayList = Lists.newArrayList(this.steps);
                this.steps.clear();
                Iterator it = arrayListNewArrayList.iterator();
                while (it.hasNext()) {
                    addStep((MetadataKey) it.next());
                }
            }
            return this;
        }

        public Builder addStep(MetadataKey<?> metadataKey) {
            if (this.selectedElement != null) {
                if (metadataKey instanceof ElementKey) {
                    if (!addIfElement(metadataKey.getId())) {
                        throw new PathException("No child element matching key:" + metadataKey);
                    }
                } else if (!addIfAttribute(metadataKey.getId())) {
                    throw new PathException("No child attribute matching key:" + metadataKey);
                }
            } else {
                addToStepList(metadataKey);
            }
            return this;
        }

        public boolean addIfElement(QName qName) {
            ElementKey<?, ?> elementKeyOf;
            if (this.selectedElement != null) {
                elementKeyOf = this.selectedElement.findElement(qName);
                if (elementKeyOf == null) {
                    return false;
                }
                this.selectedElement = this.selectedElement.bindElement(elementKeyOf);
            } else {
                elementKeyOf = ElementKey.of(qName);
            }
            addToStepList(elementKeyOf);
            return true;
        }

        public boolean addIfAttribute(QName qName) {
            AttributeKey<?> attributeKeyOf;
            if (this.selectedElement != null) {
                attributeKeyOf = this.selectedElement.findAttribute(qName);
                if (attributeKeyOf == null) {
                    return false;
                }
                this.selectedAttribute = this.selectedElement.bindAttribute(attributeKeyOf);
            } else {
                attributeKeyOf = AttributeKey.of(qName);
            }
            addToStepList(attributeKeyOf);
            return true;
        }

        private void addToStepList(MetadataKey<?> metadataKey) {
            if (this.selectsAttribute) {
                throw new PathException("Cannot add to an attribute path: " + metadataKey.getId());
            }
            if (metadataKey instanceof AttributeKey) {
                this.selectsAttribute = true;
            }
            this.steps.add(metadataKey);
        }

        public Path build() {
            return new Path(this);
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Path of(MetadataKey<?>... metadataKeyArr) {
        Builder builder = new Builder();
        for (MetadataKey<?> metadataKey : metadataKeyArr) {
            builder.addStep(metadataKey);
        }
        return builder.build();
    }

    public static Path to(ElementMetadata<?, ?> elementMetadata, MetadataKey<?>... metadataKeyArr) {
        Builder builderFromRoot = new Builder().fromRoot(elementMetadata);
        for (MetadataKey<?> metadataKey : metadataKeyArr) {
            builderFromRoot.addStep(metadataKey);
        }
        return builderFromRoot.build();
    }

    private Path(Builder builder) {
        this.root = builder.root;
        this.steps = ImmutableList.copyOf((Collection) builder.steps);
        this.selectsAttribute = builder.selectsAttribute;
        if (this.root != null) {
            this.selectedElement = builder.selectedElement;
            this.selectedAttribute = builder.selectedAttribute;
        } else {
            this.selectedElement = null;
            this.selectedAttribute = null;
        }
    }

    public boolean selectsAttribute() {
        return this.selectsAttribute;
    }

    public boolean selectsElement() {
        return !this.selectsAttribute;
    }

    public ElementMetadata<?, ?> getSelectedElement() {
        return this.selectedElement;
    }

    public AttributeMetadata<?> getSelectedAttribute() {
        return this.selectedAttribute;
    }

    public List<MetadataKey<?>> getSteps() {
        return this.steps;
    }

    public boolean isRelative() {
        return this.root == null;
    }

    public AttributeKey<?> getSelectedAttributeKey() {
        Preconditions.checkState(this.selectsAttribute, "Must select an attribute key.");
        return (AttributeKey) this.steps.get(this.steps.size() - 1);
    }

    public ElementKey<?, ?> getSelectedElementKey() {
        Preconditions.checkState(!this.steps.isEmpty(), "Must not be an empty path.");
        Preconditions.checkState(this.selectsAttribute ? false : true, "Must select an element key.");
        return (ElementKey) this.steps.get(this.steps.size() - 1);
    }

    public ElementKey<?, ?> getParentKey() {
        if (this.steps.size() > 1) {
            return (ElementKey) this.steps.get(this.steps.size() - 2);
        }
        return null;
    }

    public Path toAbsolute(ElementMetadata<?, ?> elementMetadata) {
        Builder builderFromRoot = new Builder().fromRoot(elementMetadata);
        Iterator<MetadataKey<?>> it = this.steps.iterator();
        while (it.hasNext()) {
            builderFromRoot.addStep(it.next());
        }
        return builderFromRoot.build();
    }

    public String toString() {
        if (this.steps.isEmpty()) {
            return ".";
        }
        StringBuilder sb = new StringBuilder();
        for (MetadataKey<?> metadataKey : this.steps) {
            addPathSeparator(sb);
            if (metadataKey instanceof AttributeKey) {
                sb.append('@');
            }
            sb.append(metadataKey.getId());
        }
        return sb.toString();
    }

    private void addPathSeparator(StringBuilder sb) {
        if (sb.length() != 0) {
            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != Path.class) {
            return false;
        }
        Path path = (Path) obj;
        return this.root == path.root && this.steps.equals(path.steps);
    }

    public int hashCode() {
        return Objects.hashCode(this.root, this.steps);
    }
}
