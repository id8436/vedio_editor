.class public Lcom/adobe/premiereclip/util/SimpleDiskCache;
.super Ljava/lang/Object;
.source "SimpleDiskCache.java"


# static fields
.field private static final METADATA_IDX:I = 0x1

.field private static final VALUE_IDX:I

.field private static final usedDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private diskLruCache:Lcom/f/a/a;

.field private mAppVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->usedDirs:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p2, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->mAppVersion:I

    .line 62
    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p3, p4}, Lcom/f/a/a;->a(Ljava/io/File;IIJ)Lcom/f/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    .line 63
    return-void
.end method

.method private md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 232
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 233
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 234
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 235
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :catch_1
    move-exception v0

    .line 239
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static declared-synchronized open(Ljava/io/File;IJ)Lcom/adobe/premiereclip/util/SimpleDiskCache;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const-class v1, Lcom/adobe/premiereclip/util/SimpleDiskCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->usedDirs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cache dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was used before."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 81
    :cond_0
    :try_start_1
    sget-object v0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->usedDirs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Lcom/adobe/premiereclip/util/SimpleDiskCache;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/premiereclip/util/SimpleDiskCache;-><init>(Ljava/io/File;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private readMetadata(Lcom/f/a/g;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/f/a/g;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 213
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    const/4 v3, 0x1

    .line 214
    invoke-virtual {p1, v3}, Lcom/f/a/g;->a(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 217
    return-object v0

    .line 218
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 219
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 222
    throw v0

    .line 221
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 218
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private toInternalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeMetadata(Ljava/util/Map;Lcom/f/a/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lcom/f/a/d;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 201
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/4 v3, 0x1

    .line 202
    invoke-virtual {p2, v3}, Lcom/f/a/d;->a(I)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 207
    return-void

    .line 205
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 206
    throw v0

    .line 205
    :catchall_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    invoke-virtual {v0}, Lcom/f/a/a;->a()Ljava/io/File;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    invoke-virtual {v1}, Lcom/f/a/a;->b()J

    move-result-wide v2

    .line 93
    iget-object v1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    invoke-virtual {v1}, Lcom/f/a/a;->d()V

    .line 94
    iget v1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->mAppVersion:I

    const/4 v4, 0x2

    invoke-static {v0, v1, v4, v2, v3}, Lcom/f/a/a;->a(Ljava/io/File;IIJ)Lcom/f/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    .line 95
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    invoke-virtual {v0}, Lcom/f/a/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->toInternalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/f/a/a;->a(Ljava/lang/String;)Lcom/f/a/g;

    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/f/a/g;->close()V

    .line 139
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    const-string/jumbo v0, "FINALIZE"

    const-string/jumbo v1, "finalize called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    invoke-virtual {v0}, Lcom/f/a/a;->close()V

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Lcom/adobe/premiereclip/util/SimpleDiskCache$BitmapEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->toInternalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/f/a/a;->a(Ljava/lang/String;)Lcom/f/a/g;

    move-result-object v1

    .line 109
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/f/a/g;->a(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 113
    new-instance v0, Lcom/adobe/premiereclip/util/SimpleDiskCache$BitmapEntry;

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->readMetadata(Lcom/f/a/g;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/util/SimpleDiskCache$BitmapEntry;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v1}, Lcom/f/a/g;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/f/a/g;->close()V

    .line 116
    throw v0
.end method

.method public getCache()Lcom/f/a/a;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;)Lcom/adobe/premiereclip/util/SimpleDiskCache$InputStreamEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->toInternalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/f/a/a;->a(Ljava/lang/String;)Lcom/f/a/g;

    move-result-object v1

    .line 103
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/util/SimpleDiskCache$InputStreamEntry;

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->readMetadata(Lcom/f/a/g;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/util/SimpleDiskCache$InputStreamEntry;-><init>(Lcom/f/a/g;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Lcom/adobe/premiereclip/util/SimpleDiskCache$StringEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->toInternalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/f/a/a;->a(Ljava/lang/String;)Lcom/f/a/g;

    move-result-object v1

    .line 125
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/adobe/premiereclip/util/SimpleDiskCache$StringEntry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/f/a/g;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->readMetadata(Lcom/f/a/g;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/util/SimpleDiskCache$StringEntry;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v1}, Lcom/f/a/g;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/f/a/g;->close()V

    .line 131
    throw v0
.end method

.method public openStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->openStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;)",
            "Ljava/io/OutputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->toInternalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/f/a/a;->b(Ljava/lang/String;)Lcom/f/a/d;

    move-result-object v1

    .line 149
    if-nez v1, :cond_0

    .line 155
    :goto_0
    return-object v0

    .line 153
    :cond_0
    :try_start_0
    invoke-direct {p0, p2, v1}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->writeMetadata(Ljava/util/Map;Lcom/f/a/d;)V

    .line 154
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/f/a/d;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 155
    new-instance v0, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;-><init>(Lcom/adobe/premiereclip/util/SimpleDiskCache;Ljava/io/OutputStream;Lcom/f/a/d;Lcom/adobe/premiereclip/util/SimpleDiskCache$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v1}, Lcom/f/a/d;->b()V

    .line 158
    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V

    .line 164
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 170
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->openStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/OutputStream;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_0

    .line 172
    invoke-static {p2, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 177
    :cond_1
    return-void

    .line 175
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 176
    :cond_2
    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 181
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 187
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->openStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/OutputStream;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 195
    :cond_1
    return-void

    .line 192
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 193
    :cond_2
    throw v0
.end method

.method public removeBitmap(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache;->diskLruCache:Lcom/f/a/a;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->toInternalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/f/a/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
