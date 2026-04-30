.class public Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "InviteeInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/InviteeInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 270
    const/4 v1, 0x1

    .line 271
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 279
    :goto_0
    if-nez v0, :cond_1

    .line 280
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    const/4 v1, 0x0

    .line 276
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 277
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_1
    const-string/jumbo v2, "email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    const-string/jumbo v0, "email"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 285
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/InviteeInfo;->email(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/InviteeInfo;

    move-result-object v0

    .line 291
    :goto_1
    if-nez v1, :cond_2

    .line 292
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 293
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 295
    :cond_2
    return-object v0

    .line 289
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->OTHER:Lcom/dropbox/core/v2/sharing/InviteeInfo;

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
    .line 244
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/InviteeInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/InviteeInfo;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 249
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$1;->$SwitchMap$com$dropbox$core$v2$sharing$InviteeInfo$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo;->tag()Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 259
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 251
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 252
    const-string/jumbo v0, "email"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 253
    const-string/jumbo v0, "email"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo;->access$000(Lcom/dropbox/core/v2/sharing/InviteeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 255
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 244
    check-cast p1, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/InviteeInfo;Lcom/d/a/a/g;)V

    return-void
.end method
