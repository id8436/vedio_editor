.class Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FileOpsResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/FileOpsResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/FileOpsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    if-nez p2, :cond_0

    .line 86
    invoke-static {p1}, Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 87
    invoke-static {p1}, Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    if-nez v0, :cond_2

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/files/FileOpsResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/FileOpsResult;-><init>()V

    .line 95
    if-nez p2, :cond_1

    .line 96
    invoke-static {p1}, Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 98
    :cond_1
    return-object v0

    .line 93
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
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/FileOpsResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/FileOpsResult;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 73
    if-nez p3, :cond_0

    .line 74
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 76
    :cond_0
    if-nez p3, :cond_1

    .line 77
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 79
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
    .line 68
    check-cast p1, Lcom/dropbox/core/v2/files/FileOpsResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/FileOpsResult$Serializer;->serialize(Lcom/dropbox/core/v2/files/FileOpsResult;Lcom/d/a/a/g;Z)V

    return-void
.end method
