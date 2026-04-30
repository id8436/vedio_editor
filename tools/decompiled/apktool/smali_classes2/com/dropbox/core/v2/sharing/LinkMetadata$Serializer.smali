.class Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "LinkMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/LinkMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/LinkMetadata;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 181
    .line 182
    if-nez p2, :cond_c

    .line 183
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 184
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 189
    :cond_0
    :goto_0
    if-nez v0, :cond_8

    move-object v2, v1

    move-object v3, v1

    .line 193
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_4

    .line 194
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 196
    const-string/jumbo v4, "url"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
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

    .line 208
    goto :goto_1

    .line 199
    :cond_1
    const-string/jumbo v4, "visibility"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/Visibility$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/Visibility;

    move-result-object v0

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 202
    :cond_2
    const-string/jumbo v4, "expires"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 206
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 209
    :cond_4
    if-nez v3, :cond_5

    .line 210
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"url\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_5
    if-nez v2, :cond_6

    .line 213
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"visibility\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_6
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkMetadata;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/sharing/LinkMetadata;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/util/Date;)V

    .line 229
    :goto_3
    if-nez p2, :cond_7

    .line 230
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 232
    :cond_7
    return-object v0

    .line 217
    :cond_8
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 218
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;

    invoke-virtual {v0, p1, v3}, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/LinkMetadata;

    move-result-object v0

    goto :goto_3

    .line 220
    :cond_9
    const-string/jumbo v1, "path"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 221
    sget-object v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;

    invoke-virtual {v0, p1, v3}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    move-result-object v0

    goto :goto_3

    .line 223
    :cond_a
    const-string/jumbo v1, "collection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 224
    sget-object v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;

    invoke-virtual {v0, p1, v3}, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;

    move-result-object v0

    goto :goto_3

    .line 227
    :cond_b
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

    :cond_c
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
    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/LinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/LinkMetadata;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 154
    instance-of v0, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/PathLinkMetadata;Lcom/d/a/a/g;Z)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    instance-of v0, p1, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;

    if-eqz v0, :cond_2

    .line 159
    sget-object v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;Lcom/d/a/a/g;Z)V

    goto :goto_0

    .line 162
    :cond_2
    if-nez p3, :cond_3

    .line 163
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 165
    :cond_3
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 167
    const-string/jumbo v0, "visibility"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/Visibility$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/Visibility;Lcom/d/a/a/g;)V

    .line 169
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/LinkMetadata;->expires:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 170
    const-string/jumbo v0, "expires"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkMetadata;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 173
    :cond_4
    if-nez p3, :cond_0

    .line 174
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0
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
    .line 149
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkMetadata;Lcom/d/a/a/g;Z)V

    return-void
.end method
