.class Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PathLinkMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/PathLinkMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 178
    .line 179
    if-nez p2, :cond_b

    .line 180
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 181
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 186
    :cond_0
    :goto_0
    if-nez v0, :cond_a

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 191
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v5, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v5, :cond_5

    .line 192
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 194
    const-string/jumbo v5, "url"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
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

    .line 209
    goto :goto_1

    .line 197
    :cond_1
    const-string/jumbo v5, "visibility"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/Visibility$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/Visibility;

    move-result-object v0

    move-object v3, v4

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    .line 200
    :cond_2
    const-string/jumbo v5, "path"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 201
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v3

    move-object v3, v4

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 203
    :cond_3
    const-string/jumbo v5, "expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 207
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 210
    :cond_5
    if-nez v4, :cond_6

    .line 211
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"url\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_6
    if-nez v3, :cond_7

    .line 214
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"visibility\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_7
    if-nez v2, :cond_8

    .line 217
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"path\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_8
    new-instance v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/lang/String;Ljava/util/Date;)V

    .line 224
    if-nez p2, :cond_9

    .line 225
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 227
    :cond_9
    return-object v0

    .line 222
    :cond_a
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

    :cond_b
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
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/PathLinkMetadata;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 156
    if-nez p3, :cond_0

    .line 157
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 159
    :cond_0
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 160
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 162
    const-string/jumbo v0, "visibility"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/Visibility$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/Visibility;Lcom/d/a/a/g;)V

    .line 164
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 166
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 167
    const-string/jumbo v0, "expires"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 170
    :cond_1
    if-nez p3, :cond_2

    .line 171
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 173
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
    .line 151
    check-cast p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/PathLinkMetadata;Lcom/d/a/a/g;Z)V

    return-void
.end method
