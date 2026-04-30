.class public Lorg/mortbay/resource/FileResource;
.super Lorg/mortbay/resource/URLResource;
.source "FileResource.java"


# static fields
.field private static __checkAliases:Z


# instance fields
.field private transient _alias:Ljava/net/URL;

.field private transient _aliasChecked:Z

.field private _file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "org.mortbay.util.FileResource.checkAliases"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mortbay/resource/FileResource;->__checkAliases:Z

    .line 53
    sget-boolean v0, Lorg/mortbay/resource/FileResource;->__checkAliases:Z

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "Checking Resource aliases"

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string/jumbo v0, "Resource alias checking is disabled"

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lorg/mortbay/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 61
    iput-object v0, p0, Lorg/mortbay/resource/FileResource;->_alias:Ljava/net/URL;

    .line 62
    iput-boolean v4, p0, Lorg/mortbay/resource/FileResource;->_aliasChecked:Z

    .line 91
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_urlString:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/resource/FileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/resource/FileResource;->_urlString:Ljava/lang/String;

    .line 128
    :cond_0
    :goto_1
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 100
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    .line 109
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 112
    invoke-virtual {p0}, Lorg/mortbay/resource/FileResource;->checkConnection()Z

    .line 113
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/io/File;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    goto :goto_0

    .line 105
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 114
    :cond_2
    invoke-virtual {v0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 124
    :cond_3
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_urlString:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_urlString:Ljava/lang/String;

    iget-object v1, p0, Lorg/mortbay/resource/FileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/resource/FileResource;->_urlString:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lorg/mortbay/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/resource/FileResource;->_alias:Ljava/net/URL;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/resource/FileResource;->_aliasChecked:Z

    .line 134
    iput-object p3, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    .line 135
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_urlString:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/resource/FileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/resource/FileResource;->_urlString:Ljava/lang/String;

    .line 137
    :cond_0
    return-void
.end method

.method public static getCheckAliases()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lorg/mortbay/resource/FileResource;->__checkAliases:Z

    return v0
.end method

.method public static setCheckAliases(Z)V
    .locals 0

    .prologue
    .line 70
    sput-boolean p0, Lorg/mortbay/resource/FileResource;->__checkAliases:Z

    .line 71
    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 143
    .line 146
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {p0}, Lorg/mortbay/resource/FileResource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    invoke-super {p0, v2}, Lorg/mortbay/resource/URLResource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    check-cast v0, Lorg/mortbay/resource/FileResource;

    .line 151
    iget-object v1, v0, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    move-object v3, v1

    move-object v1, v0

    .line 167
    :goto_0
    invoke-static {v2}, Lorg/mortbay/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v1}, Lorg/mortbay/resource/URLResource;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    .line 169
    iget-object v5, v1, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 171
    if-eq v4, v0, :cond_1

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v0, :cond_0

    const-string/jumbo v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/resource/URLResource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    instance-of v0, v1, Lorg/mortbay/resource/BadResource;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 175
    check-cast v0, Lorg/mortbay/resource/FileResource;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/mortbay/resource/FileResource;->_alias:Ljava/net/URL;

    move-object v0, v1

    .line 176
    check-cast v0, Lorg/mortbay/resource/FileResource;

    iput-boolean v6, v0, Lorg/mortbay/resource/FileResource;->_aliasChecked:Z

    .line 179
    :cond_1
    return-object v1

    .line 155
    :cond_2
    if-nez v2, :cond_3

    .line 156
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0

    .line 160
    :cond_3
    const-string/jumbo v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_1
    iget-object v1, p0, Lorg/mortbay/resource/FileResource;->_urlString:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    check-cast v0, Lorg/mortbay/resource/URLResource;

    move-object v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method public delete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 337
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 347
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/mortbay/resource/FileResource;

    if-eqz v2, :cond_0

    .line 353
    check-cast p1, Lorg/mortbay/resource/FileResource;

    .line 354
    iget-object v2, p1, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    iget-object v3, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    iget-object v3, p1, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getAlias()Ljava/net/URL;
    .locals 4

    .prologue
    .line 186
    sget-boolean v0, Lorg/mortbay/resource/FileResource;->__checkAliases:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/mortbay/resource/FileResource;->_aliasChecked:Z

    if-nez v0, :cond_2

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/resource/FileResource;->_alias:Ljava/net/URL;

    .line 196
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mortbay/resource/FileResource;->_aliasChecked:Z

    .line 198
    iget-object v2, p0, Lorg/mortbay/resource/FileResource;->_alias:Ljava/net/URL;

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "ALIAS abs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "ALIAS can="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_2
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_alias:Ljava/net/URL;

    :goto_0
    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 206
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    invoke-virtual {p0}, Lorg/mortbay/resource/FileResource;->getURL()Ljava/net/URL;

    move-result-object v0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/mortbay/resource/URLResource;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 317
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 318
    if-nez v0, :cond_1

    .line 319
    const/4 v0, 0x0

    .line 326
    :cond_0
    return-object v0

    .line 320
    :cond_1
    array-length v1, v0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 322
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, v0, v2

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 324
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public renameTo(Lorg/mortbay/resource/Resource;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 305
    instance-of v0, p1, Lorg/mortbay/resource/FileResource;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    check-cast p1, Lorg/mortbay/resource/FileResource;

    iget-object v1, p1, Lorg/mortbay/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
