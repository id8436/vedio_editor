.class public Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifierHC4;
.super Lorg/apache/http/conn/ssl/AbstractVerifierHC4;
.source "BrowserCompatHostnameVerifierHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "BROWSER_COMPATIBLE"

    return-object v0
.end method

.method validCountryWildcard(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifierHC4;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 55
    return-void
.end method
