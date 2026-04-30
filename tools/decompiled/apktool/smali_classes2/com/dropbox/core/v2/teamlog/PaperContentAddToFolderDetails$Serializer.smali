.class Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PaperContentAddToFolderDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 147
    .line 148
    if-nez p2, :cond_9

    .line 149
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 150
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    if-nez v0, :cond_8

    move-object v2, v4

    move-object v1, v4

    .line 156
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_3

    .line 157
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 159
    const-string/jumbo v3, "event_uuid"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v2

    move-object v2, v0

    move-object v0, v4

    :goto_2
    move-object v4, v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    .line 171
    goto :goto_1

    .line 162
    :cond_0
    const-string/jumbo v3, "target_asset_index"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 165
    :cond_1
    const-string/jumbo v3, "parent_asset_index"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2

    .line 169
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v4

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2

    .line 172
    :cond_3
    if-nez v1, :cond_4

    .line 173
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"event_uuid\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_4
    if-nez v2, :cond_5

    .line 176
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"target_asset_index\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_5
    if-nez v4, :cond_6

    .line 179
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"parent_asset_index\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_6
    new-instance v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;-><init>(Ljava/lang/String;JJ)V

    .line 186
    if-nez p2, :cond_7

    .line 187
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 189
    :cond_7
    return-object v0

    .line 184
    :cond_8
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

    :cond_9
    move-object v0, v4

    goto/16 :goto_0
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
    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 130
    if-nez p3, :cond_0

    .line 131
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 133
    :cond_0
    const-string/jumbo v0, "event_uuid"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->eventUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 135
    const-string/jumbo v0, "target_asset_index"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->targetAssetIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 137
    const-string/jumbo v0, "parent_asset_index"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->parentAssetIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 139
    if-nez p3, :cond_1

    .line 140
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 142
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
    .line 125
    check-cast p1, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
