package com.google.gdata.model;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.Metadata;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.wireformats.ContentCreationException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class PathAdapter {
    static ElementAdapter elementAdapter(Path path) {
        return new ElementAdapter(path);
    }

    static ValueAdapter valueAdapter(Path path) {
        return new ValueAdapter(path);
    }

    static Element getParentElement(Path path, Element element) {
        Preconditions.checkNotNull(path, "path");
        Preconditions.checkNotNull(element, "rootElement");
        List<MetadataKey<?>> steps = path.getSteps();
        if (steps.isEmpty()) {
            return null;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < steps.size() - 1) {
                element = element.getElement((ElementKey<D, Element>) steps.get(i2));
                if (element == null) {
                    return null;
                }
                i = i2 + 1;
            } else {
                return element;
            }
        }
    }

    static Element getFinalElement(Path path, Element element) {
        Element parentElement = getParentElement(path, element);
        return (path.selectsAttribute() || parentElement == null) ? parentElement : parentElement.getElement(path.getSelectedElementKey());
    }

    static Collection<? extends Element> getFinalElements(Path path, Element element) {
        List listOf = ImmutableList.of(element);
        Iterator<MetadataKey<?>> it = path.getSteps().iterator();
        do {
            List list = listOf;
            if (it.hasNext()) {
                MetadataKey<?> next = it.next();
                if (!(next instanceof AttributeKey)) {
                    ElementKey elementKey = (ElementKey) next;
                    if (list.size() > 1) {
                        ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(list.size());
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            arrayListNewArrayListWithCapacity.add(((Element) it2.next()).getElement(elementKey));
                        }
                        listOf = arrayListNewArrayListWithCapacity;
                    } else {
                        listOf = ((Element) list.get(0)).getElements(elementKey);
                    }
                }
            }
            return list;
        } while (!listOf.isEmpty());
        return listOf;
    }

    static Element createParentElement(Path path, Element element) throws ParseException {
        Preconditions.checkNotNull(path, "path");
        Preconditions.checkNotNull(element, "rootElement");
        List<MetadataKey<?>> steps = path.getSteps();
        if (steps.isEmpty()) {
            return null;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < steps.size() - 1) {
                element = getOrCreateChild(element, (ElementKey) steps.get(i2));
                i = i2 + 1;
            } else {
                return element;
            }
        }
    }

    static Collection<Element> createParentElements(Path path, Element element, ElementMetadata<?, ?> elementMetadata, int i) throws ParseException {
        Element orCreateChild;
        ElementMetadata<?, ?> elementMetadata2;
        Preconditions.checkNotNull(path, "path");
        Preconditions.checkNotNull(element, "rootElement");
        List<MetadataKey<?>> steps = path.getSteps();
        if (steps.isEmpty()) {
            return ImmutableList.of();
        }
        int i2 = 0;
        ArrayList arrayListNewArrayListWithCapacity = null;
        Element element2 = element;
        while (i2 < steps.size() - 1) {
            ElementKey<K, L> elementKey = (ElementKey) steps.get(i2);
            ElementMetadata<?, ?> elementMetadataBindElement = elementMetadata == null ? null : elementMetadata.bindElement(elementKey);
            if (arrayListNewArrayListWithCapacity != null) {
                checkNotMultiple(elementMetadataBindElement);
                ArrayList arrayListNewArrayListWithCapacity2 = Lists.newArrayListWithCapacity(arrayListNewArrayListWithCapacity.size());
                Iterator it = arrayListNewArrayListWithCapacity.iterator();
                while (it.hasNext()) {
                    arrayListNewArrayListWithCapacity2.add(getOrCreateChild((Element) it.next(), elementKey));
                }
                elementMetadata2 = elementMetadataBindElement;
                arrayListNewArrayListWithCapacity = arrayListNewArrayListWithCapacity2;
                orCreateChild = element2;
            } else if (elementMetadataBindElement == null || elementMetadataBindElement.getCardinality() == ElementMetadata.Cardinality.SINGLE) {
                ElementMetadata<?, ?> elementMetadata3 = elementMetadataBindElement;
                orCreateChild = getOrCreateChild(element2, elementKey);
                elementMetadata2 = elementMetadata3;
            } else {
                arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(i);
                for (int i3 = 0; i3 < i; i3++) {
                    try {
                        Element elementCreateElement = Element.createElement(elementKey);
                        element2.addElement(elementCreateElement);
                        arrayListNewArrayListWithCapacity.add(elementCreateElement);
                    } catch (ContentCreationException e2) {
                        throw new ParseException(e2);
                    }
                }
                elementMetadata2 = elementMetadataBindElement;
                orCreateChild = element2;
            }
            i2++;
            elementMetadata = elementMetadata2;
            element2 = orCreateChild;
        }
        return arrayListNewArrayListWithCapacity == null ? ImmutableList.of(element2) : arrayListNewArrayListWithCapacity;
    }

    static Element createFinalElement(Path path, Element element) throws ParseException {
        Element elementCreateParentElement = createParentElement(path, element);
        if (path.selectsAttribute() || elementCreateParentElement == null) {
            return elementCreateParentElement;
        }
        ElementKey<?, ?> selectedElementKey = path.getSelectedElementKey();
        Element element2 = elementCreateParentElement.getElement((ElementKey<D, Element>) selectedElementKey);
        if (element2 == null) {
            try {
                Element elementCreateElement = Element.createElement(selectedElementKey);
                elementCreateParentElement.addElement(elementCreateElement);
                return elementCreateElement;
            } catch (ContentCreationException e2) {
                throw new ParseException(e2);
            }
        }
        return element2;
    }

    private static Element getOrCreateChild(Element element, ElementKey<?, ?> elementKey) throws ParseException {
        Element element2 = element.getElement((ElementKey<D, Element>) elementKey);
        if (element2 == null) {
            try {
                Element elementCreateElement = Element.createElement(elementKey);
                element.addElement(elementCreateElement);
                return elementCreateElement;
            } catch (ContentCreationException e2) {
                throw new ParseException(e2);
            }
        }
        return element2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkNotMultiple(ElementMetadata<?, ?> elementMetadata) {
        if (elementMetadata != null && elementMetadata.getCardinality() != ElementMetadata.Cardinality.SINGLE) {
            throw new IllegalStateException("Metadata for key " + elementMetadata.getKey() + " represents a multiple-cardinality element. The path cannot contain more than one multiple-cardinality element.");
        }
    }

    static Object generateAttributeValue(Element element, ElementMetadata<?, ?> elementMetadata, AttributeKey<?> attributeKey, AttributeMetadata<?> attributeMetadata) {
        return (elementMetadata == null || attributeMetadata == null) ? element.getAttributeValue(attributeKey) : attributeMetadata.generateValue(element, elementMetadata);
    }

    static void parseAttributeValue(Element element, ElementMetadata<?, ?> elementMetadata, AttributeKey<?> attributeKey, AttributeMetadata<?> attributeMetadata, Object obj) throws ParseException {
        if (attributeMetadata == null) {
            element.setAttributeValue(attributeKey, obj);
        } else {
            attributeMetadata.parseValue(element, elementMetadata, obj);
        }
    }

    static Object generateTextValue(Element element, ElementMetadata<?, ?> elementMetadata) {
        return elementMetadata != null ? elementMetadata.generateValue(element, elementMetadata) : element.getTextValue();
    }

    static void parseTextValue(Element element, ElementMetadata<?, ?> elementMetadata, Object obj) throws ParseException {
        if (elementMetadata != null) {
            elementMetadata.parseValue(element, elementMetadata, obj);
        } else {
            element.setTextValue(obj);
        }
    }

    class ElementAdapter implements ElementMetadata.MultipleVirtualElement, ElementMetadata.SingleVirtualElement {
        private final Path path;

        ElementAdapter(Path path) {
            this.path = path;
        }

        @Override // com.google.gdata.model.ElementMetadata.SingleVirtualElement
        public Element generateSingle(Element element, ElementMetadata<?, ?> elementMetadata, ElementMetadata<?, ?> elementMetadata2) {
            Preconditions.checkState(this.path.selectsElement(), "An attribute path cannot be used to generate elements.");
            Element finalElement = PathAdapter.getFinalElement(this.path, element);
            if (finalElement == null) {
                return null;
            }
            try {
                return Element.createElement(mergeKeys(finalElement.getElementKey(), elementMetadata2.getKey()), finalElement);
            } catch (ContentCreationException e2) {
                throw new IllegalArgumentException("Invalid metadata", e2);
            }
        }

        @Override // com.google.gdata.model.ElementMetadata.SingleVirtualElement
        public void parse(Element element, ElementMetadata<?, ?> elementMetadata, Element element2, ElementMetadata<?, ?> elementMetadata2) throws ParseException {
            Preconditions.checkState(this.path.selectsElement(), "An attribute path cannot be used to parse elements.");
            try {
                PathAdapter.createParentElement(this.path, element).addElement(Element.createElement(this.path.getSelectedElementKey(), element2));
            } catch (ContentCreationException e2) {
                throw new ParseException(e2);
            }
        }

        @Override // com.google.gdata.model.ElementMetadata.MultipleVirtualElement
        public Collection<? extends Element> generateMultiple(Element element, ElementMetadata<?, ?> elementMetadata, ElementMetadata<?, ?> elementMetadata2) {
            Preconditions.checkState(this.path.selectsElement(), "An attribute path cannot be used to generate elements.");
            Collection<? extends Element> finalElements = PathAdapter.getFinalElements(this.path, element);
            if (!finalElements.isEmpty()) {
                ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(finalElements.size());
                for (Element element2 : finalElements) {
                    try {
                        arrayListNewArrayListWithCapacity.add(Element.createElement(mergeKeys(element2.getElementKey(), elementMetadata2.getKey()), element2));
                    } catch (ContentCreationException e2) {
                        throw new IllegalArgumentException("Invalid metadata", e2);
                    }
                }
                return arrayListNewArrayListWithCapacity;
            }
            return finalElements;
        }

        @Override // com.google.gdata.model.ElementMetadata.MultipleVirtualElement
        public void parse(Element element, ElementMetadata<?, ?> elementMetadata, Collection<Element> collection, ElementMetadata<?, ?> elementMetadata2) throws ParseException {
            Preconditions.checkState(this.path.selectsElement(), "An attribute path cannot be used to parse elements.");
            Path absolute = this.path.toAbsolute(elementMetadata);
            Collection<Element> collectionCreateParentElements = PathAdapter.createParentElements(absolute, element, elementMetadata, collection.size());
            ElementKey<?, ?> selectedElementKey = absolute.getSelectedElementKey();
            ElementMetadata<?, ?> selectedElement = absolute.getSelectedElement();
            Iterator<Element> it = collectionCreateParentElements.iterator();
            Iterator<Element> it2 = collection.iterator();
            if (collectionCreateParentElements.size() > 1) {
                PathAdapter.checkNotMultiple(selectedElement);
                while (it.hasNext() && it2.hasNext()) {
                    it.next().addElement(it2.next());
                }
                return;
            }
            if (collection.size() > 1 && selectedElement != null && selectedElement.getCardinality() == ElementMetadata.Cardinality.SINGLE) {
                throw new IllegalStateException("Metadata for key " + selectedElementKey + " represents a single-cardinality element. The path must contain at least one multiple-cardinality element in order to parse multiple elements.");
            }
            Element next = it.next();
            while (it2.hasNext()) {
                next.addElement(it2.next());
            }
        }

        private static ElementKey<?, ?> mergeKeys(ElementKey<?, ?> elementKey, ElementKey<?, ?> elementKey2) {
            if (!elementKey2.getId().equals(elementKey.getId())) {
                return ElementKey.of(elementKey2.getId(), elementKey.getDatatype(), elementKey.getElementType());
            }
            return elementKey;
        }
    }

    class ValueAdapter implements Metadata.VirtualValue {
        private final Path path;

        ValueAdapter(Path path) {
            this.path = path;
        }

        @Override // com.google.gdata.model.Metadata.VirtualValue
        public Object generate(Element element, ElementMetadata<?, ?> elementMetadata) {
            Path absolute = this.path.toAbsolute(elementMetadata);
            Element finalElement = PathAdapter.getFinalElement(absolute, element);
            if (finalElement == null) {
                return null;
            }
            if (absolute.selectsAttribute()) {
                return PathAdapter.generateAttributeValue(finalElement, absolute.getSelectedElement(), absolute.getSelectedAttributeKey(), absolute.getSelectedAttribute());
            }
            return PathAdapter.generateTextValue(finalElement, absolute.getSelectedElement());
        }

        @Override // com.google.gdata.model.Metadata.VirtualValue
        public void parse(Element element, ElementMetadata<?, ?> elementMetadata, Object obj) throws ParseException {
            Path absolute = this.path.toAbsolute(elementMetadata);
            Element elementCreateFinalElement = PathAdapter.createFinalElement(this.path, element);
            if (absolute.selectsAttribute()) {
                PathAdapter.parseAttributeValue(elementCreateFinalElement, absolute.getSelectedElement(), absolute.getSelectedAttributeKey(), absolute.getSelectedAttribute(), obj);
            } else {
                PathAdapter.parseTextValue(elementCreateFinalElement, absolute.getSelectedElement(), obj);
            }
        }
    }

    private PathAdapter() {
    }
}
