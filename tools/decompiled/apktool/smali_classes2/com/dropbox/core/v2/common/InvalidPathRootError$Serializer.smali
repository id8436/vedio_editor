.class public Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "InvalidPathRootError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/common/InvalidPathRootError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/common/InvalidPathRootError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 124
    .line 125
    if-nez p2, :cond_4

    .line 126
    invoke-static {p1}, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 127
    invoke-static {p1}, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_0
    if-nez v1, :cond_3

    .line 131
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v1

    sget-object v2, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v1, v2, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 134
    const-string/jumbo v2, "path_root"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 138
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 141
    :cond_1
    new-instance v1, Lcom/dropbox/core/v2/common/InvalidPathRootError;

    invoke-direct {v1, v0}, Lcom/dropbox/core/v2/common/InvalidPathRootError;-><init>(Ljava/lang/String;)V

    .line 146
    if-nez p2, :cond_2

    .line 147
    invoke-static {p1}, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 149
    :cond_2
    return-object v1

    .line 144
    :cond_3
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

    :cond_4
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
    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/common/InvalidPathRootError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/common/InvalidPathRootError;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 109
    if-nez p3, :cond_0

    .line 110
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 112
    :cond_0
    iget-object v0, p1, Lcom/dropbox/core/v2/common/InvalidPathRootError;->pathRoot:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 113
    const-string/jumbo v0, "path_root"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/common/InvalidPathRootError;->pathRoot:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 116
    :cond_1
    if-nez p3, :cond_2

    .line 117
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 119
    :cond_2
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
    .line 104
    check-cast p1, Lcom/dropbox/core/v2/common/InvalidPathRootError;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;->serialize(Lcom/dropbox/core/v2/common/InvalidPathRootError;Lcom/d/a/a/g;Z)V

    return-void
.end method
