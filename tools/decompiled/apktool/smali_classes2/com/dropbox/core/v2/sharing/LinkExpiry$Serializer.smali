.class Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "LinkExpiry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/LinkExpiry;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/LinkExpiry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 281
    const/4 v1, 0x1

    .line 282
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 290
    :goto_0
    if-nez v0, :cond_1

    .line 291
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    const/4 v1, 0x0

    .line 287
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 288
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_1
    const-string/jumbo v2, "remove_expiry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 294
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->REMOVE_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    .line 305
    :goto_1
    if-nez v1, :cond_2

    .line 306
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 307
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 309
    :cond_2
    return-object v0

    .line 296
    :cond_3
    const-string/jumbo v2, "set_expiry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    const-string/jumbo v0, "set_expiry"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 299
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 300
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/LinkExpiry;->setExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/LinkExpiry;

    move-result-object v0

    goto :goto_1

    .line 303
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->OTHER:Lcom/dropbox/core/v2/sharing/LinkExpiry;

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
    .line 251
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/LinkExpiry;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/LinkExpiry;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 256
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkExpiry$1;->$SwitchMap$com$dropbox$core$v2$sharing$LinkExpiry$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/LinkExpiry;->tag()Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 270
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 258
    :pswitch_0
    const-string/jumbo v0, "remove_expiry"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 263
    const-string/jumbo v0, "set_expiry"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 264
    const-string/jumbo v0, "set_expiry"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkExpiry;->access$000(Lcom/dropbox/core/v2/sharing/LinkExpiry;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 266
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 256
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
    .line 251
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkExpiry;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkExpiry;Lcom/d/a/a/g;)V

    return-void
.end method
