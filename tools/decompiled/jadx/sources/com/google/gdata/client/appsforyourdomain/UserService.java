package com.google.gdata.client.appsforyourdomain;

import com.google.gdata.data.appsforyourdomain.provisioning.UserFeed;

/* JADX INFO: loaded from: classes3.dex */
public class UserService extends AppsForYourDomainService {
    public UserService(String str) {
        super(str, "https", AppsForYourDomainService.DOMAIN_NAME);
        new UserFeed().declareExtensions(getExtensionProfile());
    }
}
