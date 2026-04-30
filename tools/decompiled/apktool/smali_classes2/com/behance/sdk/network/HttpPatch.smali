.class public Lcom/behance/sdk/network/HttpPatch;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpPatch.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "PATCH"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 24
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/network/HttpPatch;->setURI(Ljava/net/URI;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "PATCH"

    return-object v0
.end method
