package com.google.gdata.data;

import com.adobe.xmp.XMPConst;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.codesearch.Package;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Person extends ExtensionPoint implements IPerson {
    protected String email;
    protected String name;
    protected String nameLang;
    protected String uri;

    public Person() {
    }

    public Person(String str) {
        if (str == null) {
            throw new NullPointerException("Name must have a value");
        }
        this.name = str;
    }

    public Person(String str, String str2, String str3) {
        this(str);
        this.uri = str2;
        this.email = str3;
    }

    @Override // com.google.gdata.data.IPerson
    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override // com.google.gdata.data.IPerson
    public String getNameLang() {
        return this.nameLang;
    }

    public void setNameLang(String str) {
        this.nameLang = str;
    }

    @Override // com.google.gdata.data.IPerson
    public String getUri() {
        return this.uri;
    }

    public void setUri(String str) {
        this.uri = str;
    }

    @Override // com.google.gdata.data.IPerson
    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void generate(ExtensionProfile extensionProfile, XmlWriter xmlWriter, XmlNamespace xmlNamespace, String str, Collection<XmlWriter.Attribute> collection) throws IOException {
        ArrayList arrayList;
        generateStartElement(xmlWriter, xmlNamespace, str, collection, null);
        if (this.name != null && this.name.trim().length() > 0) {
            if (this.nameLang != null) {
                arrayList = new ArrayList(1);
                arrayList.add(new XmlWriter.Attribute(XMPConst.XML_LANG, this.nameLang));
            } else {
                arrayList = null;
            }
            xmlWriter.simpleElement(Namespaces.atomNs, "name", arrayList, this.name);
        }
        if (this.uri != null && this.uri.trim().length() > 0) {
            xmlWriter.simpleElement(Namespaces.atomNs, Package.ATTRIBUTE_URI, null, this.uri);
        }
        if (this.email != null && this.email.trim().length() > 0) {
            xmlWriter.simpleElement(Namespaces.atomNs, "email", null, this.email);
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(xmlNamespace, str);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension
    protected void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile, XmlNamespace xmlNamespace, String str, List<XmlWriter.Attribute> list, AttributeGenerator attributeGenerator) throws IOException {
        generate(extensionProfile, xmlWriter, xmlNamespace, str, list);
    }

    public void generateAtom(ExtensionProfile extensionProfile, XmlWriter xmlWriter, String str) throws IOException {
        generate(extensionProfile, xmlWriter, Namespaces.atomNs, str, null);
    }

    public void generateRss(XmlWriter xmlWriter, String str) throws IOException {
        String str2 = new String();
        if (this.email != null) {
            str2 = str2 + this.email;
        }
        if (this.name != null) {
            if (this.email != null) {
                str2 = str2 + " (";
            }
            str2 = str2 + this.name;
            if (this.email != null) {
                str2 = str2 + ")";
            }
        }
        xmlWriter.simpleElement(Namespaces.rssNs, str, null, str2);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new AtomHandler(extensionProfile);
    }

    public class AtomHandler extends ExtensionPoint.ExtensionHandler {
        public AtomHandler(ExtensionProfile extensionProfile) {
            super(Person.this, extensionProfile, Person.this.getClass());
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (str.equals(Namespaces.atom)) {
                if (str2.equals("name")) {
                    return new NameHandler();
                }
                if (str2.equals(Package.ATTRIBUTE_URI)) {
                    return new UriHandler();
                }
                if (str2.equals("email")) {
                    return new EmailHandler();
                }
                return null;
            }
            return super.getChildHandler(str, str2, attributes);
        }

        class NameHandler extends XmlParser.ElementHandler {
            NameHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (Person.this.name != null) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateName);
                }
                if (this.value == null) {
                    throw new ParseException(CoreErrorDomain.ERR.nameValueRequired);
                }
                Person.this.name = this.value;
                Person.this.nameLang = this.xmlLang;
            }
        }

        class UriHandler extends XmlParser.ElementHandler {
            UriHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (Person.this.uri != null) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateUri);
                }
                if (this.value == null) {
                    throw new ParseException(CoreErrorDomain.ERR.uriValueRequired);
                }
                Person.this.uri = this.value;
            }
        }

        class EmailHandler extends XmlParser.ElementHandler {
            EmailHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (Person.this.email != null) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateEmail);
                }
                if (this.value == null) {
                    throw new ParseException(CoreErrorDomain.ERR.emailValueRequired);
                }
                Person.this.email = this.value;
            }
        }
    }
}
