.class public Lorg/mortbay/resource/JarResource;
.super Lorg/mortbay/resource/URLResource;
.source "JarResource.java"


# instance fields
.field protected transient _jarConnection:Ljava/net/JarURLConnection;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mortbay/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 42
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Z)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/mortbay/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V

    .line 48
    return-void
.end method

.method public static extract(Lorg/mortbay/resource/Resource;Ljava/io/File;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Extract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 127
    const-string/jumbo v0, "!/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 128
    if-ltz v2, :cond_1

    const/4 v0, 0x4

    .line 130
    :goto_0
    if-gez v2, :cond_2

    .line 131
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Not a valid jar url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_2
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 134
    add-int/lit8 v0, v2, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    add-int/lit8 v0, v2, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 135
    :goto_1
    if-eqz v3, :cond_6

    const-string/jumbo v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 137
    :goto_2
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Extracting entry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " from jar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 139
    :cond_3
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 140
    new-instance v4, Ljava/util/jar/JarInputStream;

    invoke-direct {v4, v1}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 143
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 144
    :cond_4
    :goto_3
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 146
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 147
    if-eqz v3, :cond_9

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 151
    if-eqz v0, :cond_8

    .line 157
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 161
    const/4 v2, 0x1

    .line 182
    :goto_4
    if-nez v2, :cond_b

    .line 184
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Skipping entry: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 134
    :cond_5
    const/4 v0, 0x0

    move-object v3, v0

    goto/16 :goto_1

    .line 135
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 164
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 167
    :cond_8
    const/4 v2, 0x1

    goto :goto_4

    .line 169
    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 173
    const/4 v2, 0x0

    goto :goto_4

    .line 178
    :cond_a
    const/4 v2, 0x1

    goto :goto_4

    .line 188
    :cond_b
    const/16 v2, 0x5c

    const/16 v6, 0x2f

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v2}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    if-nez v2, :cond_c

    .line 192
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Invalid entry: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 196
    :cond_c
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 201
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 202
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 227
    :cond_d
    :goto_5
    if-eqz p2, :cond_4

    .line 228
    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V

    goto/16 :goto_3

    .line 207
    :cond_e
    new-instance v1, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 212
    :cond_f
    const/4 v2, 0x0

    .line 215
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :try_start_1
    invoke-static {v4, v1}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    invoke-static {v1}, Lorg/mortbay/util/IO;->close(Ljava/io/OutputStream;)V

    .line 224
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-ltz v1, :cond_d

    .line 225
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_5

    .line 220
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    invoke-static {v1}, Lorg/mortbay/util/IO;->close(Ljava/io/OutputStream;)V

    throw v0

    .line 231
    :cond_10
    if-eqz v3, :cond_11

    if-eqz v3, :cond_12

    const-string/jumbo v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 233
    :cond_11
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_12

    .line 236
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "META-INF"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 238
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "MANIFEST.MF"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 241
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 244
    :cond_12
    invoke-static {v4}, Lorg/mortbay/util/IO;->close(Ljava/io/InputStream;)V

    .line 245
    return-void

    .line 220
    :catchall_1
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method protected checkConnection()Z
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lorg/mortbay/resource/URLResource;->checkConnection()Z

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    iget-object v1, p0, Lorg/mortbay/resource/JarResource;->_connection:Ljava/net/URLConnection;

    if-eq v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/mortbay/resource/JarResource;->newConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/mortbay/resource/JarResource;->_urlString:Ljava/lang/String;

    const-string/jumbo v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/mortbay/resource/JarResource;->checkConnection()Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/mortbay/resource/URLResource;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public extract(Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p0, p1, p2}, Lorg/mortbay/resource/JarResource;->extract(Lorg/mortbay/resource/Resource;Ljava/io/File;Z)V

    .line 252
    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/mortbay/resource/JarResource;->checkConnection()Z

    .line 108
    iget-object v0, p0, Lorg/mortbay/resource/JarResource;->_urlString:Ljava/lang/String;

    const-string/jumbo v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lorg/mortbay/resource/JarResource$1;

    invoke-super {p0}, Lorg/mortbay/resource/URLResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/mortbay/resource/JarResource$1;-><init>(Lorg/mortbay/resource/JarResource;Ljava/io/InputStream;)V

    .line 116
    :goto_0
    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/mortbay/resource/JarResource;->_urlString:Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/mortbay/resource/JarResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method protected newConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/mortbay/resource/JarResource;->_connection:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/JarURLConnection;

    iput-object v0, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    .line 82
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    .line 54
    invoke-super {p0}, Lorg/mortbay/resource/URLResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
