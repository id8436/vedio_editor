package com.google.gdata.data.webmastertools;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = VerificationMethod.METHOD_NODE, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
public class VerificationMethod extends AbstractExtension {
    private static final String FILECONTENT = "file-content";
    private static final String INUSE = "in-use";
    private static final String METHODTYPE = "type";
    public static final String METHOD_NODE = "verification-method";
    private String fileContent;
    private boolean inUse;
    private MethodType methodType;
    private String value;

    /* JADX INFO: loaded from: classes3.dex */
    public enum MethodType {
        METATAG,
        HTMLPAGE
    }

    public static boolean matchesNode(String str) {
        return str.equals(METHOD_NODE);
    }

    public VerificationMethod() {
        super(Namespaces.WT_NAMESPACE, METHOD_NODE);
        this.methodType = MethodType.METATAG;
        this.inUse = false;
        this.fileContent = "";
        this.value = "";
    }

    public boolean equals(Object obj) {
        if (!sameClassAs(obj)) {
            return false;
        }
        VerificationMethod verificationMethod = (VerificationMethod) obj;
        return this.methodType.equals(verificationMethod.methodType) && this.inUse == verificationMethod.inUse && this.fileContent.equals(verificationMethod.fileContent) && this.value.equals(verificationMethod.value);
    }

    public int hashCode() {
        return this.methodType.hashCode();
    }

    public void setMethodType(MethodType methodType) {
        this.methodType = methodType;
    }

    public MethodType getMethodType() {
        return this.methodType;
    }

    public void setInUse(boolean z) {
        this.inUse = z;
    }

    public boolean getInUse() {
        return this.inUse;
    }

    public void setFileContent(String str) {
        this.fileContent = str;
    }

    public String getFileContent() {
        return this.fileContent;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public String getValue() {
        return this.value;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("type", this.methodType.toString().toLowerCase());
        attributeGenerator.put(INUSE, this.inUse);
        attributeGenerator.put(FILECONTENT, this.fileContent);
        attributeGenerator.setContent(this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.methodType = (MethodType) attributeHelper.consumeEnum("type", true, MethodType.class, MethodType.METATAG);
        this.inUse = attributeHelper.consumeBoolean(INUSE, true);
        this.fileContent = attributeHelper.consume(FILECONTENT, false);
        String strConsumeContent = attributeHelper.consumeContent(false);
        if (strConsumeContent != null) {
            this.value = strConsumeContent;
        }
    }
}
