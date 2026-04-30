.class public abstract Lorg/mortbay/resource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static __defaultUseCaches:Z

.field static class$org$mortbay$resource$Resource:Ljava/lang/Class;


# instance fields
.field _associate:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lorg/mortbay/resource/Resource;->__defaultUseCaches:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 209
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

.method private static deTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 543
    const-string/jumbo v0, "<"

    const-string/jumbo v1, "&lt;"

    invoke-static {p0, v0, v1}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ">"

    const-string/jumbo v2, "&gt;"

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static defangURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 494
    const/4 v0, 0x0

    .line 496
    if-nez v0, :cond_1

    move v1, v2

    .line 498
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 500
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 501
    sparse-switch v3, :sswitch_data_0

    .line 498
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    goto :goto_1

    .line 511
    :cond_0
    if-nez v0, :cond_1

    .line 538
    :goto_2
    return-object p0

    .line 521
    :sswitch_1
    const-string/jumbo v1, "%22"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    :goto_3
    add-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 517
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 518
    sparse-switch v1, :sswitch_data_1

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 524
    :sswitch_2
    const-string/jumbo v1, "%27"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 527
    :sswitch_3
    const-string/jumbo v1, "%3C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 530
    :sswitch_4
    const-string/jumbo v1, "%3E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 538
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 501
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch

    .line 518
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_2
        0x3c -> :sswitch_3
        0x3e -> :sswitch_4
    .end sparse-switch
.end method

.method public static getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lorg/mortbay/resource/Resource;->__defaultUseCaches:Z

    return v0
.end method

.method public static newClassPathResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/mortbay/resource/Resource;->newClassPathResource(Ljava/lang/String;ZZ)Lorg/mortbay/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newClassPathResource(Ljava/lang/String;ZZ)Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lorg/mortbay/resource/Resource;->class$org$mortbay$resource$Resource:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.mortbay.resource.Resource"

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/resource/Resource;->class$org$mortbay$resource$Resource:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 255
    if-nez v0, :cond_0

    .line 259
    :try_start_0
    sget-object v0, Lorg/mortbay/resource/Resource;->class$org$mortbay$resource$Resource:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "org.mortbay.resource.Resource"

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/resource/Resource;->class$org$mortbay$resource$Resource:Ljava/lang/Class;

    :goto_1
    invoke-static {v0, p0, p2}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 266
    :cond_0
    :goto_2
    if-nez v0, :cond_3

    .line 267
    const/4 v0, 0x0

    .line 268
    :goto_3
    return-object v0

    .line 253
    :cond_1
    sget-object v0, Lorg/mortbay/resource/Resource;->class$org$mortbay$resource$Resource:Ljava/lang/Class;

    goto :goto_0

    .line 259
    :cond_2
    :try_start_1
    sget-object v0, Lorg/mortbay/resource/Resource;->class$org$mortbay$resource$Resource:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 261
    :catch_0
    move-exception v0

    .line 263
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_2

    .line 268
    :cond_3
    invoke-static {v0, p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;Z)Lorg/mortbay/resource/Resource;

    move-result-object v0

    goto :goto_3
.end method

