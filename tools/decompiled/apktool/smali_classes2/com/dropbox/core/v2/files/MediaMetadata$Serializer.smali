.class Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MediaMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/MediaMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/MediaMetadata;
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

    .line 240
    .line 241
    if-nez p2, :cond_a

    .line 242
    invoke-static {p1}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 243
    invoke-static {p1}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 248
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    move-object v3, v1

    .line 252
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_4

    .line 253
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 255
    const-string/jumbo v4, "dimensions"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    sget-object v0, Lcom/dropbox/core/v2/files/Dimensions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Dimensions$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Dimensions;

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 267
    goto :goto_1

    .line 258
    :cond_1
    const-string/jumbo v4, "location"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    sget-object v0, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GpsCoordinates;

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 261
    :cond_2
    const-string/jumbo v4, "time_taken"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
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

    .line 265
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 268
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/files/MediaMetadata;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/files/MediaMetadata;-><init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;)V

    .line 282
    :goto_3
    if-nez p2, :cond_5

    .line 283
    invoke-static {p1}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 285
    :cond_5
    return-object v0

    .line 270
    :cond_6
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 271
    sget-object v0, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;

    invoke-virtual {v0, p1, v3}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/MediaMetadata;

    move-result-object v0

    goto :goto_3

    .line 273
    :cond_7
    const-string/jumbo v1, "photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 274
    sget-object v0, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;

    invoke-virtual {v0, p1, v3}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/PhotoMetadata;

    move-result-object v0

    goto :goto_3

    .line 276
    :cond_8
    const-string/jumbo v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 277
    sget-object v0, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;

    invoke-virtual {v0, p1, v3}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/VideoMetadata;

    move-result-object v0

    goto :goto_3

    .line 280
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
    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/MediaMetadata;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 209
    instance-of v0, p1, Lcom/dropbox/core/v2/files/PhotoMetadata;

    if-eqz v0, :cond_1

    .line 210
    sget-object v0, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/files/PhotoMetadata;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/PhotoMetadata;Lcom/d/a/a/g;Z)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    instance-of v0, p1, Lcom/dropbox/core/v2/files/VideoMetadata;

    if-eqz v0, :cond_2

    .line 214
    sget-object v0, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/files/VideoMetadata;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/VideoMetadata;Lcom/d/a/a/g;Z)V

    goto :goto_0

    .line 217
    :cond_2
    if-nez p3, :cond_3

    .line 218
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 220
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    if-eqz v0, :cond_4

    .line 221
    const-string/jumbo v0, "dimensions"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/dropbox/core/v2/files/Dimensions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Dimensions$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 224
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    if-eqz v0, :cond_5

    .line 225
    const-string/jumbo v0, "location"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 228
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->timeTaken:Ljava/util/Date;

    if-eqz v0, :cond_6

    .line 229
    const-string/jumbo v0, "time_taken"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->timeTaken:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 232
    :cond_6
    if-nez p3, :cond_0

    .line 233
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
    .line 204
    check-cast p1, Lcom/dropbox/core/v2/files/MediaMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/MediaMetadata;Lcom/d/a/a/g;Z)V

    return-void
.end method
