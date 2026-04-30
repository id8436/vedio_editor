.class final Lcom/dropbox/core/ApiErrorResponse$Serializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "ApiErrorResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Lcom/dropbox/core/ApiErrorResponse",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private errSerializer:Lcom/dropbox/core/stone/StoneSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/stone/StoneSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/dropbox/core/ApiErrorResponse$Serializer;->errSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    .line 41
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/ApiErrorResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            ")",
            "Lcom/dropbox/core/ApiErrorResponse",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50
    .line 53
    invoke-static {p1}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    move-object v1, v0

    .line 54
    :goto_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v2, v3, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 57
    const-string/jumbo v3, "error"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    iget-object v1, p0, Lcom/dropbox/core/ApiErrorResponse$Serializer;->errSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 59
    :cond_0
    const-string/jumbo v3, "user_message"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    sget-object v0, Lcom/dropbox/core/LocalizedText;->STONE_SERIALIZER:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/LocalizedText;

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_0

    .line 65
    :cond_2
    if-nez v1, :cond_3

    .line 66
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"error\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_3
    new-instance v2, Lcom/dropbox/core/ApiErrorResponse;

    invoke-direct {v2, v1, v0}, Lcom/dropbox/core/ApiErrorResponse;-><init>(Ljava/lang/Object;Lcom/dropbox/core/LocalizedText;)V

    .line 70
    invoke-static {p1}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 72
    return-object v2
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/ApiErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/ApiErrorResponse;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/ApiErrorResponse",
            "<TT;>;",
            "Lcom/d/a/a/g;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Error wrapper serialization not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 36
    check-cast p1, Lcom/dropbox/core/ApiErrorResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->serialize(Lcom/dropbox/core/ApiErrorResponse;Lcom/d/a/a/g;)V

    return-void
.end method
