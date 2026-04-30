.class public Lorg/mortbay/jetty/webapp/WebAppClassLoader;
.super Ljava/net/URLClassLoader;
.source "WebAppClassLoader.java"


# static fields
.field static class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;


# instance fields
.field private _context:Lorg/mortbay/jetty/webapp/WebAppContext;

.field private _extensions:Ljava/util/HashSet;

.field private _name:Ljava/lang/String;

.field private _parent:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/net/URL;

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v1, p1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 78
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    .line 79
    iput-object p2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    .line 80
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-nez v0, :cond_5

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "no parent classloader!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppClassLoader"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppClassLoader"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    .line 83
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/HashSet;

    .line 84
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/HashSet;

    const-string/jumbo v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/HashSet;

    const-string/jumbo v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppClassLoader"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ".extensions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_7

    .line 90
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ",;"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 87
    :cond_6
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->class$org$mortbay$jetty$webapp$WebAppClassLoader:Ljava/lang/Class;

    goto :goto_3

    .line 95
    :cond_7
    invoke-virtual {p2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getExtraClasspath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 96
    invoke-virtual {p2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getExtraClasspath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addClassPath(Ljava/lang/String;)V

    .line 97
    :cond_8
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/mortbay/jetty/webapp/WebAppContext;)V

    .line 66
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private isFileSupported(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 203
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 204
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addClassPath(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 133
    if-nez p1, :cond_1

    .line 195
    :cond_0
    return-void

    .line 136
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v0, ",;"

    invoke-direct {v3, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 140
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Path resource="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 144
    :cond_2
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 148
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addURL(Ljava/net/URL;)V

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v0, :cond_7

    .line 155
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 156
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v0

    .line 157
    if-nez v0, :cond_4

    .line 159
    const-string/jumbo v0, "jetty.cl.lib"

    invoke-static {v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 163
    :cond_4
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "lib"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 166
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 167
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    .line 169
    :cond_5
    const-string/jumbo v0, "Jetty-"

    const-string/jumbo v6, ".jar"

    invoke-static {v0, v6, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 172
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 173
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Extract "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v5, " to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 177
    :cond_6
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    invoke-static {v4, v1}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    invoke-static {v1}, Lorg/mortbay/util/IO;->close(Ljava/io/OutputStream;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addURL(Ljava/net/URL;)V

    goto/16 :goto_0

    .line 182
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lorg/mortbay/util/IO;->close(Ljava/io/OutputStream;)V

    throw v0

    .line 190
    :cond_7
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 191
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addURL(Ljava/net/URL;)V

    goto/16 :goto_0

    .line 182
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public addJars(Lorg/mortbay/resource/Resource;)V
    .locals 5

    .prologue
    .line 217
    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v2

    .line 220
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz v2, :cond_1

    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 223
    :try_start_0
    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-direct {p0, v3}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->isFileSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string/jumbo v3, ","

    const-string/jumbo v4, "%2C"

    invoke-static {v0, v3, v4}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string/jumbo v3, ";"

    const-string/jumbo v4, "%3B"

    invoke-static {v0, v3, v4}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addClassPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 235
    const-string/jumbo v3, "EXCEPTION "

    invoke-static {v3, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 239
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    .line 244
    return-void
.end method

.method public getContext()Lorg/mortbay/jetty/handler/ContextHandler;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getPermissions()Ljava/security/PermissionCollection;

    move-result-object v0

    .line 252
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v0

    .line 253
    :cond_0
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 259
    const/4 v1, 0x0

    .line 260
    const/4 v0, 0x0

    .line 261
    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->isParentLoaderPriority()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->isSystemPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_5

    .line 266
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    move v1, v2

    .line 269
    :goto_0
    if-nez v0, :cond_2

    .line 271
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 273
    if-nez v0, :cond_2

    const-string/jumbo v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "HACK leading / off "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 277
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 281
    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 283
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_3

    .line 284
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 287
    :cond_3
    if-eqz v0, :cond_4

    .line 288
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "getResource("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 291
    :cond_4
    return-object v0

    :cond_5
    move-object v0, v1

    move v1, v2

    goto :goto_0

    :cond_6
    move v4, v0

    move-object v0, v1

    move v1, v4

    goto :goto_0
.end method

.method public isServerPath(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 297
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 298
    :goto_0
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServerClasses()[Ljava/lang/String;

    move-result-object v6

    .line 302
    if-eqz v6, :cond_4

    move v1, v2

    .line 304
    :goto_1
    array-length v3, v6

    if-ge v1, v3, :cond_4

    .line 307
    aget-object v3, v6, v1

    .line 308
    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 310
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move v4, v2

    .line 314
    :goto_2
    const-string/jumbo v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    :cond_1
    :goto_3
    return v4

    .line 319
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 304
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v4, v2

    .line 323
    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_2
.end method

.method public isSystemPath(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 329
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_0
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSystemClasses()[Ljava/lang/String;

    move-result-object v6

    .line 333
    if-eqz v6, :cond_4

    move v1, v2

    .line 335
    :goto_1
    array-length v3, v6

    if-ge v1, v3, :cond_4

    .line 338
    aget-object v3, v6, v1

    .line 340
    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 342
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move v4, v2

    .line 346
    :goto_2
    const-string/jumbo v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 348
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 356
    :cond_1
    :goto_3
    return v4

    .line 351
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 335
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v4, v2

    .line 356
    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_2
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 370
    const/4 v3, 0x0

    .line 371
    const/4 v0, 0x0

    .line 373
    if-nez v1, :cond_7

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->isParentLoaderPriority()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->isSystemPath(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    .line 375
    :cond_0
    const/4 v2, 0x1

    .line 378
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 379
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "loaded "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v0, v3

    .line 388
    :goto_0
    if-nez v1, :cond_6

    .line 392
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 400
    :goto_1
    if-nez v0, :cond_2

    :try_start_3
    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->isServerPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 401
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 403
    :cond_2
    if-nez v0, :cond_3

    .line 404
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 394
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 396
    goto :goto_1

    .line 406
    :cond_3
    if-eqz p2, :cond_4

    .line 407
    :try_start_4
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->resolveClass(Ljava/lang/Class;)V

    .line 409
    :cond_4
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 410
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 412
    :cond_5
    monitor-exit p0

    return-object v0

    .line 382
    :catch_1
    move-exception v0

    goto :goto_0

    :cond_6
    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    :cond_7
    move v2, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_name:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "ContextLoader@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ") / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "ContextLoader@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
