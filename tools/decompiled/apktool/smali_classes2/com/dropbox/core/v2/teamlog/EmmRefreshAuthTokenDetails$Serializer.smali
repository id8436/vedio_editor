.class Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "EmmRefreshAuthTokenDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    if-nez p2, :cond_0

    .line 93
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 94
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    if-nez v0, :cond_2

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;-><init>()V

    .line 102
    if-nez p2, :cond_1

    .line 103
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 105
    :cond_1
    return-object v0

    .line 100
    :cond_2
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 80
    if-nez p3, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 83
    :cond_0
    if-nez p3, :cond_1

    .line 84
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 86
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 75
    check-cast p1, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
