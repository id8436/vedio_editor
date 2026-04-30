package com.google.gdata.util;

import com.adobe.xmp.XMPConst;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class XmlBlob {
    static final /* synthetic */ boolean $assertionsDisabled;
    protected String base;
    protected String blob;
    protected String fullText;
    protected String lang;
    protected LinkedList<XmlNamespace> namespaces = new LinkedList<>();

    static {
        $assertionsDisabled = !XmlBlob.class.desiredAssertionStatus();
    }

    public String getLang() {
        return this.lang;
    }

    public void setLang(String str) {
        this.lang = str;
    }

    public String getBase() {
        return this.base;
    }

    public void setBase(String str) {
        this.base = str;
    }

    public List<XmlNamespace> getNamespaces() {
        return this.namespaces;
    }

    public boolean addNamespace(XmlNamespace xmlNamespace) {
        return this.namespaces.add(xmlNamespace);
    }

    public String getBlob() {
        return this.blob;
    }

    public void setBlob(String str) {
        this.blob = str;
    }

    public String getFullText() {
        return this.fullText;
    }

    public void setFullText(String str) {
        this.fullText = str;
    }

    public static void startElement(XmlWriter xmlWriter, XmlNamespace xmlNamespace, String str, XmlBlob xmlBlob, Collection<XmlWriter.Attribute> collection, Collection<XmlNamespace> collection2) throws IOException {
        Collection<XmlNamespace> collection3;
        if (xmlBlob != null) {
            String lang = xmlBlob.getLang();
            String base = xmlBlob.getBase();
            if (lang != null || base != null) {
                ArrayList arrayList = new ArrayList();
                if (collection != null) {
                    arrayList.addAll(collection);
                }
                if (lang != null) {
                    arrayList.add(new XmlWriter.Attribute(XMPConst.XML_LANG, lang));
                }
                if (base != null) {
                    arrayList.add(new XmlWriter.Attribute("xml:base", base));
                    collection = arrayList;
                } else {
                    collection = arrayList;
                }
            } else if (!$assertionsDisabled && (lang != null || base != null)) {
                throw new AssertionError();
            }
            List<XmlNamespace> namespaces = xmlBlob.getNamespaces();
            int size = collection2 == null ? 0 : collection2.size();
            if (namespaces.size() == 0 && size == 0) {
                collection3 = null;
            } else {
                ArrayList arrayList2 = new ArrayList(size + namespaces.size());
                for (XmlNamespace xmlNamespace2 : namespaces) {
                    arrayList2.add(new XmlNamespace(xmlNamespace2.getAlias(), xmlNamespace2.getUri()));
                }
                if (collection2 != null) {
                    arrayList2.addAll(collection2);
                }
                collection3 = arrayList2;
            }
        } else {
            if (!$assertionsDisabled && xmlBlob != null) {
                throw new AssertionError();
            }
            collection3 = collection2;
        }
        xmlWriter.startElement(xmlNamespace, str, collection, collection3);
    }

    public static void endElement(XmlWriter xmlWriter, XmlNamespace xmlNamespace, String str, XmlBlob xmlBlob) throws IOException {
        if (xmlBlob != null && xmlBlob.getBlob() != null) {
            xmlWriter.innerXml(xmlBlob.getBlob());
        }
        xmlWriter.endElement(xmlNamespace, str);
    }
}
