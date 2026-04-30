package com.google.api.client.extensions.java6.auth.oauth2;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.auth.oauth2.CredentialStore;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonGenerator;
import com.google.common.base.Charsets;
import com.google.common.base.Preconditions;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
public class FileCredentialStore implements CredentialStore {
    private final File file;
    private final JsonFactory jsonFactory;
    private final Lock lock = new ReentrantLock();
    private FilePersistedCredentials credentials = new FilePersistedCredentials();

    public FileCredentialStore(File file, JsonFactory jsonFactory) throws IOException {
        this.file = (File) Preconditions.checkNotNull(file);
        this.jsonFactory = (JsonFactory) Preconditions.checkNotNull(jsonFactory);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("unable to create parent directory");
        }
        if (!file.createNewFile()) {
            loadCredentials(file);
            return;
        }
        if (!file.setReadable(false, false) || !file.setWritable(false, false) || !file.setExecutable(false, false) || !file.setReadable(true) || !file.setWritable(true)) {
            throw new IOException("unable to set file permissions");
        }
        save();
    }

    @Override // com.google.api.client.auth.oauth2.CredentialStore
    public void store(String str, Credential credential) throws IOException {
        this.lock.lock();
        try {
            this.credentials.store(str, credential);
            save();
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.auth.oauth2.CredentialStore
    public void delete(String str, Credential credential) throws IOException {
        this.lock.lock();
        try {
            this.credentials.delete(str);
            save();
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.auth.oauth2.CredentialStore
    public boolean load(String str, Credential credential) {
        this.lock.lock();
        try {
            return this.credentials.load(str, credential);
        } finally {
            this.lock.unlock();
        }
    }

    private void loadCredentials(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            this.credentials = (FilePersistedCredentials) this.jsonFactory.fromInputStream(fileInputStream, FilePersistedCredentials.class);
        } finally {
            fileInputStream.close();
        }
    }

    private void save() throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(this.file);
        try {
            JsonGenerator jsonGeneratorCreateJsonGenerator = this.jsonFactory.createJsonGenerator(fileOutputStream, Charsets.UTF_8);
            jsonGeneratorCreateJsonGenerator.serialize(this.credentials);
            jsonGeneratorCreateJsonGenerator.close();
        } finally {
            fileOutputStream.close();
        }
    }
}
