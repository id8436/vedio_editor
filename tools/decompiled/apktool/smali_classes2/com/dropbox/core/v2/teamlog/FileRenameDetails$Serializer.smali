.class Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FileRenameDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/FileRenameDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRenameDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 121
    .line 122
    if-nez p2, :cond_5

    .line 123
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 124
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 126
    :goto_0
    if-nez v1, :cond_4

    .line 128
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v1

    sget-object v2, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v1, v2, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 131
    const-string/jumbo v2, "relocate_action_details"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    sget-object v0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 135
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 138
    :cond_1
    if-nez v0, :cond_2

    .line 139
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"relocate_action_details\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/teamlog/FileRenameDetails;

    invoke-direct {v1, v0}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails;-><init>(Ljava/util/List;)V

    .line 146
    if-nez p2, :cond_3

    .line 147
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 149
    :cond_3
    return-object v1

    .line 144
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
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRenameDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/FileRenameDetails;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p3, :cond_0

    .line 109
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 111
    :cond_0
    const-string/jumbo v0, "relocate_action_details"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/FileRenameDetails;->relocateActionDetails:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 113
    if-nez p3, :cond_1

    .line 114
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 116
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
    .line 103
    check-cast p1, Lcom/dropbox/core/v2/teamlog/FileRenameDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRenameDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
