.class Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedContentAddLinkExpiryDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 284
    .line 285
    if-nez p2, :cond_b

    .line 286
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 287
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_0
    if-nez v0, :cond_a

    move-object v6, v7

    move-object v4, v7

    move-object v3, v7

    move-object v1, v7

    .line 295
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v2, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v2, :cond_5

    .line 296
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 298
    const-string/jumbo v2, "target_asset_index"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    move-object v0, v4

    :goto_2
    move-object v4, v0

    .line 316
    goto :goto_1

    .line 301
    :cond_0
    const-string/jumbo v2, "expiration_start_date"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    move-object v0, v4

    goto :goto_2

    .line 304
    :cond_1
    const-string/jumbo v2, "expiration_days"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_2

    .line 307
    :cond_2
    const-string/jumbo v2, "original_folder_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    move-object v0, v4

    goto :goto_2

    .line 310
    :cond_3
    const-string/jumbo v2, "shared_folder_type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    move-object v0, v4

    goto :goto_2

    .line 314
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v4

    goto :goto_2

    .line 317
    :cond_5
    if-nez v1, :cond_6

    .line 318
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"target_asset_index\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_6
    if-nez v3, :cond_7

    .line 321
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"expiration_start_date\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_7
    if-nez v4, :cond_8

    .line 324
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"expiration_days\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_8
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 331
    if-nez p2, :cond_9

    .line 332
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 334
    :cond_9
    return-object v0

    .line 329
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
    move-object v0, v7

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
    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 259
    if-nez p3, :cond_0

    .line 260
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 262
    :cond_0
    const-string/jumbo v0, "target_asset_index"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;->targetAssetIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 264
    const-string/jumbo v0, "expiration_start_date"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;->expirationStartDate:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 266
    const-string/jumbo v0, "expiration_days"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;->expirationDays:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 268
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;->originalFolderName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 269
    const-string/jumbo v0, "original_folder_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;->originalFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 272
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;->sharedFolderType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 273
    const-string/jumbo v0, "shared_folder_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;->sharedFolderType:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 276
    :cond_2
    if-nez p3, :cond_3

    .line 277
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 279
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
    .line 254
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
