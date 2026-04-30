.class public Lorg/mortbay/jetty/security/PKCS12Import;
.super Ljava/lang/Object;
.source "PKCS12Import.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dumpChain([Ljava/security/cert/Certificate;)V
    .locals 5

    .prologue
    .line 124
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 125
    aget-object v0, p0, v1

    .line 126
    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 127
    aget-object v0, p0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 128
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "subject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "issuer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 61
    array-length v0, p0

    if-ge v0, v4, :cond_0

    .line 62
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "usage: java PKCS12Import {pkcs12file} [newjksfile]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 67
    :cond_0
    new-instance v3, Ljava/io/File;

    aget-object v0, p0, v2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    array-length v0, p0

    if-le v0, v4, :cond_4

    .line 70
    new-instance v0, Ljava/io/File;

    aget-object v1, p0, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 75
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Unable to access input keystore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 81
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Output file is not writable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 87
    :cond_2
    const-string/jumbo v0, "pkcs12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 88
    const-string/jumbo v0, "jks"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "Enter input keystore passphrase: "

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lorg/mortbay/jetty/security/PKCS12Import;->readPassphrase()[C

    move-result-object v6

    .line 92
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "Enter output keystore passphrase: "

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lorg/mortbay/jetty/security/PKCS12Import;->readPassphrase()[C

    move-result-object v7

    .line 95
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v0, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_1
    invoke-virtual {v5, v0, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 101
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v8

    .line 103
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Alias "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v10, ": "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v4, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Adding key for alias "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v4, v0, v6}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    .line 111
    invoke-virtual {v4, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v9

    .line 113
    invoke-virtual {v5, v0, v2, v7, v9}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    :cond_3
    move v2, v3

    .line 115
    goto :goto_2

    .line 72
    :cond_4
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "newstore.jks"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_0

    .line 97
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 117
    :cond_6
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 118
    invoke-virtual {v5, v0, v7}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 119
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 120
    return-void
.end method

.method static readPassphrase()[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 136
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 138
    const/16 v0, 0x100

    new-array v4, v0, [C

    move v0, v1

    .line 142
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_0

    .line 143
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v2

    int-to-char v5, v2

    .line 144
    packed-switch v5, :pswitch_data_0

    .line 150
    :pswitch_0
    add-int/lit8 v2, v0, 0x1

    aput-char v5, v4, v0

    move v0, v2

    .line 152
    goto :goto_0

    .line 154
    :cond_0
    :pswitch_1
    new-array v2, v0, [C

    .line 155
    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    return-object v2

    .line 144
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
