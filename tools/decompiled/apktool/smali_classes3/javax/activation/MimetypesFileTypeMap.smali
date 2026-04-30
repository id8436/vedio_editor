.class public Ljavax/activation/MimetypesFileTypeMap;
.super Ljavax/activation/FileTypeMap;
.source "MimetypesFileTypeMap.java"


# static fields
.field private static final PROG:I

.field static class$javax$activation$MimetypesFileTypeMap:Ljava/lang/Class;

.field private static defDB:Lcom/l/a/a/g;

.field private static defaultType:Ljava/lang/String;


# instance fields
.field private DB:[Lcom/l/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/l/a/a/g;

    .line 80
    const-string/jumbo v0, "application/octet-stream"

    sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 85
    invoke-direct {p0}, Ljavax/activation/FileTypeMap;-><init>()V

    .line 86
    new-instance v1, Ljava/util/Vector;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 90
    const-string/jumbo v0, "MimetypesFileTypeMap: load HOME"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 92
    :try_start_0
    const-string/jumbo v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ".mime.types"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/l/a/a/g;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :cond_0
    :goto_0
    const-string/jumbo v0, "MimetypesFileTypeMap: load SYS"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 105
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "mime.types"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/l/a/a/g;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :cond_1
    :goto_1
    const-string/jumbo v0, "MimetypesFileTypeMap: load JAR"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "META-INF/mime.types"

    invoke-direct {p0, v1, v0}, Ljavax/activation/MimetypesFileTypeMap;->loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "MimetypesFileTypeMap: load DEF"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 117
    sget-object v0, Ljavax/activation/MimetypesFileTypeMap;->class$javax$activation$MimetypesFileTypeMap:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string/jumbo v0, "javax.activation.MimetypesFileTypeMap"

    invoke-static {v0}, Ljavax/activation/MimetypesFileTypeMap;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->class$javax$activation$MimetypesFileTypeMap:Ljava/lang/Class;

    :goto_2
    monitor-enter v0

    .line 119
    :try_start_2
    sget-object v2, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/l/a/a/g;

    if-nez v2, :cond_2

    .line 120
    const-string/jumbo v2, "/META-INF/mimetypes.default"

    invoke-direct {p0, v2}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/l/a/a/g;

    move-result-object v2

    sput-object v2, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/l/a/a/g;

    .line 121
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    sget-object v0, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/l/a/a/g;

    if-eqz v0, :cond_3

    .line 124
    sget-object v0, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/l/a/a/g;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 126
    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/l/a/a/g;

    iput-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/l/a/a/g;

    .line 127
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/l/a/a/g;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 128
    return-void

    .line 117
    :cond_4
    sget-object v0, Ljavax/activation/MimetypesFileTypeMap;->class$javax$activation$MimetypesFileTypeMap:Ljava/lang/Class;

    goto :goto_2

    .line 121
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 110
    :catch_0
    move-exception v0

    goto :goto_1

    .line 100
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 264
    invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    .line 266
    :try_start_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/l/a/a/g;

    const/4 v1, 0x0

    new-instance v2, Lcom/l/a/a/g;

    invoke-direct {v2, p1}, Lcom/l/a/a/g;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    .line 254
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/l/a/a/g;

    const/4 v1, 0x0

    new-instance v2, Lcom/l/a/a/g;

    invoke-direct {v2, p1}, Lcom/l/a/a/g;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 255
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 117
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

.method private loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 167
    .line 172
    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 173
    if-nez v1, :cond_0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 175
    :cond_0
    if-eqz v1, :cond_5

    .line 176
    invoke-static {v1, p2}, Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v1

    move-object v4, v1

    .line 179
    :goto_0
    if-eqz v4, :cond_c

    .line 180
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const-string/jumbo v1, "MimetypesFileTypeMap: getResources"

    invoke-static {v1}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    :cond_1
    move v3, v0

    .line 182
    :goto_1
    array-length v1, v4

    if-ge v3, v1, :cond_c

    .line 183
    aget-object v5, v4, v3

    .line 184
    const/4 v2, 0x0

    .line 185
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "MimetypesFileTypeMap: URL "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 188
    :cond_2
    :try_start_1
    invoke-static {v5}, Ljavax/activation/SecuritySupport;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_6

    .line 190
    new-instance v1, Lcom/l/a/a/g;

    invoke-direct {v1, v2}, Lcom/l/a/a/g;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    const/4 v1, 0x1

    .line 192
    :try_start_2
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "MimetypesFileTypeMap: successfully loaded mime types from URL: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    .line 212
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 213
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 182
    :cond_4
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 178
    :cond_5
    :try_start_4
    invoke-static {p2}, Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    .line 197
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "MimetypesFileTypeMap: not loading mime types from URL: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 202
    :catch_0
    move-exception v1

    .line 203
    :goto_4
    :try_start_6
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 204
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "MimetypesFileTypeMap: can\'t load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 212
    :cond_7
    if-eqz v2, :cond_4

    .line 213
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_3

    .line 214
    :catch_1
    move-exception v1

    goto :goto_3

    .line 206
    :catch_2
    move-exception v1

    .line 207
    :goto_5
    :try_start_8
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 208
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "MimetypesFileTypeMap: can\'t load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 212
    :cond_8
    if-eqz v2, :cond_4

    .line 213
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_3

    .line 214
    :catch_3
    move-exception v1

    goto :goto_3

    .line 211
    :catchall_0
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 212
    :goto_6
    if-eqz v2, :cond_9

    .line 213
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 215
    :cond_9
    :goto_7
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 218
    :catch_4
    move-exception v0

    .line 219
    :goto_8
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 220
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "MimetypesFileTypeMap: can\'t load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    :cond_a
    :goto_9
    if-nez v1, :cond_b

    .line 225
    const-string/jumbo v0, "MimetypesFileTypeMap: !anyLoaded"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/l/a/a/g;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_b

    .line 228
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 230
    :cond_b
    return-void

    :cond_c
    move v1, v0

    .line 221
    goto :goto_9

    .line 214
    :catch_5
    move-exception v1

    goto/16 :goto_3

    :catch_6
    move-exception v2

    goto :goto_7

    .line 218
    :catch_7
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_8

    .line 211
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 206
    :catch_8
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto/16 :goto_5

    .line 202
    :catch_9
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto/16 :goto_4

    :cond_d
    move v0, v1

    goto/16 :goto_2
.end method

.method private loadFile(Ljava/lang/String;)Lcom/l/a/a/g;
    .locals 2

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 239
    :try_start_0
    new-instance v0, Lcom/l/a/a/g;

    invoke-direct {v0, p1}, Lcom/l/a/a/g;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-object v0

    .line 240
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private loadResource(Ljava/lang/String;)Lcom/l/a/a/g;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 134
    .line 136
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljavax/activation/SecuritySupport;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 137
    if-eqz v2, :cond_2

    .line 138
    :try_start_1
    new-instance v0, Lcom/l/a/a/g;

    invoke-direct {v0, v2}, Lcom/l/a/a/g;-><init>(Ljava/io/InputStream;)V

    .line 139
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "MimetypesFileTypeMap: successfully loaded mime types file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    :cond_0
    if-eqz v2, :cond_1

    .line 157
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 160
    :cond_1
    :goto_0
    return-object v0

    .line 144
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "MimetypesFileTypeMap: not loading mime types file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    :cond_3
    if-eqz v2, :cond_4

    .line 157
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_4
    :goto_1
    move-object v0, v1

    .line 160
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 149
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 150
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "MimetypesFileTypeMap: can\'t load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 156
    :cond_5
    if-eqz v2, :cond_4

    .line 157
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 158
    :catch_1
    move-exception v0

    goto :goto_1

    .line 151
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 152
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 153
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "MimetypesFileTypeMap: can\'t load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 156
    :cond_6
    if-eqz v2, :cond_4

    .line 157
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 158
    :catch_3
    move-exception v0

    goto :goto_1

    .line 155
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 156
    :goto_4
    if-eqz v2, :cond_7

    .line 157
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 159
    :cond_7
    :goto_5
    throw v0

    .line 158
    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_5

    .line 155
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 151
    :catch_7
    move-exception v0

    goto :goto_3

    .line 148
    :catch_8
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addMimeTypes(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/l/a/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/l/a/a/g;

    const/4 v1, 0x0

    new-instance v2, Lcom/l/a/a/g;

    invoke-direct {v2}, Lcom/l/a/a/g;-><init>()V

    aput-object v2, v0, v1

    .line 282
    :cond_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/l/a/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/l/a/a/g;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContentType(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 309
    if-gez v0, :cond_0

    .line 310
    sget-object v0, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :goto_0
    monitor-exit p0

    return-object v0

    .line 312
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 314
    sget-object v0, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    goto :goto_0

    .line 316
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/l/a/a/g;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 317
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/l/a/a/g;

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 316
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 319
    :cond_3
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/l/a/a/g;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/l/a/a/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_2

    goto :goto_0

    .line 323
    :cond_4
    sget-object v0, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
