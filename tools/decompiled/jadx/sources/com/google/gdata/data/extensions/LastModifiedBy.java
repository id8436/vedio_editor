package com.google.gdata.data.extensions;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Person;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = LastModifiedBy.XML_NAME, nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class LastModifiedBy extends Person {
    static final String XML_NAME = "lastModifiedBy";

    public LastModifiedBy() {
    }

    public LastModifiedBy(Person person) {
        super(person.getName(), person.getUri(), person.getEmail());
    }

    @Override // com.google.gdata.data.Person, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension
    protected void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile, XmlNamespace xmlNamespace, String str, List<XmlWriter.Attribute> list, AttributeGenerator attributeGenerator) throws IOException {
        generate(extensionProfile, xmlWriter, xmlNamespace, str, list);
    }
}
