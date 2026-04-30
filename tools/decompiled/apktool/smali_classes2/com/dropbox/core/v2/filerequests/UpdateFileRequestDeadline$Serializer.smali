.class Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UpdateFileRequestDeadline.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 282
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 284
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 292
    :goto_0
    if-nez v0, :cond_1

    .line 293
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    const/4 v1, 0x0

    .line 289
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 290
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    const-string/jumbo v3, "no_update"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 296
    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    .line 313
    :goto_1
    if-nez v1, :cond_2

    .line 314
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 315
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 317
    :cond_2
    return-object v0

    .line 298
    :cond_3
    const-string/jumbo v3, "update"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    const/4 v0, 0x0

    .line 300
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v3

    sget-object v4, Lcom/d/a/a/o;->c:Lcom/d/a/a/o;

    if-eq v3, v4, :cond_4

    .line 301
    sget-object v0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 303
    :cond_4
    if-nez v0, :cond_5

    .line 304
    invoke-static {}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->update()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    goto :goto_1

    .line 307
    :cond_5
    invoke-static {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->update(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    goto :goto_1

    .line 311
    :cond_6
    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    goto :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$1;->$SwitchMap$com$dropbox$core$v2$filerequests$UpdateFileRequestDeadline$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->tag()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 261
    :pswitch_0
    const-string/jumbo v0, "no_update"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 266
    const-string/jumbo v0, "update"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 267
    sget-object v0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->access$000(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V

    .line 268
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 254
    check-cast p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->serialize(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;Lcom/d/a/a/g;)V

    return-void
.end method
