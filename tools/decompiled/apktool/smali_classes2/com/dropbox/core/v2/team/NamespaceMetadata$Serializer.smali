.class Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "NamespaceMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/NamespaceMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/NamespaceMetadata;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 197
    .line 198
    if-nez p2, :cond_a

    .line 199
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 200
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_0
    if-nez v0, :cond_9

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 207
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v5, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v5, :cond_4

    .line 208
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 210
    const-string/jumbo v5, "name"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v6

    :goto_2
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 225
    goto :goto_1

    .line 213
    :cond_0
    const-string/jumbo v5, "namespace_id"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 214
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v4

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    .line 216
    :cond_1
    const-string/jumbo v5, "namespace_type"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    sget-object v0, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/NamespaceType$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/NamespaceType;

    move-result-object v0

    move-object v2, v3

    move-object v3, v4

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 219
    :cond_2
    const-string/jumbo v5, "team_member_id"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 223
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 226
    :cond_4
    if-nez v4, :cond_5

    .line 227
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"name\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_5
    if-nez v3, :cond_6

    .line 230
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"namespace_id\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_6
    if-nez v2, :cond_7

    .line 233
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"namespace_type\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_7
    new-instance v0, Lcom/dropbox/core/v2/team/NamespaceMetadata;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/dropbox/core/v2/team/NamespaceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/NamespaceType;Ljava/lang/String;)V

    .line 240
    if-nez p2, :cond_8

    .line 241
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 243
    :cond_8
    return-object v0

    .line 238
    :cond_9
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

    :cond_a
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
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/NamespaceMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/NamespaceMetadata;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 176
    if-nez p3, :cond_0

    .line 177
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 179
    :cond_0
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 181
    const-string/jumbo v0, "namespace_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 183
    const-string/jumbo v0, "namespace_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/NamespaceType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceType:Lcom/dropbox/core/v2/team/NamespaceType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;->serialize(Lcom/dropbox/core/v2/team/NamespaceType;Lcom/d/a/a/g;)V

    .line 185
    iget-object v0, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->teamMemberId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 186
    const-string/jumbo v0, "team_member_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 189
    :cond_1
    if-nez p3, :cond_2

    .line 190
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 192
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
    .line 171
    check-cast p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/team/NamespaceMetadata;Lcom/d/a/a/g;Z)V

    return-void
.end method
