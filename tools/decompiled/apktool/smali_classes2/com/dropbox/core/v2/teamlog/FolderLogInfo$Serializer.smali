.class Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FolderLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/FolderLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 216
    .line 217
    if-nez p2, :cond_7

    .line 218
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 219
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    move-object v3, v1

    .line 225
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 226
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 228
    const-string/jumbo v4, "path"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 240
    goto :goto_1

    .line 231
    :cond_0
    const-string/jumbo v4, "display_name"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 234
    :cond_1
    const-string/jumbo v4, "file_id"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 238
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 241
    :cond_3
    if-nez v3, :cond_4

    .line 242
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"path\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-nez p2, :cond_5

    .line 250
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 252
    :cond_5
    return-object v0

    .line 247
    :cond_6
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

    :cond_7
    move-object v0, v1

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
    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/FolderLogInfo;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 195
    if-nez p3, :cond_0

    .line 196
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 198
    :cond_0
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 200
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 201
    const-string/jumbo v0, "display_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 204
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 205
    const-string/jumbo v0, "file_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 208
    :cond_2
    if-nez p3, :cond_3

    .line 209
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 211
    :cond_3
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
    .line 190
    check-cast p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FolderLogInfo;Lcom/d/a/a/g;Z)V

    return-void
.end method
