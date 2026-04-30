.class Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RemoveCustomQuotaResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 339
    const/4 v1, 0x1

    .line 340
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 348
    :goto_0
    if-nez v0, :cond_1

    .line 349
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    const/4 v1, 0x0

    .line 345
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 346
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_1
    const-string/jumbo v2, "success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    const-string/jumbo v0, "success"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 354
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v0

    .line 355
    invoke-static {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->success(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    move-result-object v0

    .line 366
    :goto_1
    if-nez v1, :cond_2

    .line 367
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 368
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 370
    :cond_2
    return-object v0

    .line 357
    :cond_3
    const-string/jumbo v2, "invalid_user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    const-string/jumbo v0, "invalid_user"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 360
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v0

    .line 361
    invoke-static {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->invalidUser(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    move-result-object v0

    goto :goto_1

    .line 364
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->OTHER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

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
    .line 305
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 310
    sget-object v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$1;->$SwitchMap$com$dropbox$core$v2$team$RemoveCustomQuotaResult$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->tag()Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 328
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 331
    :goto_0
    return-void

    .line 312
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 313
    const-string/jumbo v0, "success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 314
    const-string/jumbo v0, "success"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->access$000(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/d/a/a/g;)V

    .line 316
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 320
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 321
    const-string/jumbo v0, "invalid_user"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 322
    const-string/jumbo v0, "invalid_user"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->access$100(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/d/a/a/g;)V

    .line 324
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 310
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
    .line 305
    check-cast p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->serialize(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;Lcom/d/a/a/g;)V

    return-void
.end method