.method public static newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    sget-boolean v0, Lorg/mortbay/resource/Resource;->__defaultUseCaches:Z

    invoke-static {p0, v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;Z)Lorg/mortbay/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newResource(Ljava/lang/String;Z)Lorg/mortbay/resource/Resource;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2f

    .line 133
    .line 137
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_4

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_4

    .line 183
    :cond_1
    new-instance v0, Lorg/mortbay/resource/BadResource;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Trailing special characters stripped by URL in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/mortbay/resource/BadResource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 141
    const-string/jumbo v0, "ftp:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "jar:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    :try_start_1
    const-string/jumbo v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 151
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 152
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 155
    invoke-virtual {v4, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 156
    new-instance v0, Lorg/mortbay/resource/FileResource;

    invoke-direct {v0, v3, v4, v2}, Lorg/mortbay/resource/FileResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 159
    :catch_1
    move-exception v0

    .line 161
    const-string/jumbo v2, "EXCEPTION "

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    throw v1

    .line 167
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Bad Resource: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 168
    throw v1

    .line 186
    :cond_4
    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    goto :goto_0
.end method

.method public static newResource(Ljava/net/URL;)Lorg/mortbay/resource/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    sget-boolean v0, Lorg/mortbay/resource/Resource;->__defaultUseCaches:Z

    invoke-static {p0, v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;Z)Lorg/mortbay/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newResource(Ljava/net/URL;Z)Lorg/mortbay/resource/Resource;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 82
    if-nez p0, :cond_0

    .line 108
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :try_start_0
    new-instance v0, Lorg/mortbay/resource/FileResource;

    invoke-direct {v0, p0}, Lorg/mortbay/resource/FileResource;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 95
    const-string/jumbo v0, "EXCEPTION "

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    new-instance v0, Lorg/mortbay/resource/BadResource;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/mortbay/resource/BadResource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    const-string/jumbo v2, "jar:file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    new-instance v0, Lorg/mortbay/resource/JarFileResource;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/resource/JarFileResource;-><init>(Ljava/net/URL;Z)V

    goto :goto_0

    .line 103
    :cond_2
    const-string/jumbo v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    new-instance v0, Lorg/mortbay/resource/JarResource;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/resource/JarResource;-><init>(Ljava/net/URL;Z)V

    goto :goto_0

    .line 108
    :cond_3
    new-instance v1, Lorg/mortbay/resource/URLResource;

    invoke-direct {v1, p0, v0, p1}, Lorg/mortbay/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static newSystemResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 197
    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_5

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 204
    if-nez v2, :cond_0

    const-string/jumbo v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 207
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    .line 209
    sget-object v0, Lorg/mortbay/resource/Resource;->class$org$mortbay$resource$Resource:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "org.mortbay.resource.Resource"

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/resource/Resource;->class$org$mortbay$resource$Resource:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 213
    if-nez v2, :cond_4

    const-string/jumbo v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 214
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    .line 218
    :goto_2
    if-nez v0, :cond_1

    .line 220
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 221
    if-nez v0, :cond_1

    const-string/jumbo v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 225
    :cond_1
    if-nez v0, :cond_3

    move-object v0, v1

    .line 228
    :goto_3
    return-object v0

    .line 209
    :cond_2
    sget-object v0, Lorg/mortbay/resource/Resource;->class$org$mortbay$resource$Resource:Ljava/lang/Class;

    goto :goto_1

    .line 228
    :cond_3
    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_2

    :cond_5
    move-object v2, v1

    goto :goto_0
.end method

.method public static setDefaultUseCaches(Z)V
    .locals 0

    .prologue
    .line 54
    sput-boolean p0, Lorg/mortbay/resource/Resource;->__defaultUseCaches:Z

    .line 55
    return-void
.end method


# virtual methods
.method public abstract addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation
.end method

.method public abstract delete()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract exists()Z
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->release()V

    .line 277
    return-void
.end method

.method public getAlias()Ljava/net/URL;
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssociate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/mortbay/resource/Resource;->_associate:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getFile()Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getListHTML(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    .line 424
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-object v0

    .line 428
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v2

    .line 429
    if-eqz v2, :cond_0

    .line 431
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 433
    invoke-static {v1}, Lorg/mortbay/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->deTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x1000

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 437
    const-string/jumbo v4, "<HTML><HEAD><TITLE>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const-string/jumbo v4, "</TITLE></HEAD><BODY>\n<H1>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const-string/jumbo v0, "</H1>\n<TABLE BORDER=0>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    if-eqz p2, :cond_2

    .line 445
    const-string/jumbo v0, "<TR><TD><A HREF=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    const-string/jumbo v0, "../"

    invoke-static {v1, v0}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    const-string/jumbo v0, "\">Parent Directory</A></TD><TD></TD><TD></TD></TR>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    :cond_2
    invoke-static {v1}, Lorg/mortbay/resource/Resource;->defangURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-static {v5, v5}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v4

    .line 454
    const/4 v0, 0x0

    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_4

    .line 456
    aget-object v5, v2, v0

    invoke-virtual {p0, v5}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v5

    .line 458
    const-string/jumbo v6, "\n<TR><TD><A HREF=\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    aget-object v6, v2, v0

    invoke-static {v6}, Lorg/mortbay/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 461
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    invoke-virtual {v5}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 464
    const-string/jumbo v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    :cond_3
    const-string/jumbo v6, "\">"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    aget-object v6, v2, v0

    invoke-static {v6}, Lorg/mortbay/resource/Resource;->deTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    const-string/jumbo v6, "&nbsp;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    const-string/jumbo v6, "</TD><TD ALIGN=right>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    invoke-virtual {v5}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 472
    const-string/jumbo v6, " bytes&nbsp;</TD><TD>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v5}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    const-string/jumbo v5, "</TD></TR>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 476
    :cond_4
    const-string/jumbo v0, "</TABLE>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    const-string/jumbo v0, "</BODY></HTML>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public abstract getURL()Ljava/net/URL;
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract lastModified()J
.end method

.method public abstract length()J
.end method

.method public abstract list()[Ljava/lang/String;
.end method

.method public abstract release()V
.end method

.method public abstract renameTo(Lorg/mortbay/resource/Resource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public setAssociate(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lorg/mortbay/resource/Resource;->_associate:Ljava/lang/Object;

    .line 404
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 558
    :try_start_0
    invoke-virtual {v1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    .line 559
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-gez v0, :cond_0

    .line 560
    invoke-static {v1, p1}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 568
    return-void

    .line 562
    :cond_0
    :try_start_1
    invoke-static {v1, p1, p4, p5}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method
