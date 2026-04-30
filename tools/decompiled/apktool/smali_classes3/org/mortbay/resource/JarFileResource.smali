.class Lorg/mortbay/resource/JarFileResource;
.super Lorg/mortbay/resource/JarResource;
.source "JarFileResource.java"


# instance fields
.field transient _directory:Z

.field transient _entry:Ljava/util/jar/JarEntry;

.field transient _exists:Z

.field transient _file:Ljava/io/File;

.field transient _jarFile:Ljava/util/jar/JarFile;

.field transient _jarUrl:Ljava/lang/String;

.field transient _list:[Ljava/lang/String;

.field transient _path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/mortbay/resource/JarResource;-><init>(Ljava/net/URL;)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/mortbay/resource/JarResource;-><init>(Ljava/net/URL;Z)V

    .line 50
    return-void
.end method

.method public static getNonCachingResource(Lorg/mortbay/resource/Resource;)Lorg/mortbay/resource/Resource;
    .locals 3

    .prologue
    .line 313
    instance-of v0, p0, Lorg/mortbay/resource/JarFileResource;

    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-object p0

    .line 316
    :cond_0
    check-cast p0, Lorg/mortbay/resource/JarFileResource;

    .line 318
    new-instance v0, Lorg/mortbay/resource/JarFileResource;

    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->getURL()Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mortbay/resource/JarFileResource;-><init>(Ljava/net/URL;Z)V

    move-object p0, v0

    .line 319
    goto :goto_0
.end method


# virtual methods
.method protected checkConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    :try_start_0
    invoke-super {p0}, Lorg/mortbay/resource/JarResource;->checkConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v0, :cond_0

    .line 73
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 74
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    .line 75
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 76
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 71
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v1, :cond_1

    .line 73
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 74
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    .line 75
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 76
    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 71
    :cond_1
    throw v0

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 301
    return-object p1
.end method

.method public exists()Z
    .locals 7

    .prologue
    const/16 v6, 0x2f

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 110
    iget-boolean v0, p0, Lorg/mortbay/resource/JarFileResource;->_exists:Z

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return v2

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string/jumbo v3, "!/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 117
    :try_start_0
    invoke-static {v0}, Lorg/mortbay/resource/JarFileResource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    move v2, v1

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->checkConnection()Z

    move-result v0

    .line 124
    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 127
    iput-boolean v0, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    goto :goto_0

    .line 133
    :cond_2
    const/4 v3, 0x0

    .line 134
    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 153
    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    if-nez v3, :cond_4

    .line 156
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 157
    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 160
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 163
    iget-object v5, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 165
    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 167
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    .line 187
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-eqz v0, :cond_9

    :cond_5
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lorg/mortbay/resource/JarFileResource;->_exists:Z

    .line 188
    iget-boolean v2, p0, Lorg/mortbay/resource/JarFileResource;->_exists:Z

    goto/16 :goto_0

    .line 142
    :cond_6
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lorg/mortbay/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    check-cast v0, Ljava/net/JarURLConnection;

    .line 143
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->getUseCaches()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 144
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 146
    :catch_1
    move-exception v0

    .line 148
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_1

    .line 170
    :cond_7
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iput-boolean v2, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    goto :goto_2

    .line 178
    :cond_8
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v5, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v0, v5, :cond_3

    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_3

    .line 180
    iput-boolean v2, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    goto :goto_2

    :cond_9
    move v0, v1

    .line 187
    goto :goto_3
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 211
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public length()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 284
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-wide v0

    .line 287
    :cond_1
    iget-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-eqz v2, :cond_0

    .line 288
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public declared-synchronized list()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    if-nez v0, :cond_6

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->checkConnection()Z

    .line 224
    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    if-nez v1, :cond_3

    .line 229
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    check-cast v0, Ljava/net/JarURLConnection;

    .line 230
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->getUseCaches()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 231
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 239
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 240
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string/jumbo v4, "!/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 245
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x5c

    const/16 v5, 0x2f

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 250
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 252
    if-ltz v4, :cond_2

    .line 256
    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 260
    :cond_1
    if-nez v4, :cond_4

    .line 261
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 265
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 269
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 233
    :catch_0
    move-exception v0

    .line 235
    :try_start_3
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 263
    :cond_4
    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 272
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 275
    :cond_6
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method protected newConnection()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-super {p0}, Lorg/mortbay/resource/JarResource;->newConnection()V

    .line 89
    iput-object v4, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 90
    iput-object v4, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    .line 91
    iput-object v4, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 92
    iput-object v4, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string/jumbo v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 95
    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_urlString:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iput-object v4, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarConnection:Ljava/net/JarURLConnection;

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 100
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    .line 101
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 60
    invoke-super {p0}, Lorg/mortbay/resource/JarResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
