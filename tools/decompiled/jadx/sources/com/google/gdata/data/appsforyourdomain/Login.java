package com.google.gdata.data.appsforyourdomain;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.base.StringUtil;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Login extends ExtensionPoint implements Extension {
    public static final String ATTRIBUTE_ADMIN = "admin";
    public static final String ATTRIBUTE_AGREED_TO_TERMS = "agreedToTerms";
    public static final String ATTRIBUTE_CHANGE_PASSWORD_AT_NEXT_LOGIN = "changePasswordAtNextLogin";
    public static final String ATTRIBUTE_HASH_FUNCTION_NAME = "hashFunctionName";
    public static final String ATTRIBUTE_IPWHITELISTED = "ipWhitelisted";
    public static final String ATTRIBUTE_PASSWORD = "password";
    public static final String ATTRIBUTE_SUSPENDED = "suspended";
    public static final String ATTRIBUTE_USER_NAME = "userName";
    public static final String EXTENSION_LOCAL_NAME = "login";
    protected String password;
    protected String userName;
    protected Boolean suspended = null;
    protected Boolean ipWhitelisted = null;
    protected String hashFunctionName = null;
    protected Boolean admin = null;
    protected Boolean agreedToTerms = null;
    protected Boolean changePasswordAtNextLogin = null;

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public Boolean getSuspended() {
        return this.suspended;
    }

    public void setSuspended(Boolean bool) {
        this.suspended = bool;
    }

    public Boolean getIpWhitelisted() {
        return this.ipWhitelisted;
    }

    public void setIpWhitelisted(Boolean bool) {
        this.ipWhitelisted = bool;
    }

    public String getHashFunctionName() {
        return this.hashFunctionName;
    }

    public void setHashFunctionName(String str) {
        this.hashFunctionName = str;
    }

    public Boolean getAdmin() {
        return this.admin;
    }

    public void setAdmin(Boolean bool) {
        this.admin = bool;
    }

    public Boolean getAgreedToTerms() {
        return this.agreedToTerms;
    }

    public void setAgreedToTerms(Boolean bool) {
        this.agreedToTerms = bool;
    }

    public Boolean getChangePasswordAtNextLogin() {
        return this.changePasswordAtNextLogin;
    }

    public void setChangePasswordAtNextLogin(Boolean bool) {
        this.changePasswordAtNextLogin = bool;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Login.class);
        extensionDescription.setNamespace(Namespaces.APPS_NAMESPACE);
        extensionDescription.setLocalName(EXTENSION_LOCAL_NAME);
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.userName != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_USER_NAME, this.userName));
        }
        if (this.password != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_PASSWORD, this.password));
        }
        if (this.suspended != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_SUSPENDED, this.suspended.booleanValue()));
        }
        if (this.ipWhitelisted != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_IPWHITELISTED, this.ipWhitelisted.booleanValue()));
        }
        if (!StringUtil.isEmptyOrWhitespace(this.hashFunctionName)) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_HASH_FUNCTION_NAME, this.hashFunctionName));
        }
        if (this.admin != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_ADMIN, this.admin.booleanValue()));
        }
        if (this.changePasswordAtNextLogin != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_CHANGE_PASSWORD_AT_NEXT_LOGIN, this.changePasswordAtNextLogin.booleanValue()));
        }
        if (this.agreedToTerms != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_AGREED_TO_TERMS, this.agreedToTerms.booleanValue()));
        }
        generateStartElement(xmlWriter, Namespaces.APPS_NAMESPACE, EXTENSION_LOCAL_NAME, arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.APPS_NAMESPACE, EXTENSION_LOCAL_NAME);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException {
        return new Handler(extensionProfile, attributes);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile, Attributes attributes) throws ParseException {
            super(Login.this, extensionProfile, Login.class);
            Login.this.ipWhitelisted = getBooleanAttribute(attributes, Login.ATTRIBUTE_IPWHITELISTED);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if ("".equals(str)) {
                if (Login.ATTRIBUTE_USER_NAME.equals(str2)) {
                    Login.this.userName = str3;
                    return;
                }
                if (Login.ATTRIBUTE_PASSWORD.equals(str2)) {
                    Login.this.password = str3;
                    return;
                }
                if (Login.ATTRIBUTE_HASH_FUNCTION_NAME.equals(str2)) {
                    Login.this.hashFunctionName = str3;
                    return;
                }
                if (Login.ATTRIBUTE_SUSPENDED.equals(str2)) {
                    if (str3.trim().equalsIgnoreCase("true")) {
                        Login.this.suspended = true;
                        return;
                    } else {
                        if (str3.trim().equalsIgnoreCase("false")) {
                            Login.this.suspended = false;
                            return;
                        }
                        return;
                    }
                }
                if (Login.ATTRIBUTE_ADMIN.equals(str2)) {
                    if (str3.trim().equalsIgnoreCase("true")) {
                        Login.this.admin = true;
                        return;
                    } else {
                        if (str3.trim().equalsIgnoreCase("false")) {
                            Login.this.admin = false;
                            return;
                        }
                        return;
                    }
                }
                if (Login.ATTRIBUTE_AGREED_TO_TERMS.equals(str2)) {
                    if (str3.trim().equalsIgnoreCase("true")) {
                        Login.this.agreedToTerms = true;
                        return;
                    } else {
                        if (str3.trim().equalsIgnoreCase("false")) {
                            Login.this.agreedToTerms = false;
                            return;
                        }
                        return;
                    }
                }
                if (Login.ATTRIBUTE_CHANGE_PASSWORD_AT_NEXT_LOGIN.equals(str2)) {
                    if (str3.trim().equalsIgnoreCase("true")) {
                        Login.this.changePasswordAtNextLogin = true;
                    } else if (str3.trim().equalsIgnoreCase("false")) {
                        Login.this.changePasswordAtNextLogin = false;
                    }
                }
            }
        }
    }
}
