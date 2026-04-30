package com.adobe.xmp.impl;

import com.adobe.xmp.XMPConst;
import com.adobe.xmp.XMPException;
import com.adobe.xmp.options.PropertyOptions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public class XMPNode implements Comparable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private boolean alias;
    private List children;
    private boolean hasAliases;
    private boolean hasValueChild;
    private boolean implicit;
    private String name;
    private PropertyOptions options;
    private XMPNode parent;
    private List qualifier;
    private String value;

    static {
        $assertionsDisabled = !XMPNode.class.desiredAssertionStatus();
    }

    public XMPNode(String str, String str2, PropertyOptions propertyOptions) {
        this.children = null;
        this.qualifier = null;
        this.options = null;
        this.name = str;
        this.value = str2;
        this.options = propertyOptions;
    }

    public XMPNode(String str, PropertyOptions propertyOptions) {
        this(str, null, propertyOptions);
    }

    public void clear() {
        this.options = null;
        this.name = null;
        this.value = null;
        this.children = null;
        this.qualifier = null;
    }

    public XMPNode getParent() {
        return this.parent;
    }

    public XMPNode getChild(int i) {
        return (XMPNode) getChildren().get(i - 1);
    }

    public void addChild(XMPNode xMPNode) throws XMPException {
        assertChildNotExisting(xMPNode.getName());
        xMPNode.setParent(this);
        getChildren().add(xMPNode);
    }

    public void addChild(int i, XMPNode xMPNode) throws XMPException {
        assertChildNotExisting(xMPNode.getName());
        xMPNode.setParent(this);
        getChildren().add(i - 1, xMPNode);
    }

    public void replaceChild(int i, XMPNode xMPNode) {
        xMPNode.setParent(this);
        getChildren().set(i - 1, xMPNode);
    }

    public void removeChild(int i) {
        getChildren().remove(i - 1);
        cleanupChildren();
    }

    public void removeChild(XMPNode xMPNode) {
        getChildren().remove(xMPNode);
        cleanupChildren();
    }

    protected void cleanupChildren() {
        if (this.children.isEmpty()) {
            this.children = null;
        }
    }

    public void removeChildren() {
        this.children = null;
    }

    public int getChildrenLength() {
        if (this.children != null) {
            return this.children.size();
        }
        return 0;
    }

    public XMPNode findChildByName(String str) {
        return find(getChildren(), str);
    }

    public XMPNode getQualifier(int i) {
        return (XMPNode) getQualifier().get(i - 1);
    }

    public int getQualifierLength() {
        if (this.qualifier != null) {
            return this.qualifier.size();
        }
        return 0;
    }

    public void addQualifier(XMPNode xMPNode) throws XMPException {
        assertQualifierNotExisting(xMPNode.getName());
        xMPNode.setParent(this);
        xMPNode.getOptions().setQualifier(true);
        getOptions().setHasQualifiers(true);
        if (xMPNode.isLanguageNode()) {
            this.options.setHasLanguage(true);
            getQualifier().add(0, xMPNode);
        } else if (xMPNode.isTypeNode()) {
            this.options.setHasType(true);
            getQualifier().add(this.options.getHasLanguage() ? 1 : 0, xMPNode);
        } else {
            getQualifier().add(xMPNode);
        }
    }

    public void removeQualifier(XMPNode xMPNode) {
        PropertyOptions options = getOptions();
        if (xMPNode.isLanguageNode()) {
            options.setHasLanguage(false);
        } else if (xMPNode.isTypeNode()) {
            options.setHasType(false);
        }
        getQualifier().remove(xMPNode);
        if (this.qualifier.isEmpty()) {
            options.setHasQualifiers(false);
            this.qualifier = null;
        }
    }

    public void removeQualifiers() {
        PropertyOptions options = getOptions();
        options.setHasQualifiers(false);
        options.setHasLanguage(false);
        options.setHasType(false);
        this.qualifier = null;
    }

    public XMPNode findQualifierByName(String str) {
        return find(this.qualifier, str);
    }

    public boolean hasChildren() {
        return this.children != null && this.children.size() > 0;
    }

    public Iterator iterateChildren() {
        return this.children != null ? getChildren().iterator() : Collections.EMPTY_LIST.listIterator();
    }

    public boolean hasQualifier() {
        return this.qualifier != null && this.qualifier.size() > 0;
    }

    public Iterator iterateQualifier() {
        if (this.qualifier == null) {
            return Collections.EMPTY_LIST.iterator();
        }
        final Iterator it = getQualifier().iterator();
        return new Iterator() { // from class: com.adobe.xmp.impl.XMPNode.1
            @Override // java.util.Iterator
            public boolean hasNext() {
                return it.hasNext();
            }

            @Override // java.util.Iterator
            public Object next() {
                return it.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("remove() is not allowed due to the internal contraints");
            }
        };
    }

    public Object clone() {
        PropertyOptions propertyOptions;
        try {
            propertyOptions = new PropertyOptions(getOptions().getOptions());
        } catch (XMPException e2) {
            propertyOptions = new PropertyOptions();
        }
        XMPNode xMPNode = new XMPNode(this.name, this.value, propertyOptions);
        cloneSubtree(xMPNode);
        return xMPNode;
    }

    public void cloneSubtree(XMPNode xMPNode) {
        try {
            Iterator itIterateChildren = iterateChildren();
            while (itIterateChildren.hasNext()) {
                xMPNode.addChild((XMPNode) ((XMPNode) itIterateChildren.next()).clone());
            }
            Iterator itIterateQualifier = iterateQualifier();
            while (itIterateQualifier.hasNext()) {
                xMPNode.addQualifier((XMPNode) ((XMPNode) itIterateQualifier.next()).clone());
            }
        } catch (XMPException e2) {
            if (!$assertionsDisabled) {
                throw new AssertionError();
            }
        }
    }

    public String dumpNode(boolean z) {
        StringBuffer stringBuffer = new StringBuffer(512);
        dumpNode(stringBuffer, z, 0, 0);
        return stringBuffer.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return getOptions().isSchemaNode() ? this.value.compareTo(((XMPNode) obj).getValue()) : this.name.compareTo(((XMPNode) obj).getName());
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public PropertyOptions getOptions() {
        if (this.options == null) {
            this.options = new PropertyOptions();
        }
        return this.options;
    }

    public void setOptions(PropertyOptions propertyOptions) {
        this.options = propertyOptions;
    }

    public boolean isImplicit() {
        return this.implicit;
    }

    public void setImplicit(boolean z) {
        this.implicit = z;
    }

    public boolean getHasAliases() {
        return this.hasAliases;
    }

    public void setHasAliases(boolean z) {
        this.hasAliases = z;
    }

    public boolean isAlias() {
        return this.alias;
    }

    public void setAlias(boolean z) {
        this.alias = z;
    }

    public boolean getHasValueChild() {
        return this.hasValueChild;
    }

    public void setHasValueChild(boolean z) {
        this.hasValueChild = z;
    }

    public void sort() {
        if (hasQualifier()) {
            XMPNode[] xMPNodeArr = (XMPNode[]) getQualifier().toArray(new XMPNode[getQualifierLength()]);
            int i = 0;
            while (xMPNodeArr.length > i && (XMPConst.XML_LANG.equals(xMPNodeArr[i].getName()) || XMPConst.RDF_TYPE.equals(xMPNodeArr[i].getName()))) {
                xMPNodeArr[i].sort();
                i++;
            }
            Arrays.sort(xMPNodeArr, i, xMPNodeArr.length);
            ListIterator listIterator = this.qualifier.listIterator();
            for (int i2 = 0; i2 < xMPNodeArr.length; i2++) {
                listIterator.next();
                listIterator.set(xMPNodeArr[i2]);
                xMPNodeArr[i2].sort();
            }
        }
        if (hasChildren()) {
            if (!getOptions().isArray()) {
                Collections.sort(this.children);
            }
            Iterator itIterateChildren = iterateChildren();
            while (itIterateChildren.hasNext()) {
                ((XMPNode) itIterateChildren.next()).sort();
            }
        }
    }

    private void dumpNode(StringBuffer stringBuffer, boolean z, int i, int i2) {
        for (int i3 = 0; i3 < i; i3++) {
            stringBuffer.append('\t');
        }
        if (this.parent != null) {
            if (getOptions().isQualifier()) {
                stringBuffer.append('?');
                stringBuffer.append(this.name);
            } else if (getParent().getOptions().isArray()) {
                stringBuffer.append('[');
                stringBuffer.append(i2);
                stringBuffer.append(']');
            } else {
                stringBuffer.append(this.name);
            }
        } else {
            stringBuffer.append("ROOT NODE");
            if (this.name != null && this.name.length() > 0) {
                stringBuffer.append(" (");
                stringBuffer.append(this.name);
                stringBuffer.append(')');
            }
        }
        if (this.value != null && this.value.length() > 0) {
            stringBuffer.append(" = \"");
            stringBuffer.append(this.value);
            stringBuffer.append('\"');
        }
        if (getOptions().containsOneOf(-1)) {
            stringBuffer.append("\t(");
            stringBuffer.append(getOptions().toString());
            stringBuffer.append(" : ");
            stringBuffer.append(getOptions().getOptionsString());
            stringBuffer.append(')');
        }
        stringBuffer.append('\n');
        if (z && hasQualifier()) {
            XMPNode[] xMPNodeArr = (XMPNode[]) getQualifier().toArray(new XMPNode[getQualifierLength()]);
            int i4 = 0;
            while (xMPNodeArr.length > i4 && (XMPConst.XML_LANG.equals(xMPNodeArr[i4].getName()) || XMPConst.RDF_TYPE.equals(xMPNodeArr[i4].getName()))) {
                i4++;
            }
            Arrays.sort(xMPNodeArr, i4, xMPNodeArr.length);
            for (int i5 = 0; i5 < xMPNodeArr.length; i5++) {
                xMPNodeArr[i5].dumpNode(stringBuffer, z, i + 2, i5 + 1);
            }
        }
        if (z && hasChildren()) {
            XMPNode[] xMPNodeArr2 = (XMPNode[]) getChildren().toArray(new XMPNode[getChildrenLength()]);
            if (!getOptions().isArray()) {
                Arrays.sort(xMPNodeArr2);
            }
            for (int i6 = 0; i6 < xMPNodeArr2.length; i6++) {
                xMPNodeArr2[i6].dumpNode(stringBuffer, z, i + 1, i6 + 1);
            }
        }
    }

    private boolean isLanguageNode() {
        return XMPConst.XML_LANG.equals(this.name);
    }

    private boolean isTypeNode() {
        return XMPConst.RDF_TYPE.equals(this.name);
    }

    private List getChildren() {
        if (this.children == null) {
            this.children = new ArrayList(0);
        }
        return this.children;
    }

    public List getUnmodifiableChildren() {
        return Collections.unmodifiableList(new ArrayList(getChildren()));
    }

    private List getQualifier() {
        if (this.qualifier == null) {
            this.qualifier = new ArrayList(0);
        }
        return this.qualifier;
    }

    protected void setParent(XMPNode xMPNode) {
        this.parent = xMPNode;
    }

    private XMPNode find(List list, String str) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                XMPNode xMPNode = (XMPNode) it.next();
                if (xMPNode.getName().equals(str)) {
                    return xMPNode;
                }
            }
        }
        return null;
    }

    private void assertChildNotExisting(String str) throws XMPException {
        if (!XMPConst.ARRAY_ITEM_NAME.equals(str) && findChildByName(str) != null) {
            throw new XMPException("Duplicate property or field node '" + str + "'", 203);
        }
    }

    private void assertQualifierNotExisting(String str) throws XMPException {
        if (!XMPConst.ARRAY_ITEM_NAME.equals(str) && findQualifierByName(str) != null) {
            throw new XMPException("Duplicate '" + str + "' qualifier", 203);
        }
    }
}
