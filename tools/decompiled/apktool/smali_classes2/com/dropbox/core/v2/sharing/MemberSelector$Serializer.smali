.class public Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MemberSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/MemberSelector;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 355
    const/4 v1, 0x1

    .line 356
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 364
    :goto_0
    if-nez v0, :cond_1

    .line 365
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    const/4 v1, 0x0

    .line 361
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 362
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_1
    const-string/jumbo v2, "dropbox_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    const-string/jumbo v0, "dropbox_id"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 370
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v0

    .line 382
    :goto_1
    if-nez v1, :cond_2

    .line 383
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 384
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 386
    :cond_2
    return-object v0

    .line 373
    :cond_3
    const-string/jumbo v2, "email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    const-string/jumbo v0, "email"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 376
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;->email(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v0

    goto :goto_1

    .line 380
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector;

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
    .line 321
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$1;->$SwitchMap$com$dropbox$core$v2$sharing$MemberSelector$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/MemberSelector;->tag()Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 344
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 347
    :goto_0
    return-void

    .line 328
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 329
    const-string/jumbo v0, "dropbox_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 330
    const-string/jumbo v0, "dropbox_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberSelector;->access$000(Lcom/dropbox/core/v2/sharing/MemberSelector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 332
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 336
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 337
    const-string/jumbo v0, "email"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 338
    const-string/jumbo v0, "email"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberSelector;->access$100(Lcom/dropbox/core/v2/sharing/MemberSelector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 340
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 326
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
    .line 321
    check-cast p1, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/d/a/a/g;)V

    return-void
.end method
