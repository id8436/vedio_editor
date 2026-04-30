.class Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UploadApiRateLimitValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 277
    const/4 v1, 0x1

    .line 278
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 286
    :goto_0
    if-nez v0, :cond_1

    .line 287
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    const/4 v1, 0x0

    .line 283
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 284
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_1
    const-string/jumbo v2, "unlimited"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 290
    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    .line 301
    :goto_1
    if-nez v1, :cond_2

    .line 302
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 303
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 305
    :cond_2
    return-object v0

    .line 292
    :cond_3
    const-string/jumbo v2, "limit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    const-string/jumbo v0, "limit"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 295
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 296
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->limit(J)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object v0

    goto :goto_1

    .line 299
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

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
    .line 247
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 252
    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$1;->$SwitchMap$com$dropbox$core$v2$team$UploadApiRateLimitValue$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->tag()Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 266
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 254
    :pswitch_0
    const-string/jumbo v0, "unlimited"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 259
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 260
    const-string/jumbo v0, "limit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->access$000(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 262
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 252
    nop

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
    .line 247
    check-cast p1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->serialize(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;Lcom/d/a/a/g;)V

    return-void
.end method
