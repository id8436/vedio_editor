.class Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "OriginLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/OriginLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/OriginLogInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 238
    .line 239
    if-nez p2, :cond_7

    .line 240
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 241
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    move-object v3, v1

    .line 247
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 248
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 250
    const-string/jumbo v4, "access_method"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 262
    goto :goto_1

    .line 253
    :cond_0
    const-string/jumbo v4, "geo_location"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 256
    :cond_1
    const-string/jumbo v4, "host"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    sget-object v0, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 260
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 263
    :cond_3
    if-nez v3, :cond_4

    .line 264
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"access_method\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;Lcom/dropbox/core/v2/teamlog/HostLogInfo;)V

    .line 271
    if-nez p2, :cond_5

    .line 272
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 274
    :cond_5
    return-object v0

    .line 269
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
    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/OriginLogInfo;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 217
    if-nez p3, :cond_0

    .line 218
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 220
    :cond_0
    const-string/jumbo v0, "access_method"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;Lcom/d/a/a/g;)V

    .line 222
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    if-eqz v0, :cond_1

    .line 223
    const-string/jumbo v0, "geo_location"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 226
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    if-eqz v0, :cond_2

    .line 227
    const-string/jumbo v0, "host"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 230
    :cond_2
    if-nez p3, :cond_3

    .line 231
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 233
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
    .line 212
    check-cast p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/OriginLogInfo;Lcom/d/a/a/g;Z)V

    return-void
.end method
