.class public Lcom/dropbox/core/NetworkIOException;
.super Lcom/dropbox/core/DbxException;
.source "NetworkIOException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p1}, Lcom/dropbox/core/NetworkIOException;->computeMessage(Ljava/io/IOException;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/dropbox/core/DbxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method

.method private static computeMessage(Ljava/io/IOException;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 28
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 30
    instance-of v2, v0, Ljava/security/cert/CertPathValidatorException;

    if-eqz v2, :cond_0

    .line 31
    check-cast v0, Ljava/security/cert/CertPathValidatorException;

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[CERT PATH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getCause()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/dropbox/core/DbxException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/dropbox/core/NetworkIOException;->getCause()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
