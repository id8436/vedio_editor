.class public Lcom/behance/sdk/network/BehanceConnectionResponse;
.super Ljava/lang/Object;
.source "BehanceConnectionResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseCode:I

.field private responseObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceConnectionResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/behance/sdk/network/BehanceConnectionResponse;->responseCode:I

    return v0
.end method

.method public getResponseObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceConnectionResponse;->responseObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceConnectionResponse;->headers:Ljava/util/Map;

    .line 35
    return-void
.end method

.method public setResponseCode(I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/behance/sdk/network/BehanceConnectionResponse;->responseCode:I

    .line 23
    return-void
.end method

.method public setResponseObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceConnectionResponse;->responseObject:Ljava/lang/Object;

    .line 39
    return-void
.end method
