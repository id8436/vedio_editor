.class public Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;
.super Ljava/lang/Object;
.source "FileCredentialStore.java"

# interfaces
.implements Lcom/google/api/client/auth/oauth2/CredentialStore;


# instance fields
.field private credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

.field private final file:Ljava/io/File;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/google/api/client/json/JsonFactory;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    .line 46
    new-instance v0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-direct {v0}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    .line 56
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->file:Ljava/io/File;

    .line 57
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unable to create parent directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-direct {p0, p1}, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->loadCredentials(Ljava/io/File;)V

    .line 77
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/io/File;->setReadable(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/io/File;->setWritable(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unable to set file permissions"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    invoke-direct {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->save()V

    goto :goto_0
.end method

.method private loadCredentials(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    const-class v2, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/JsonFactory;->fromInputStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method private save()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->file:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v0

    .line 124
    iget-object v2, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-virtual {v0, v2}, Lcom/google/api/client/json/JsonGenerator;->serialize(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v0}, Lcom/google/api/client/json/JsonGenerator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 129
    return-void

    .line 127
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-virtual {v0, p1}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;->delete(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public load(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-virtual {v0, p1, p2}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;->load(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public store(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-virtual {v0, p1, p2}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;->store(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 84
    invoke-direct {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
