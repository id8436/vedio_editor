.class Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "EmmRemoveExceptionDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    if-nez p2, :cond_0

    .line 94
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 95
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    if-nez v0, :cond_2

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;-><init>()V

    .line 103
    if-nez p2, :cond_1

    .line 104
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 106
    :cond_1
    return-object v0

    .line 101
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
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 81
    if-nez p3, :cond_0

    .line 82
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 84
    :cond_0
    if-nez p3, :cond_1

    .line 85
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 87
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
    .line 76
    check-cast p1, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
