.class Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "AudienceRestrictingSharedFolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 161
    .line 162
    if-nez p2, :cond_9

    .line 163
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 164
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    if-nez v0, :cond_8

    move-object v2, v1

    move-object v3, v1

    .line 170
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 173
    const-string/jumbo v4, "shared_folder_id"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 185
    goto :goto_1

    .line 176
    :cond_0
    const-string/jumbo v4, "name"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 179
    :cond_1
    const-string/jumbo v4, "audience"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/LinkAudience;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 183
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 186
    :cond_3
    if-nez v3, :cond_4

    .line 187
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"shared_folder_id\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_4
    if-nez v2, :cond_5

    .line 190
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"name\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_5
    if-nez v1, :cond_6

    .line 193
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"audience\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_6
    new-instance v0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkAudience;)V

    .line 200
    if-nez p2, :cond_7

    .line 201
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 203
    :cond_7
    return-object v0

    .line 198
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
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 144
    if-nez p3, :cond_0

    .line 145
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 147
    :cond_0
    const-string/jumbo v0, "shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 149
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 151
    const-string/jumbo v0, "audience"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkAudience;Lcom/d/a/a/g;)V

    .line 153
    if-nez p3, :cond_1

    .line 154
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 156
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
    .line 139
    check-cast p1, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Lcom/d/a/a/g;Z)V

    return-void
.end method
