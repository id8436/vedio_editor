package com.adobe.premiereclip.prexport.fcpxml;

import com.google.gdata.data.analytics.Engagement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class XmlElement {
    private HashMap<String, String> mAttributes;
    private ArrayList<XmlElement> mChildren;
    private String mName;
    private String mValue;

    public XmlElement() {
        this.mChildren = new ArrayList<>();
        this.mAttributes = new HashMap<>();
        this.mName = "";
        this.mValue = "";
    }

    public XmlElement(String str) {
        this.mChildren = new ArrayList<>();
        this.mAttributes = new HashMap<>();
        this.mName = str;
        this.mValue = "";
    }

    public XmlElement(String str, String str2) {
        this.mChildren = new ArrayList<>();
        this.mAttributes = new HashMap<>();
        this.mName = str;
        this.mValue = str2;
    }

    public String getName() {
        return this.mName;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public String getValue() {
        return this.mValue;
    }

    public void setValue(String str) {
        this.mValue = str;
    }

    public void addChild(XmlElement xmlElement) {
        this.mChildren.add(xmlElement);
    }

    public XmlElement getChild(String str) {
        if (this.mChildren.size() <= 0) {
            return null;
        }
        for (XmlElement xmlElement : this.mChildren) {
            if (xmlElement.getName().equals(str)) {
                return xmlElement;
            }
        }
        return null;
    }

    public XmlElement getLastChild(String str) {
        if (this.mChildren.size() <= 0) {
            return null;
        }
        ListIterator<XmlElement> listIterator = this.mChildren.listIterator(this.mChildren.size());
        while (listIterator.hasPrevious()) {
            XmlElement xmlElementPrevious = listIterator.previous();
            if (xmlElementPrevious.getName().equals(str)) {
                return xmlElementPrevious;
            }
        }
        return null;
    }

    public void setAttribute(String str, String str2) {
        this.mAttributes.put(str, str2);
    }

    public String toString(String str, String str2, int i) {
        String str3;
        String str4;
        String str5;
        if (this.mName == null) {
            this.mName = "";
        }
        if (this.mValue == null) {
            this.mValue = "";
        }
        if (str2.equals("")) {
            str2 = "";
        }
        if (!str.equals("")) {
            String str6 = "";
            int i2 = 0;
            while (i2 < i) {
                i2++;
                str6 = str6 + str;
            }
            str3 = str6;
        } else {
            str3 = "";
        }
        String str7 = !this.mName.equals("") ? "" + str3 + Engagement.Comparison.LT + this.mName : "";
        Iterator<Map.Entry<String, String>> it = this.mAttributes.entrySet().iterator();
        while (true) {
            str4 = str7;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, String> next = it.next();
            str7 = str4 + " " + next.getKey() + "=\"" + next.getValue() + "\"";
        }
        if (!this.mName.equals("") && this.mValue.equals("") && this.mChildren.size() == 0) {
            return str4 + "/>" + str2;
        }
        if (!this.mName.equals("")) {
            str4 = str4 + Engagement.Comparison.GT;
        }
        String str8 = str4 + this.mValue;
        if (this.mChildren.size() > 0) {
            str8 = str8 + str2;
        }
        Iterator<XmlElement> it2 = this.mChildren.iterator();
        while (true) {
            str5 = str8;
            if (!it2.hasNext()) {
                break;
            }
            str8 = str5 + it2.next().toString(str, str2, i + 1);
        }
        if (this.mChildren.size() > 0) {
            str5 = str5 + str3;
        }
        if (!this.mName.equals("")) {
            str5 = str5 + "</" + this.mName + Engagement.Comparison.GT;
        }
        return str5 + str2;
    }

    public String toString() {
        return toString("", "", -1);
    }

    public static String convertBooltoString(boolean z) {
        return z ? "TRUE" : "FALSE";
    }

    private String escapeString(String str) {
        return str.replaceAll("&", "&amp;").replaceAll("'", "&apos;").replaceAll("\"", "&quot;").replaceAll(Engagement.Comparison.LT, "&lt;").replaceAll(Engagement.Comparison.GT, "&gt");
    }
}
