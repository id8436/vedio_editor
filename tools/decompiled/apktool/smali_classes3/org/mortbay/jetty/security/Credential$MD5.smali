.class public Lorg/mortbay/jetty/security/Credential$MD5;
.super Lorg/mortbay/jetty/security/Credential;
.source "Credential.java"


# static fields
.field public static final __TYPE:Ljava/lang/String; = "MD5:"

.field private static __md:Ljava/security/MessageDigest;

.field public static final __md5Lock:Ljava/lang/Object;


# instance fields
.field private _digest:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/mortbay/jetty/security/Credential;-><init>()V

    .line 114
    const-string/jumbo v0, "MD5:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MD5:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 117
    :cond_0
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/mortbay/util/TypeUtil;->parseBytes(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    .line 118
    return-void
.end method

.method public static digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 186
    :try_start_0
    sget-object v2, Lorg/mortbay/jetty/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :try_start_1
    sget-object v1, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 190
    :try_start_2
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :cond_0
    :try_start_3
    sget-object v1, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 195
    sget-object v1, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    sget-object v3, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 196
    sget-object v1, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 197
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :try_start_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "MD5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lorg/mortbay/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v1

    :try_start_5
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    monitor-exit v2

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 201
    :catch_1
    move-exception v1

    .line 203
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 131
    .line 133
    :try_start_0
    instance-of v2, p1, Lorg/mortbay/jetty/security/Password;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 136
    :cond_0
    sget-object v2, Lorg/mortbay/jetty/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    sget-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    if-nez v3, :cond_1

    .line 139
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    sput-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    .line 140
    :cond_1
    sget-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 141
    sget-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 142
    sget-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 143
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    if-eqz v3, :cond_2

    :try_start_2
    array-length v2, v3

    iget-object v4, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    array-length v4, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v2, v4, :cond_3

    .line 176
    :cond_2
    :goto_0
    return v0

    .line 143
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 173
    :catch_0
    move-exception v1

    .line 175
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move v2, v0

    .line 146
    :goto_1
    :try_start_5
    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 147
    aget-byte v4, v3, v2

    iget-object v5, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    aget-byte v5, v5, v2

    if-ne v4, v5, :cond_2

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 149
    goto :goto_0

    .line 151
    :cond_5
    instance-of v2, p1, Lorg/mortbay/jetty/security/Credential$MD5;

    if-eqz v2, :cond_7

    .line 153
    check-cast p1, Lorg/mortbay/jetty/security/Credential$MD5;

    .line 154
    iget-object v2, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    array-length v2, v2

    iget-object v3, p1, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    array-length v3, v3

    if-ne v2, v3, :cond_2

    move v2, v0

    .line 156
    :goto_2
    iget-object v3, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 157
    iget-object v3, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    aget-byte v3, v3, v2

    iget-object v4, p1, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    aget-byte v4, v4, v2

    if-ne v3, v4, :cond_2

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    .line 159
    goto :goto_0

    .line 161
    :cond_7
    instance-of v1, p1, Lorg/mortbay/jetty/security/Credential;

    if-eqz v1, :cond_8

    .line 165
    check-cast p1, Lorg/mortbay/jetty/security/Credential;

    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/security/Credential;->check(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 169
    :cond_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Can\'t check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " against MD5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public getDigest()[B
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    return-object v0
.end method
