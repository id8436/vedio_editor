.class Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "DeleteBatchResultData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/DeleteBatchResultData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/DeleteBatchResultData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 111
    .line 112
    if-nez p2, :cond_5

    .line 113
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 114
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 116
    :goto_0
    if-nez v1, :cond_4

    .line 118
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v1

    sget-object v2, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v1, v2, :cond_1

    .line 119
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 121
    const-string/jumbo v2, "metadata"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget-object v0, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;

    goto :goto_1

    .line 125
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 128
    :cond_1
    if-nez v0, :cond_2

    .line 129
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"metadata\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    invoke-direct {v1, v0}, Lcom/dropbox/core/v2/files/DeleteBatchResultData;-><init>(Lcom/dropbox/core/v2/files/Metadata;)V

    .line 136
    if-nez p2, :cond_3

    .line 137
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 139
    :cond_3
    return-object v1

    .line 134
    :cond_4
    new-instance v0, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v1, v0

    goto :goto_0
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
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/DeleteBatchResultData;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 98
    if-nez p3, :cond_0

    .line 99
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 101
    :cond_0
    const-string/jumbo v0, "metadata"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/DeleteBatchResultData;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 103
    if-nez p3, :cond_1

    .line 104
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 106
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
    .line 93
    check-cast p1, Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/DeleteBatchResultData$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteBatchResultData;Lcom/d/a/a/g;Z)V

    return-void
.end method
