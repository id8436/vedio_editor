package com.google.gdata.client.appsforyourdomain;

import com.google.gdata.client.Query;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AppsForYourDomainQuery extends Query {
    public static final String RECIPIENT = "recipient";
    public static final String START_EMAILLIST_NAME = "startEmailListName";
    public static final String START_NICKNAME = "startNickname";
    public static final String START_RECIPIENT = "startRecipient";
    public static final String START_USERNAME = "startUsername";
    public static final String USERNAME = "username";

    public AppsForYourDomainQuery(URL url) {
        super(url);
    }

    public void setUsername(String str) {
        setParameter(USERNAME, str);
    }

    public String getUsername() {
        return getParameter(USERNAME);
    }

    public void setRecipient(String str) {
        setParameter(RECIPIENT, str);
    }

    public String getRecipient() {
        return getParameter(RECIPIENT);
    }

    public void setStartUsername(String str) {
        setParameter(START_USERNAME, str);
    }

    public String getStartUsername() {
        return getParameter(START_USERNAME);
    }

    public void setStartEmailListName(String str) {
        setParameter(START_EMAILLIST_NAME, str);
    }

    public String getStartEmailListName() {
        return getParameter(START_EMAILLIST_NAME);
    }

    public void setStartNickname(String str) {
        setParameter(START_NICKNAME, str);
    }

    public String getStartNickname() {
        return getParameter(START_NICKNAME);
    }

    public void setStartRecipient(String str) {
        setParameter(START_RECIPIENT, str);
    }

    public String getStartRecipient() {
        return getParameter(START_RECIPIENT);
    }

    protected void setParameter(String str, String str2) {
        List<Query.CustomParameter> customParameters = getCustomParameters();
        Iterator<Query.CustomParameter> it = getCustomParameters(str).iterator();
        while (it.hasNext()) {
            customParameters.remove(it.next());
        }
        if (str2 != null) {
            customParameters.add(new Query.CustomParameter(str, str2));
        }
    }

    protected String getParameter(String str) {
        List<Query.CustomParameter> customParameters = getCustomParameters(str);
        if (customParameters.size() > 0) {
            return customParameters.get(0).getValue();
        }
        return null;
    }
}
