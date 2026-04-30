.class Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GetAccountBatchError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/users/GetAccountBatchError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/users/GetAccountBatchError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 266
    const/4 v1, 0x1

    .line 267
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 275
    :goto_0
    if-nez v0, :cond_1

    .line 276
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    const/4 v1, 0x0

    .line 272
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 273
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_1
    const-string/jumbo v2, "no_account"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    const-string/jumbo v0, "no_account"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 281
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    invoke-static {v0}, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccount(Ljava/lang/String;)Lcom/dropbox/core/v2/users/GetAccountBatchError;

    move-result-object v0

    .line 287
    :goto_1
    if-nez v1, :cond_2

    .line 288
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 289
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 291
    :cond_2
    return-object v0

    .line 285
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError;

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
    .line 240
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/users/GetAccountBatchError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/users/GetAccountBatchError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 245
    sget-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchError$1;->$SwitchMap$com$dropbox$core$v2$users$GetAccountBatchError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/users/GetAccountBatchError;->tag()Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 255
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 247
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 248
    const-string/jumbo v0, "no_account"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 249
    const-string/jumbo v0, "no_account"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountBatchError;->access$000(Lcom/dropbox/core/v2/users/GetAccountBatchError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 251
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 245
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
    .line 240
    check-cast p1, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->serialize(Lcom/dropbox/core/v2/users/GetAccountBatchError;Lcom/d/a/a/g;)V

    return-void
.end method
