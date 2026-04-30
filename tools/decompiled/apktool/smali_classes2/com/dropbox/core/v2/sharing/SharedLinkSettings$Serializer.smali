.class Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedLinkSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedLinkSettings;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 237
    .line 238
    if-nez p2, :cond_6

    .line 239
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 240
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_0
    if-nez v0, :cond_5

    move-object v2, v1

    move-object v3, v1

    .line 246
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 247
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 249
    const-string/jumbo v4, "requested_visibility"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    sget-object v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RequestedVisibility$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 261
    goto :goto_1

    .line 252
    :cond_0
    const-string/jumbo v4, "link_password"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
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

    .line 255
    :cond_1
    const-string/jumbo v4, "expires"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
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

    .line 259
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 262
    :cond_3
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;-><init>(Lcom/dropbox/core/v2/sharing/RequestedVisibility;Ljava/lang/String;Ljava/util/Date;)V

    .line 267
    if-nez p2, :cond_4

    .line 268
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 270
    :cond_4
    return-object v0

    .line 265
    :cond_5
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

    :cond_6
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
    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedLinkSettings;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 214
    if-nez p3, :cond_0

    .line 215
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 217
    :cond_0
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    if-eqz v0, :cond_1

    .line 218
    const-string/jumbo v0, "requested_visibility"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RequestedVisibility$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 221
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->linkPassword:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 222
    const-string/jumbo v0, "link_password"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->linkPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 225
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->expires:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 226
    const-string/jumbo v0, "expires"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 229
    :cond_3
    if-nez p3, :cond_4

    .line 230
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 232
    :cond_4
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
    .line 209
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedLinkSettings;Lcom/d/a/a/g;Z)V

    return-void
.end method
