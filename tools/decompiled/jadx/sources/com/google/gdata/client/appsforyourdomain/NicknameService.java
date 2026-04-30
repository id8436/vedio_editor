package com.google.gdata.client.appsforyourdomain;

import com.google.gdata.data.appsforyourdomain.provisioning.NicknameFeed;

/* JADX INFO: loaded from: classes3.dex */
public class NicknameService extends AppsForYourDomainService {
    public NicknameService(String str) {
        super(str, "https", AppsForYourDomainService.DOMAIN_NAME);
        new NicknameFeed().declareExtensions(getExtensionProfile());
    }
}
