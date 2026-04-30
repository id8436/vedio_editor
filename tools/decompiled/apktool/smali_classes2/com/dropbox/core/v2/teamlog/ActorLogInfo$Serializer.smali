.class Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ActorLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/ActorLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 471
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 522
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 524
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 532
    :goto_0
    if-nez v0, :cond_1

    .line 533
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    const/4 v1, 0x0

    .line 529
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 530
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_1
    const-string/jumbo v3, "user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 537
    const-string/jumbo v0, "user"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 538
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    .line 539
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->user(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    .line 564
    :goto_1
    if-nez v1, :cond_2

    .line 565
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 566
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 568
    :cond_2
    return-object v0

    .line 541
    :cond_3
    const-string/jumbo v3, "admin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 543
    const-string/jumbo v0, "admin"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 544
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    .line 545
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->admin(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    goto :goto_1

    .line 547
    :cond_4
    const-string/jumbo v3, "app"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 549
    const-string/jumbo v0, "app"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 550
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    .line 551
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->app(Lcom/dropbox/core/v2/teamlog/AppLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    goto :goto_1

    .line 553
    :cond_5
    const-string/jumbo v3, "reseller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 555
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    move-result-object v0

    .line 556
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->reseller(Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    goto :goto_1

    .line 558
    :cond_6
    const-string/jumbo v2, "dropbox"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 559
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    goto :goto_1

    .line 562
    :cond_7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

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
    .line 470
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 475
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$1;->$SwitchMap$com$dropbox$core$v2$teamlog$ActorLogInfo$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->tag()Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 512
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 515
    :goto_0
    return-void

    .line 477
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 478
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 479
    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 480
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->access$000(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 481
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 485
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 486
    const-string/jumbo v0, "admin"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 487
    const-string/jumbo v0, "admin"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 488
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->access$100(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 489
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 493
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 494
    const-string/jumbo v0, "app"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 495
    const-string/jumbo v0, "app"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 496
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->access$200(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 497
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 501
    :pswitch_3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 502
    const-string/jumbo v0, "reseller"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 503
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->access$300(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;Lcom/d/a/a/g;Z)V

    .line 504
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 508
    :pswitch_4
    const-string/jumbo v0, "dropbox"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 470
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;Lcom/d/a/a/g;)V

    return-void
.end method
