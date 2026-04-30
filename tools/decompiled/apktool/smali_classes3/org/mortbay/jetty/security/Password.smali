.class public Lorg/mortbay/jetty/security/Password;
.super Lorg/mortbay/jetty/security/Credential;
.source "Password.java"


# static fields
.field public static final __OBFUSCATE:Ljava/lang/String; = "OBF:"


# instance fields
.field private _pw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/mortbay/jetty/security/Credential;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    .line 61
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    const-string/jumbo v1, "OBF:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/jetty/security/Password;->deobfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public static deobfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 155
    const-string/jumbo v0, "OBF:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 158
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    .line 160
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 162
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 163
    const/16 v5, 0x24

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 164
    div-int/lit16 v5, v3, 0x100

    .line 165
    rem-int/lit16 v6, v3, 0x100

    .line 166
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v5, v6

    add-int/lit16 v5, v5, -0xfe

    div-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 160
    add-int/lit8 v0, v0, 0x4

    move v2, v3

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/security/Password;
    .locals 5

    .prologue
    .line 186
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 191
    :cond_0
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string/jumbo v1, " [dft]"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 194
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 195
    const/16 v1, 0x200

    new-array v1, v1, [B

    .line 196
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 197
    if-lez v2, :cond_1

    .line 198
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object v0, p2

    .line 207
    :cond_3
    new-instance v1, Lorg/mortbay/jetty/security/Password;

    invoke-direct {v1, v0}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 191
    :cond_4
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 202
    const-string/jumbo v2, "EXCEPTION "

    invoke-static {v2, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 217
    array-length v2, p0

    if-eq v2, v0, :cond_0

    array-length v2, p0

    if-eq v2, v5, :cond_0

    .line 219
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "Usage - java org.mortbay.jetty.security.Password [<user>] <password>"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "If the password is ?, the user will be prompted for the password"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 223
    :cond_0
    array-length v2, p0

    if-ne v2, v0, :cond_1

    move v0, v1

    :cond_1
    aget-object v2, p0, v0

    .line 224
    const-string/jumbo v0, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/mortbay/jetty/security/Password;

    invoke-direct {v0, v2}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    .line 225
    :goto_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/jetty/security/Password;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v2}, Lorg/mortbay/jetty/security/Credential$MD5;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    array-length v2, p0

    if-ne v2, v5, :cond_2

    .line 229
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    aget-object v1, p0, v1

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/mortbay/jetty/security/Credential$Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    :cond_2
    return-void

    .line 224
    :cond_3
    new-instance v0, Lorg/mortbay/jetty/security/Password;

    invoke-direct {v0, v2}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static obfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 128
    monitor-enter v1

    .line 130
    :try_start_0
    const-string/jumbo v0, "OBF:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 133
    aget-byte v3, v2, v0

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    aget-byte v4, v2, v4

    .line 135
    add-int/lit8 v5, v3, 0x7f

    add-int/2addr v5, v4

    .line 136
    add-int/lit8 v3, v3, 0x7f

    sub-int/2addr v3, v4

    .line 137
    mul-int/lit16 v4, v5, 0x100

    add-int/2addr v3, v4

    .line 138
    const/16 v4, 0x24

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 145
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :pswitch_0
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    :pswitch_1
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    :pswitch_2
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 148
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 81
    if-ne p0, p1, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 84
    :cond_0
    instance-of v0, p1, Lorg/mortbay/jetty/security/Password;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 87
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 90
    :cond_2
    instance-of v0, p1, Lorg/mortbay/jetty/security/Credential;

    if-eqz v0, :cond_3

    .line 91
    check-cast p1, Lorg/mortbay/jetty/security/Credential;

    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/security/Credential;->check(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 93
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 99
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    if-eqz p1, :cond_0

    .line 105
    instance-of v2, p1, Lorg/mortbay/jetty/security/Password;

    if-eqz v2, :cond_3

    .line 107
    check-cast p1, Lorg/mortbay/jetty/security/Password;

    .line 108
    iget-object v2, p1, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    iget-object v3, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    iget-object v3, p1, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 111
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 112
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toStarString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    const-string/jumbo v0, "*****************************************************"

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    return-object v0
.end method
