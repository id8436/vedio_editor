package com.google.api.client.extensions.java6.auth.oauth2;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FilePersistedCredentials extends GenericJson {

    @Key
    private Map<String, FilePersistedCredential> credentials = Maps.newHashMap();

    void store(String str, Credential credential) {
        Preconditions.checkNotNull(str);
        FilePersistedCredential filePersistedCredential = this.credentials.get(str);
        if (filePersistedCredential == null) {
            filePersistedCredential = new FilePersistedCredential();
            this.credentials.put(str, filePersistedCredential);
        }
        filePersistedCredential.store(credential);
    }

    boolean load(String str, Credential credential) {
        Preconditions.checkNotNull(str);
        FilePersistedCredential filePersistedCredential = this.credentials.get(str);
        if (filePersistedCredential == null) {
            return false;
        }
        filePersistedCredential.load(credential);
        return true;
    }

    void delete(String str) {
        Preconditions.checkNotNull(str);
        this.credentials.remove(str);
    }
}
