package com.google.gdata.model;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.gdata.model.ElementVisitor;
import com.google.gdata.model.atom.Category;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.base.Objects;
import com.google.gdata.util.common.base.Pair;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.wireformats.ContentCreationException;
import com.google.gdata.wireformats.ContentValidationException;
import com.google.gdata.wireformats.ObjectConverter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public class Element {
    private static final Logger LOGGER = Logger.getLogger(Element.class.getName());
    private final ElementKey<?, ?> key;
    private final ElementState state;

    public static ElementKey<?, ?> getDefaultKey(Class<? extends Element> cls) {
        Preconditions.checkNotNull(cls, "type");
        try {
            return (ElementKey) ElementKey.class.cast(cls.getField("KEY").get(null));
        } catch (IllegalAccessException e2) {
            throw new IllegalArgumentException("Unable to access KEY field:" + cls, e2);
        } catch (IllegalArgumentException e3) {
            throw new IllegalArgumentException("Unable to access KEY field:" + cls, e3);
        } catch (NoSuchFieldException e4) {
            throw new IllegalArgumentException("Unable to access KEY field:" + cls, e4);
        } catch (NullPointerException e5) {
            throw new IllegalArgumentException("Unable to access KEY field:" + cls, e5);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class ElementState {
        private Map<QName, Attribute> attributes;
        private Map<QName, Object> elements;
        private volatile boolean locked;
        private Object value;

        private ElementState() {
        }

        public String toString() {
            Objects.ToStringHelper stringHelper = Objects.toStringHelper(this);
            if (this.attributes != null) {
                stringHelper.add("attributes", this.attributes.values());
            }
            if (this.elements != null) {
                stringHelper.add(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeElementsNodeName, this.elements.values());
            }
            if (this.value != null) {
                stringHelper.add("value", this.value);
            }
            return stringHelper.toString();
        }
    }

    public Element(ElementKey<?, ?> elementKey) {
        Preconditions.checkNotNull(elementKey, "elementKey");
        this.key = bindKey(elementKey, getClass());
        this.state = new ElementState();
    }

    public Element(QName qName) {
        this.key = ElementKey.of(qName, String.class, getClass());
        this.state = new ElementState();
    }

    public Element(ElementKey<?, ?> elementKey, Element element) {
        this.key = bindKey(elementKey, getClass());
        this.state = element.state;
    }

    private static ElementKey<?, ?> bindKey(ElementKey<?, ?> elementKey, Class<? extends Element> cls) {
        return elementKey.getElementType() == cls ? elementKey : ElementKey.of(elementKey.getId(), elementKey.getDatatype(), cls);
    }

    public final boolean isLocked() {
        return this.state.locked;
    }

    public Element lock() {
        this.state.locked = true;
        if (this.state.attributes != null) {
            Iterator it = this.state.attributes.values().iterator();
            while (it.hasNext()) {
                ((Attribute) it.next()).lock();
            }
        }
        if (this.state.elements != null) {
            for (Object obj : this.state.elements.values()) {
                if (obj instanceof Element) {
                    ((Element) obj).lock();
                } else {
                    Iterator it2 = castElementCollection(obj).iterator();
                    while (it2.hasNext()) {
                        ((Element) it2.next()).lock();
                    }
                }
            }
        }
        return this;
    }

    private void throwExceptionIfLocked() {
        Preconditions.checkState(!this.state.locked, "%s instance is read only", getElementId());
    }

    public ElementKey<?, ?> getElementKey() {
        return this.key;
    }

    public QName getElementId() {
        return this.key.getId();
    }

    public Iterator<Attribute> getAttributeIterator() {
        return getAttributeIterator(null);
    }

    public Iterator<Attribute> getAttributeIterator(ElementMetadata<?, ?> elementMetadata) {
        return new AttributeIterator(this, elementMetadata, this.state.attributes);
    }

    public int getAttributeCount() {
        if (this.state.attributes != null) {
            return this.state.attributes.size();
        }
        return 0;
    }

    public boolean hasAttribute(QName qName) {
        if (this.state.attributes == null) {
            return false;
        }
        return this.state.attributes.containsKey(qName);
    }

    public boolean hasAttribute(AttributeKey<?> attributeKey) {
        return hasAttribute(attributeKey.getId());
    }

    public Object getAttributeValue(QName qName) {
        if (this.state.attributes == null) {
            return null;
        }
        Attribute attribute = (Attribute) this.state.attributes.get(qName);
        return attribute == null ? null : attribute.getValue();
    }

    public <T> T getAttributeValue(AttributeKey<T> attributeKey) {
        Attribute attribute = this.state.attributes == null ? null : (Attribute) this.state.attributes.get(attributeKey.getId());
        Object value = attribute == null ? null : attribute.getValue();
        if (value == null) {
            return null;
        }
        try {
            return (T) ObjectConverter.getValue(value, attributeKey.getDatatype());
        } catch (ParseException e2) {
            throw new IllegalArgumentException("Unable to convert value " + e2 + " to datatype " + attributeKey.getDatatype());
        }
    }

    public Element setAttributeValue(QName qName, Object obj) {
        return setAttributeValue(AttributeKey.of(qName), obj);
    }

    public Element setAttributeValue(AttributeKey<?> attributeKey, Object obj) {
        if (obj == null) {
            removeAttributeValue(attributeKey);
        } else {
            setAttribute(attributeKey, new Attribute(attributeKey, obj));
        }
        return this;
    }

    private void setAttribute(AttributeKey<?> attributeKey, Attribute attribute) {
        throwExceptionIfLocked();
        if (this.state.attributes == null) {
            this.state.attributes = new LinkedHashMap();
        }
        this.state.attributes.put(attributeKey.getId(), attribute);
    }

    @Deprecated
    public Object removeAttribute(QName qName) {
        return removeAttributeValue(qName);
    }

    public Object removeAttributeValue(QName qName) {
        throwExceptionIfLocked();
        Attribute attribute = this.state.attributes == null ? null : (Attribute) this.state.attributes.remove(qName);
        if (attribute == null) {
            return null;
        }
        return attribute.getValue();
    }

    @Deprecated
    public Object removeAttribute(AttributeKey<?> attributeKey) {
        return removeAttributeValue(attributeKey);
    }

    public Object removeAttributeValue(AttributeKey<?> attributeKey) {
        return removeAttributeValue(attributeKey.getId());
    }

    public Iterator<Element> getElementIterator() {
        return getElementIterator(null);
    }

    public Iterator<Element> getElementIterator(ElementMetadata<?, ?> elementMetadata) {
        return new ElementIterator(this, elementMetadata, this.state.elements);
    }

    public int getElementCount() {
        int size = 0;
        if (this.state.elements != null) {
            for (Object obj : this.state.elements.values()) {
                if (obj instanceof Collection) {
                    size += castElementCollection(obj).size();
                } else {
                    size++;
                }
            }
        }
        return size;
    }

    public Element getElement(QName qName) {
        Object elementObject = getElementObject(qName);
        if (elementObject instanceof Element) {
            return (Element) elementObject;
        }
        Preconditions.checkArgument(!(elementObject instanceof Collection), "The getElement(*) method was called for a repeating element.  Use getElements(*) instead.");
        return null;
    }

    public <D, T extends Element> T getElement(ElementKey<D, T> elementKey) {
        Element element = getElement(elementKey.getId());
        if (element == null) {
            return null;
        }
        try {
            return (T) adapt(elementKey, element);
        } catch (ContentCreationException e2) {
            throw new IllegalArgumentException("Unable to adapt to " + elementKey.getElementType(), e2);
        }
    }

    private Object getElementObject(QName qName) {
        XmlNamespace ns;
        if (this.state.elements == null) {
            return null;
        }
        if (!"*".equals(qName.getLocalName()) || (ns = qName.getNs()) == null) {
            return this.state.elements.get(qName);
        }
        String uri = ns.getUri();
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Map.Entry entry : this.state.elements.entrySet()) {
            XmlNamespace ns2 = ((QName) entry.getKey()).getNs();
            if (ns2 != null && uri.equals(ns2.getUri())) {
                Object value = entry.getValue();
                if (value instanceof Element) {
                    builder.add((Element) value);
                } else {
                    builder.addAll((Iterable) castElementCollection(value));
                }
            }
        }
        return builder.build();
    }

    private Object getElementObject(ElementKey<?, ?> elementKey) {
        return getElementObject(elementKey.getId());
    }

    public Object getElementValue(QName qName) {
        Element element = getElement(qName);
        if (element == null) {
            return null;
        }
        return element.getTextValue();
    }

    public <V> V getElementValue(ElementKey<V, ? extends Element> elementKey) {
        Element element = getElement((ElementKey<D, Element>) elementKey);
        if (element == null) {
            return null;
        }
        return (V) element.getTextValue(elementKey);
    }

    public boolean hasElement(QName qName) {
        if (this.state.elements == null) {
            return false;
        }
        return this.state.elements.containsKey(qName);
    }

    public boolean hasElement(ElementKey<?, ?> elementKey) {
        return hasElement(elementKey.getId());
    }

    public List<Element> getElements(QName qName) {
        ImmutableList.Builder builder = ImmutableList.builder();
        Object elementObject = getElementObject(qName);
        if (elementObject != null) {
            if (elementObject instanceof Element) {
                builder.add((Element) elementObject);
            } else {
                Iterator it = castElementCollection(elementObject).iterator();
                while (it.hasNext()) {
                    builder.add((Element) it.next());
                }
            }
        }
        return builder.build();
    }

    public <T extends Element> List<T> getElements(ElementKey<?, T> elementKey) {
        ImmutableList.Builder builder = ImmutableList.builder();
        Object elementObject = getElementObject((ElementKey<?, ?>) elementKey);
        if (elementObject != null) {
            Class<? extends E> elementType = elementKey.getElementType();
            if (elementObject instanceof Element) {
                if (elementType.isInstance(elementObject)) {
                    builder.add(elementType.cast(elementObject));
                }
            } else {
                for (T t : castElementCollection(elementObject)) {
                    if (elementType.isInstance(t)) {
                        builder.add(elementType.cast(t));
                    }
                }
            }
        }
        return builder.build();
    }

    public Set<Element> getElementSet(QName qName) {
        ImmutableSet.Builder builder = ImmutableSet.builder();
        Object elementObject = getElementObject(qName);
        if (elementObject != null) {
            if (elementObject instanceof Element) {
                builder.add((Element) elementObject);
            } else {
                Iterator it = castElementCollection(elementObject).iterator();
                while (it.hasNext()) {
                    builder.add((Element) it.next());
                }
            }
        }
        return builder.build();
    }

    public <T extends Element> Set<T> getElementSet(ElementKey<?, T> elementKey) {
        ImmutableSet.Builder builder = ImmutableSet.builder();
        Object elementObject = getElementObject((ElementKey<?, ?>) elementKey);
        if (elementObject != null) {
            Class<? extends E> elementType = elementKey.getElementType();
            if (elementObject instanceof Element) {
                if (elementType.isInstance(elementObject)) {
                    builder.add(elementType.cast(elementObject));
                }
            } else {
                for (T t : castElementCollection(elementObject)) {
                    if (elementType.isInstance(t)) {
                        builder.add(elementType.cast(t));
                    }
                }
            }
        }
        return builder.build();
    }

    public Element setElement(QName qName, Element element) {
        removeElement(qName);
        if (element != null) {
            addElement(qName, element);
        }
        return this;
    }

    public Element setElement(Element element) {
        Preconditions.checkNotNull(element);
        setElement(element.getElementKey(), element);
        return this;
    }

    public Element setElement(ElementKey<?, ?> elementKey, Element element) {
        removeElement(elementKey);
        if (element != null) {
            addElement(elementKey, element);
        }
        return this;
    }

    public Element addElement(Element element) {
        Preconditions.checkNotNull(element);
        addElement(element.getElementKey(), element);
        return this;
    }

    public Element addElement(QName qName, Element element) {
        Preconditions.checkNotNull(element);
        addElement(ElementKey.of(qName, element.getElementKey().getDatatype(), element.getClass()), element);
        return this;
    }

    public Element addElement(ElementKey<?, ?> elementKey, Element element) {
        throwExceptionIfLocked();
        if (this.state.elements == null) {
            this.state.elements = new LinkedHashMap();
        }
        ElementKey<?, ?> elementKey2 = element.getElementKey();
        ElementKey<?, ?> elementKeyCalculateKey = calculateKey(elementKey, elementKey2);
        if (!elementKeyCalculateKey.equals(elementKey2)) {
            try {
                element = createElement(elementKeyCalculateKey, element);
            } catch (ContentCreationException e2) {
                throw new IllegalArgumentException("Key " + elementKeyCalculateKey + " cannot be applied to element with key " + elementKey2);
            }
        }
        QName id = elementKeyCalculateKey.getId();
        Object obj = this.state.elements.get(id);
        if (obj == null) {
            this.state.elements.put(id, element);
        } else if (obj instanceof Collection) {
            castElementCollection(obj).add(element);
        } else {
            Collection collectionCreateCollection = createCollection(elementKeyCalculateKey);
            collectionCreateCollection.add((Element) obj);
            collectionCreateCollection.add(element);
            this.state.elements.put(id, collectionCreateCollection);
        }
        return this;
    }

    private ElementKey<?, ?> calculateKey(ElementKey<?, ?> elementKey, ElementKey<?, ?> elementKey2) {
        Class<? extends E> elementType = elementKey.getElementType();
        Class<?> elementType2 = elementKey2.getElementType();
        if (elementType != elementType2 && elementType.isAssignableFrom(elementType2)) {
            return ElementKey.of(elementKey.getId(), elementKey.getDatatype(), elementType2);
        }
        return elementKey;
    }

    public Element removeElement(QName qName) {
        throwExceptionIfLocked();
        if (this.state.elements != null) {
            this.state.elements.remove(qName);
        }
        return this;
    }

    public Element removeElement(ElementKey<?, ?> elementKey) {
        return removeElement(elementKey.getId());
    }

    public boolean removeElement(Element element) {
        return removeElement(element.getElementKey(), element);
    }

    public boolean removeElement(ElementKey<?, ?> elementKey, Element element) {
        boolean z = true;
        throwExceptionIfLocked();
        if (this.state.elements != null) {
            Object elementObject = getElementObject(elementKey);
            if (elementObject instanceof Collection) {
                Collection collectionCastElementCollection = castElementCollection(elementObject);
                Iterator it = collectionCastElementCollection.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    if (it.next() == element) {
                        it.remove();
                        break;
                    }
                }
                if (collectionCastElementCollection.isEmpty()) {
                    removeElement(elementKey);
                    return z;
                }
                return z;
            }
            if (elementObject == element) {
                removeElement(elementKey);
                return true;
            }
        }
        return false;
    }

    public boolean replaceElement(Element element, Element element2) {
        throwExceptionIfLocked();
        if (element2 == null) {
            return removeElement(element);
        }
        QName elementId = element.getElementId();
        if (elementId.equals(element2.getElementId())) {
            if (this.state.elements == null) {
                return false;
            }
            Object obj = this.state.elements.get(elementId);
            if (obj instanceof List) {
                List listCastElementList = castElementList(obj);
                for (int i = 0; i < listCastElementList.size(); i++) {
                    if (listCastElementList.get(i) == element) {
                        listCastElementList.set(i, element2);
                        return true;
                    }
                }
                return false;
            }
            if (obj instanceof Set) {
                Set setCastElementSet = castElementSet(obj);
                if (!setCastElementSet.remove(element)) {
                    return false;
                }
                setCastElementSet.add(element2);
                return false;
            }
            if (obj != element) {
                return false;
            }
            this.state.elements.put(elementId, element2);
            return true;
        }
        boolean zRemoveElement = removeElement(element);
        if (zRemoveElement) {
            addElement(element2);
            return zRemoveElement;
        }
        return zRemoveElement;
    }

    private <T extends Element> List<T> castElementList(Object obj) {
        return (List) obj;
    }

    private <T extends Element> Set<T> castElementSet(Object obj) {
        return (Set) obj;
    }

    private <T extends Element> Collection<T> castElementCollection(Object obj) {
        return (Collection) obj;
    }

    private <T extends Element> Collection<T> createCollection(ElementKey<?, ?> elementKey) {
        return Category.class.isAssignableFrom(elementKey.getElementType()) ? Sets.newLinkedHashSet() : Lists.newArrayList();
    }

    public void clear() {
        throwExceptionIfLocked();
        this.state.value = null;
        this.state.attributes = null;
        this.state.elements = null;
    }

    public Object getTextValue() {
        return this.state.value;
    }

    public <V> V getTextValue(ElementKey<V, ?> elementKey) {
        if (this.state.value != null) {
            try {
                return (V) ObjectConverter.getValue(this.state.value, elementKey.getDatatype());
            } catch (ParseException e2) {
                throw new IllegalArgumentException("Unable to convert value " + e2 + " to datatype " + elementKey.getDatatype());
            }
        }
        return null;
    }

    public Element setTextValue(Object obj) {
        throwExceptionIfLocked();
        this.state.value = checkValue(this.key, obj);
        return this;
    }

    Object checkValue(ElementKey<?, ?> elementKey, Object obj) {
        if (obj != null) {
            Class<? extends Object> datatype = elementKey.getDatatype();
            Preconditions.checkArgument(datatype != Void.class, "Element must not contain a text node");
            Preconditions.checkArgument(datatype.isInstance(obj), "Invalid class: %s", obj.getClass().getCanonicalName());
        }
        return obj;
    }

    public boolean hasTextValue() {
        return this.state.value != null;
    }

    public Element resolve(ElementMetadata<?, ?> elementMetadata) throws ContentValidationException {
        ValidationContext validationContext = new ValidationContext();
        Element elementResolve = resolve(elementMetadata, validationContext);
        if (!validationContext.isValid()) {
            throw new ContentValidationException("Invalid data", validationContext);
        }
        return elementResolve;
    }

    public Element resolve(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        if (elementMetadata != null) {
            this = narrow(elementMetadata, validationContext);
            this.validate(elementMetadata, validationContext);
            Iterator<Element> elementIterator = this.getElementIterator();
            if (elementIterator.hasNext()) {
                ArrayList<Pair> arrayListNewArrayList = Lists.newArrayList();
                while (elementIterator.hasNext()) {
                    Element next = elementIterator.next();
                    Element elementResolve = next.resolve(elementMetadata.bindElement(next.getElementKey()), validationContext);
                    if (elementResolve != next) {
                        arrayListNewArrayList.add(Pair.of(next, elementResolve));
                    }
                }
                for (Pair pair : arrayListNewArrayList) {
                    this.replaceElement((Element) pair.getFirst(), (Element) pair.getSecond());
                }
            }
        }
        return this;
    }

    protected Element narrow(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        ElementKey<?, E> key = elementMetadata.getKey();
        Class<?> elementType = key.getElementType();
        if (!elementType.isInstance(this)) {
            if (!getClass().isAssignableFrom(elementType)) {
                LOGGER.severe("Element of type " + getClass() + " cannot be narrowed to type " + elementType);
            }
            try {
                return adapt(key, this);
            } catch (ContentCreationException e2) {
                LOGGER.log(Level.SEVERE, "Unable to adapt " + this.getClass() + " to " + elementType, (Throwable) e2);
                return this;
            }
        }
        return this;
    }

    protected Element adapt(Element element, ElementMetadata<?, ?> elementMetadata, String str) {
        ElementKey<?, ?> elementKeyAdapt = elementMetadata.adapt(str);
        if (elementKeyAdapt != null) {
            try {
                return adapt(elementKeyAdapt, element);
            } catch (ContentCreationException e2) {
                LOGGER.log(Level.SEVERE, "Unable to adapt " + element.getClass() + " to " + elementKeyAdapt.getElementType(), (Throwable) e2);
                return element;
            }
        }
        return element;
    }

    protected <T extends Element> T adapt(ElementKey<?, T> elementKey, Element element) throws ContentCreationException {
        Preconditions.checkNotNull(elementKey);
        Class<?> elementType = elementKey.getElementType();
        if (element == null || elementType.isInstance(element)) {
            return (T) elementType.cast(element);
        }
        Class<?> cls = element.getClass();
        Preconditions.checkArgument(cls.isAssignableFrom(elementType), "Cannot adapt from element of type %s to an element of type %s", cls, elementType);
        return (T) createElement(elementKey, element);
    }

    protected void validate(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        if (elementMetadata != null) {
            elementMetadata.validate(validationContext, this);
        }
    }

    public void visit(ElementVisitor elementVisitor, ElementMetadata<?, ?> elementMetadata) {
        visit(elementVisitor, null, elementMetadata);
    }

    private void visit(ElementVisitor elementVisitor, Element element, ElementMetadata<?, ?> elementMetadata) throws ElementVisitor.StoppedException {
        if (elementVisitor.visit(element, this, elementMetadata)) {
            visitChildren(elementVisitor, elementMetadata);
        }
        elementVisitor.visitComplete(element, this, elementMetadata);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void visitChildren(ElementVisitor elementVisitor, ElementMetadata<?, ?> elementMetadata) throws ElementVisitor.StoppedException {
        Iterator<Element> elementIterator = getElementIterator(elementMetadata);
        while (elementIterator.hasNext()) {
            Element next = elementIterator.next();
            next.visit(elementVisitor, this, elementMetadata == null ? null : elementMetadata.bindElement(next.getElementKey()));
        }
    }

    protected boolean sameClassAs(Object obj) {
        return obj != null && getClass().equals(obj.getClass());
    }

    protected static boolean eq(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static <E extends Element> E createElement(ElementKey<?, E> elementKey) throws ContentCreationException {
        return (E) createElement(elementKey, null);
    }

    public static <E extends Element> E createElement(ElementKey<?, E> elementKey, Element element) throws ContentCreationException {
        Class[] clsArr;
        Object[] objArr;
        Class[] clsArr2;
        Object[] objArr2;
        if (element != null && elementKey.equals(element.getElementKey()) && elementKey.getElementType().isInstance(element)) {
            return elementKey.getElementType().cast(element);
        }
        Class<? extends E> elementType = elementKey.getElementType();
        try {
            try {
                if (element != null) {
                    clsArr2 = new Class[]{ElementKey.class, element.getClass()};
                    objArr2 = new Object[]{elementKey, element};
                } else {
                    clsArr2 = new Class[]{ElementKey.class};
                    objArr2 = new Object[]{elementKey};
                }
                return (E) construct(elementType, clsArr2, objArr2);
            } catch (NoSuchMethodException e2) {
                try {
                    if (element != null) {
                        clsArr = new Class[]{element.getClass()};
                        objArr = new Object[]{element};
                    } else {
                        clsArr = new Class[0];
                        objArr = new Object[0];
                    }
                    return (E) construct(elementType, clsArr, objArr);
                } catch (NoSuchMethodException e3) {
                    throw new ContentCreationException("Constructor not found: " + elementType);
                }
            }
        } catch (IllegalAccessException e4) {
            throw new ContentCreationException("Constructor not found: " + elementType);
        } catch (InstantiationException e5) {
            throw new ContentCreationException("Constructor not found: " + elementType);
        } catch (InvocationTargetException e6) {
            throw new ContentCreationException("Constructor not found: " + elementType, e6.getCause());
        }
    }

    private static <T> T construct(Class<? extends T> cls, Class<?>[] clsArr, Object[] objArr) throws IllegalAccessException, NoSuchMethodException, InstantiationException, SecurityException, InvocationTargetException {
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            if (paramsValid(constructor.getParameterTypes(), clsArr)) {
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            }
        }
        return cls.getConstructor(clsArr).newInstance(objArr);
    }

    private static boolean paramsValid(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (clsArr.length != clsArr2.length) {
            return false;
        }
        for (int i = 0; i < clsArr.length; i++) {
            if (!clsArr[i].isAssignableFrom(clsArr2[i])) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return this.state.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof Element) {
            return this.state.equals(((Element) obj).state);
        }
        return false;
    }

    public String toString() {
        Objects.ToStringHelper stringHelper = Objects.toStringHelper(this);
        stringHelper.addValue(getElementId() + "@" + Integer.toHexString(hashCode()));
        Iterator<Attribute> attributeIterator = getAttributeIterator();
        while (attributeIterator.hasNext()) {
            Attribute next = attributeIterator.next();
            stringHelper.add(next.getAttributeKey().getId().toString(), next.getValue());
        }
        if (hasTextValue()) {
            stringHelper.addValue(getTextValue());
        }
        return stringHelper.toString();
    }
}
